# FindIt Server — Cloud Run 배포용 컨테이너
#
# Build: docker build -t findit-server .
# Run:   docker run -p 8080:8080 -e DB_HOST=... findit-server
#
# Cloud Run 은 PORT 환경변수로 리스닝 포트 주입 (기본 8080)
# TCP 소켓(22131) 은 Cloud Run 미지원 → GCE/GKE 별도 배포 필요
#       (Cloud Run 으로는 HTTP REST API 만 서빙)

FROM node:20-alpine AS deps
WORKDIR /app
COPY package.json package-lock.json* ./
# Production 의존성만 설치 — optional (firebase-admin/googleapis) 포함
RUN npm ci --omit=dev --no-audit --no-fund

FROM node:20-alpine
WORKDIR /app
ENV NODE_ENV=production
# 비root 유저로 실행 — Cloud Run 보안 권장
RUN addgroup -S app && adduser -S app -G app
COPY --from=deps /app/node_modules ./node_modules
COPY --chown=app:app . .
USER app

# Cloud Run 환경변수 PORT (기본 8080)
ENV HTTP_PORT=8080
ENV TCP_PORT=22131
EXPOSE 8080

# Healthcheck — Cloud Run startup probe 가 사용
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost:8080/healthz || exit 1

CMD ["node", "src/index.js"]
