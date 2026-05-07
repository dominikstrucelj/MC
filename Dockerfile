FROM node:18-alpine

WORKDIR /app

COPY package.json ./package.json
COPY server.js ./server.js

# Default / discoverable environment variables (visible via `docker inspect`)
# NOTE: Do NOT put real secrets here; use test values and set real values at deploy time.
ENV \
  PORT=8080 \
  NODE_ENV=production \
  LOG_LEVEL=debug \
  APP_ENV=staging \
  DATABASE_URL=postgres://test_user:test_pass@db:5432/test_db \
  REDIS_URL=redis://redis:6379/0 \
  JWT_SECRET=change-me-in-bunny \
  FEATURE_FLAG_EXAMPLE=true \
  API_BASE_URL=https://example.invalid/api

EXPOSE 8080

CMD ["npm", "start"]