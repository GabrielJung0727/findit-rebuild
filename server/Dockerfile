# 빌드 컨텍스트는 저장소 루트다 (npm workspaces 때문).
FROM node:24-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json ./
COPY packages/protocol/package.json packages/protocol/
COPY tools/package.json tools/
COPY server/package.json server/
RUN npm ci

FROM node:24-alpine AS runtime
WORKDIR /app
ENV NODE_ENV=production
COPY --from=deps /app/node_modules ./node_modules
COPY package.json tsconfig.base.json tsconfig.json ./
COPY packages ./packages
COPY server ./server
COPY content ./content
EXPOSE 8080
CMD ["npx", "tsx", "server/src/main.ts"]
