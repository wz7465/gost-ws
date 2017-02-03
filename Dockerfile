FROM alpine:3.5

ARG GOST_VER=2.3

RUN \
    apk add --no-cache --virtual .build-deps curl \
    && mkdir -p /opt/gost \
    && cd /opt/gost \
    && curl -fSL https://github.com/ginuerzh/gost/releases/download/v2.3/gost_2.3_linux_amd64.tar.gz | tar xz  \
    && mv /opt/gost/gost_2.3_linux_amd64/gost /opt/gost/ \
    && apk del .build-deps 


ENTRYPOINT ["/opt/gost/gost"]

CMD ["-L=WSS://8080"]

EXPOSE 8080
