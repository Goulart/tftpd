FROM alpine:3.13.4
RUN apk add --no-cache tftp-hpa
VOLUME /var/tftpboot
EXPOSE 69/udp
COPY  in.tftpd /etc/conf.d/in.tftpd
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "-s", "/var/tftpboot"]
