FROM alpine:3.18.0

ARG TUIC_VERSION=1.0.0
ARG ARCH=x86_64-unknown-linux-musl

WORKDIR /etc/tuic

RUN wget https://github.com/EAimTY/tuic/releases/download/tuic-server-${TUIC_VERSION}/tuic-server-${TUIC_VERSION}-${ARCH} \
    -O /usr/bin/tuic-server \
&&  chmod +x /usr/bin/tuic-server

COPY config.json /etc/tuic/

EXPOSE 443/udp

ENTRYPOINT ["tuic-server"]
CMD ["-c", "/etc/tuic/config.json"]