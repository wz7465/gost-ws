FROM golang:alpine

RUN apk add --update git && \
    git clone -b master https://github.com/ginuerzh/gost /go/src/gost && \
    cd /go/src/gost/cmd/gost && \
    go get ./... && go gost/cmd/gost

ENTRYPOINT ["/go/bin/gost"]

CMD ["-L=WSS://:8080"]

EXPOSE 8080
