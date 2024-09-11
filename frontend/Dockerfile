FROM node:22-alpine3.20

ARG UID=1000

WORKDIR /app

USER "$UID"

CMD npm install ci && npm run dev

