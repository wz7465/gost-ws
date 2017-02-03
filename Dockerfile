FROM golang:alpine

RUN apk add --update git && \
    git clone -b master https://github.com/ginuerzh/gost/ /go/src/github.com/ginuerzh/gost && \
    cd /go/src/github.com/ginuerzh/gost/cmd/gost && \
    go get ./... && go install github.com/ginuerzh/gost/cmd/gost

ENTRYPOINT ["/go/bin/gost"]

CMD ["-L=WSS://:8080"]

EXPOSE 8080
