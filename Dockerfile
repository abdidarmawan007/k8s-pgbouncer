# pgbouncer version : 1.13.0-r0 
FROM alpine:3.12.0

ENV UID=936 GID=936

RUN apk -U --no-cache add \
    pgbouncer \
    tini \
    su-exec

COPY run.sh /usr/local/bin/run.sh

RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
