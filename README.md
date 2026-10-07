# 소리숲 음악학원

개인 레슨 · 회차권 · 결석과 보강을 연결하는 음악학원

An original operational sample inspired by publicly described academy workflows, not affiliated with On-hi.

## Run locally

Requires Node 22.19+. Run npm ci, set APP_PASSWORD to a strong app password, then npm run dev. Open http://127.0.0.1:3100 and use admin / your APP_PASSWORD. Local SQLite receives fictional sample records.

## Deploy

Fork this repository and submit it to the academy catalog. It provisions Turso Tokyo and deploys Vercel Seoul. Schemas come from immutable prisma/migrations SQL. Remote apps start empty unless demo data was explicitly imported. Set TURSO_DATABASE_URL and TURSO_AUTH_TOKEN for manual hosting; provision schema before starting. Never put tokens in client code.

## Included workflows

- 원생: 원생과 보호자의 연락처를 한곳에서 관리해요.
- 회차권: 출석 완료된 레슨만 사용 횟수에 반영해요.
- 레슨 일정: 출석은 회차를 사용하고, 결석은 보강으로 이어져요.
- 상담 노트: 다음 상담에 이어갈 중요한 이야기를 남겨요.
- 발표회 · 공지: 학부모에게 전달할 내용을 정리해요. 실제 알림은 발송되지 않아요.

The public example is read-only. Downloaded apps support persisted registration and status actions. Notices are stored locally in the app, not delivered as SMS/push. Tuition is manual bookkeeping, not a payment gateway. Portfolio images are optional HTTPS references, not file uploads. This sample uses a single shared owner password; separate parent accounts and role permissions are not included.

## Checks

npm run lint
npm run typecheck
npm test
npm run build
