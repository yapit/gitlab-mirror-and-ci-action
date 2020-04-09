FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --no-cache git curl jq

COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh
ENTRYPOINT ["/entrypoint.sh"]
