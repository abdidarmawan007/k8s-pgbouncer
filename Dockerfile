FROM alpine:3.8

ENV UID=936 GID=936

RUN apk -U --no-cache add \
    pgbouncer \
    tini \
    su-exec

COPY pgbouncer-prod.ini /etc/pgbouncer/pgbouncer.ini
#password postgresql
COPY userlist.txt  /etc/pgbouncer/
COPY run.sh /usr/local/bin/run.sh

RUN chmod +x /usr/local/bin/run.sh

CMD ["run.sh"]
