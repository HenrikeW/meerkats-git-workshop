# ----------------------------------------------------------------------
# ---- Initial build
FROM golang:alpine3.20 AS builder

WORKDIR /app

# Build project here.
# Produces "backend-server".
RUN cat >backend-server <<-'END_DUMMY_SERVER'
	#!/bin/sh -x
	sleep infinity
	END_DUMMY_SERVER
RUN chmod +x backend-server

# ----------------------------------------------------------------------
# ---- Service runtime
FROM alpine:3.20 AS service

WORKDIR /app

RUN apk add --no-cache sqlite

COPY entrypoint.d ./entrypoint.d/
RUN chmod +x ./entrypoint.d/*

COPY migration.d ./migration.d/

COPY --from=builder /app/backend-server ./

ENTRYPOINT ["./entrypoint.d/main"]

CMD ["./backend-server"]
