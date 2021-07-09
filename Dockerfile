FROM alpine:3.14
ENV destdir=/var/tftpboot
RUN apk update && apk add --no-cache tftp-hpa shadow
VOLUME $destdir
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
