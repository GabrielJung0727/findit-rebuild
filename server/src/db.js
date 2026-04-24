const mysql = require('mysql2/promise');

const {
  DB_HOST = '127.0.0.1',
  DB_PORT = '3306',
  DB_USER = 'findit',
  DB_PASSWORD = 'findit_dev',
  DB_NAME = 'findit_game',
  DB_SOCKET,
} = process.env;

const poolConfig = DB_SOCKET
  ? { socketPath: DB_SOCKET, user: DB_USER, password: DB_PASSWORD, database: DB_NAME }
  : { host: DB_HOST, port: Number(DB_PORT), user: DB_USER, password: DB_PASSWORD, database: DB_NAME };

const pool = mysql.createPool({
  ...poolConfig,
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
  charset: 'utf8mb4',
  dateStrings: true,
  connectTimeout: 3000,  // DB 없는 상태에서 헬스체크/요청 hang 방지
});

// DB 불가 상태에서도 프로세스가 죽지 않도록 pool error 이벤트 수신
pool.on('error', (err) => {
  console.warn('[db] pool error:', err.code || err.message);
});

async function query(sql, params = []) {
  const [rows] = await pool.execute(sql, params);
  return rows;
}

async function tx(fn) {
  const conn = await pool.getConnection();
  try {
    await conn.beginTransaction();
    const result = await fn(conn);
    await conn.commit();
    return result;
  } catch (e) {
    await conn.rollback();
    throw e;
  } finally {
    conn.release();
  }
}

async function ping() {
  const [rows] = await pool.query('SELECT 1 AS ok');
  return rows[0].ok === 1;
}

module.exports = { pool, query, tx, ping };
