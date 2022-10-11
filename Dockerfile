FROM alpine:3.16.2

ARG TUIC_VERSION=0.8.5
ARG ARCH=x86_64-linux-musl

WORKDIR /etc/tuic

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories \
&&  apk --no-cache add curl \
&&  curl -L https://github.com/EAimTY/tuic/releases/download/${TUIC_VERSION}/tuic-server-${TUIC_VERSION}-${ARCH} \
    -o /usr/bin/tuic-server \
&&  chmod +x /usr/bin/tuic-server

COPY config.json /etc/tuic/

EXPOSE 443/udp

ENTRYPOINT ["tuic-server"]
CMD ["-c", "/etc/tuic/config.json"]