import express from 'express';
import { existsSync } from 'node:fs';
import { resolve, sep } from 'node:path';
import { buildManifest } from '../content/manifest.js';
import type { Puzzle } from '../content/types.js';
import { parseContentUrl, verifyContentUrl } from '../content/urls.js';
import type { Principal } from '../identity/types.js';
import type { Clock } from '../platform/clock.js';

export interface AppDeps {
  clock: Clock;
  log: { error(message: string, fields?: Record<string, unknown>): void };
  config: { contentUrlSecret: string; contentUrlTtlMs: number; contentDir: string };
  puzzles: readonly Puzzle[];
  contentVersion: string;
  resolvePuzzleId(matchId: string): Promise<string | null>;
  identity: {
    register(email: string, password: string, nickname: string, characterId: number):
      Promise<{ accountId: string }>;
    login(email: string, password: string): Promise<{ token: string } | null>;
    guest(): Promise<{ token: string }>;
    logout(token: string): Promise<void>;
    verify(token: string): Promise<Principal | null>;
  };
}

function safeContentPath(contentDir: string, ...parts: string[]): string | null {
  const full = resolve(contentDir, ...parts);
  const root = resolve(contentDir);
  if (full !== root && !full.startsWith(root + sep)) return null;
  return full;
}

function asyncRoute(
  log: AppDeps['log'],
  handler: (req: express.Request, res: express.Response) => Promise<void>,
): express.RequestHandler {
  return (req, res) => {
    handler(req, res).catch((error: unknown) => {
      log.error('라우트 처리 실패', {
        path: req.path,
        message: error instanceof Error ? error.message : String(error),
      });
      if (!res.headersSent) res.status(500).json({ error: 'internal_error' });
    });
  };
}

export function createApp(deps: AppDeps): express.Express {
  const app = express();
  app.use(express.json({ limit: '16kb' }));

  app.get('/health', (_req, res) => {
    res.json({ status: 'ok' });
  });

  app.post('/auth/register', asyncRoute(deps.log, async (req, res) => {
    const { email, password, nickname, characterId } = req.body ?? {};
    if (typeof email !== 'string' || typeof password !== 'string' || typeof nickname !== 'string') {
      res.status(400).json({ error: 'invalid_request' });
      return;
    }
    try {
      const account = await deps.identity.register(email, password, nickname, Number(characterId) || 0);
      res.status(201).json({ accountId: account.accountId });
    } catch {
      res.status(409).json({ error: 'register_failed' });
    }
  }));

  app.post('/auth/login', asyncRoute(deps.log, async (req, res) => {
    const { email, password } = req.body ?? {};
    if (typeof email !== 'string' || typeof password !== 'string') {
      res.status(400).json({ error: 'invalid_request' });
      return;
    }
    const session = await deps.identity.login(email, password);
    if (session === null) {
      res.status(401).json({ error: 'invalid_credentials' });
      return;
    }
    res.json({ token: session.token });
  }));

  app.post('/auth/guest', asyncRoute(deps.log, async (_req, res) => {
    res.json({ token: (await deps.identity.guest()).token });
  }));

  app.post('/auth/logout', asyncRoute(deps.log, async (req, res) => {
    const token = req.header('authorization')?.replace(/^Bearer /, '') ?? '';
    await deps.identity.logout(token);
    res.status(204).end();
  }));

  app.get('/content/manifest', (_req, res) => {
    res.json(buildManifest(deps.puzzles, deps.contentVersion));
  });

  app.get('/content/:matchId/:kind/:index', asyncRoute(deps.log, async (req, res) => {
    const signed = parseContentUrl(req.originalUrl);
    if (signed === null) {
      res.status(403).json({ error: 'forbidden' });
      return;
    }
    if (!verifyContentUrl({ secret: deps.config.contentUrlSecret, clock: deps.clock }, signed)) {
      res.status(403).json({ error: 'forbidden' });
      return;
    }
    const puzzleId = await deps.resolvePuzzleId(signed.matchId);
    if (puzzleId === null) {
      res.status(404).json({ error: 'not_found' });
      return;
    }

    const file = signed.kind === 'base'
      ? 'base.webp'
      : `patch_${String(signed.index + 1).padStart(2, '0')}.webp`;
    const full = safeContentPath(deps.config.contentDir, 'images', puzzleId, file);
    if (full === null || !existsSync(full)) {
      res.status(404).json({ error: 'not_found' });
      return;
    }
    res.type('image/webp').sendFile(full);
  }));

  return app;
}
