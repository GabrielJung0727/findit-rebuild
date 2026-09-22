import { Pool, type PoolClient, type QueryResult } from 'pg';

/**
 * node-postgres 는 파라미터 없는 다중 문장 simple query에 QueryResult 하나가
 * 아니라 배열을 돌려준다. 단일·다중 결과를 모두 T[]로 정규화하고, DDL처럼
 * 행을 내지 않는 질의는 빈 배열로 돌려준다.
 */
function toRows<T>(result: QueryResult | QueryResult[]): T[] {
  if (Array.isArray(result)) return result.flatMap((item) => (item.rows ?? []) as T[]);
  return (result.rows ?? []) as T[];
}

export interface Db {
  /** 항상 배열을 돌려준다. 행을 내지 않는 질의는 []이고 다중 문장은 행을 합친다. */
  query<T = Record<string, unknown>>(sql: string, params?: unknown[]): Promise<T[]>;
  /** 콜백 안의 모든 질의가 한 트랜잭션으로 묶인다. 예외가 나면 롤백한다. */
  tx<T>(fn: (db: Db) => Promise<T>): Promise<T>;
  close(): Promise<void>;
}

function wrapClient(client: PoolClient): Db {
  return {
    async query<T>(sql: string, params: unknown[] = []): Promise<T[]> {
      const result = await client.query(sql, params);
      return toRows<T>(result as unknown as QueryResult | QueryResult[]);
    },
    // 중첩 트랜잭션은 쓰지 않는다. 필요해지면 SAVEPOINT로 명시적으로 도입한다.
    async tx<T>(fn: (db: Db) => Promise<T>): Promise<T> {
      return fn(wrapClient(client));
    },
    async close(): Promise<void> {
      // 트랜잭션 클라이언트는 tx()가 반환한다. 여기서 닫지 않는다.
    },
  };
}

export function createDb(databaseUrl: string): Db {
  const pool = new Pool({ connectionString: databaseUrl });

  return {
    async query<T>(sql: string, params: unknown[] = []): Promise<T[]> {
      const result = await pool.query(sql, params);
      return toRows<T>(result as unknown as QueryResult | QueryResult[]);
    },

    async tx<T>(fn: (db: Db) => Promise<T>): Promise<T> {
      const client = await pool.connect();
      try {
        await client.query('BEGIN');
        const output = await fn(wrapClient(client));
        await client.query('COMMIT');
        return output;
      } catch (error) {
        await client.query('ROLLBACK');
        throw error;
      } finally {
        client.release();
      }
    },

    async close(): Promise<void> {
      await pool.end();
    },
  };
}
