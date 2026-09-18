FROM node:20-alpine

WORKDIR /app

# 의존성만 먼저 복사 (캐시 활용)
COPY package*.json ./
RUN npm ci --omit=dev

# 소스 복사
COPY src/ ./src/
COPY public/ ./public/

# 8080 포트 오픈 (Cloud Run 기본)
EXPOSE 8080

ENV NODE_ENV=production \
    HTTP_PORT=8080

CMD ["node", "src/index.js"]
