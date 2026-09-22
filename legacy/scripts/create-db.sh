#!/usr/bin/env bash
# ──────────────────────────────────────────────────────────────────────────
# Cloud SQL 인스턴스 + DB 생성
# ──────────────────────────────────────────────────────────────────────────
set -euo pipefail

PROJECT_ID="${PROJECT_ID:-findit-494900}"
REGION="${REGION:-us-central1}"
INSTANCE="${INSTANCE:-findit-db}"
DB_NAME="${DB_NAME:-findit_game}"
DB_USER="${DB_USER:-findit}"
DB_TIER="${DB_TIER:-db-f1-micro}"   # ~$9/월, 90일 무료 크레딧으로 커버
DB_PASSWORD="${DB_PASSWORD:-$(openssl rand -base64 24)}"

gcloud config set project "$PROJECT_ID"

echo "▶ Cloud SQL 인스턴스 생성: $INSTANCE ($DB_TIER)"
gcloud sql instances create "$INSTANCE" \
  --database-version=MYSQL_8_0 \
  --tier="$DB_TIER" \
  --region="$REGION" \
  --storage-size=10GB \
  --storage-type=SSD \
  --backup-start-time=03:00 \
  --no-deletion-protection \
  || echo "  (already exists)"

echo "▶ DB 생성: $DB_NAME"
gcloud sql databases create "$DB_NAME" --instance="$INSTANCE" \
  || echo "  (already exists)"

echo "▶ 사용자 생성: $DB_USER"
gcloud sql users create "$DB_USER" --instance="$INSTANCE" \
  --password="$DB_PASSWORD" \
  || echo "  (already exists, password 변경은 별도)"

echo "▶ Secret Manager — db-password 등록"
echo -n "$DB_PASSWORD" | gcloud secrets versions add db-password --data-file=-

echo "▶ 스키마 적용 (cloud-sql-proxy 필요)"
echo "   1) cloud-sql-proxy 다운로드 + 실행:"
echo "      cloud-sql-proxy $PROJECT_ID:$REGION:$INSTANCE &"
echo "   2) mysql 로 접속해 schema.sql 실행:"
echo "      mysql -h 127.0.0.1 -u $DB_USER -p$DB_PASSWORD $DB_NAME < server/sql/schema.sql"
echo "      mysql -h 127.0.0.1 -u $DB_USER -p$DB_PASSWORD $DB_NAME < server/sql/seed.sql"
echo "      mysql -h 127.0.0.1 -u $DB_USER -p$DB_PASSWORD $DB_NAME < server/sql/seed_skills.sql"

cat <<EOF

✅ DB 생성 완료.
   인스턴스: $PROJECT_ID:$REGION:$INSTANCE
   DB:       $DB_NAME
   유저:     $DB_USER
   비밀번호: (Secret Manager 'db-password' 에 저장됨)

Cloud Run 에서 사용할 DB_SOCKET 경로:
   /cloudsql/$PROJECT_ID:$REGION:$INSTANCE
EOF
