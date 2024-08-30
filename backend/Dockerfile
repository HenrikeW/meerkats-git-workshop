FROM golang:alpine3.20 AS builder

WORKDIR /app

# Build project here.
# Produces "backend-server".
RUN printf '%s\n' '#!/bin/sh -x' 'sleep infinity' >backend-server
RUN chmod +x backend-server

FROM alpine:3.20 AS develop

WORKDIR /app

RUN apk add --no-cache \
	sqlite

COPY entrypoint.d ./entrypoint.d/

COPY --from=builder /app/backend-server ./

ENTRYPOINT ["./entrypoint.d/main"]

CMD ["./backend-server"]
