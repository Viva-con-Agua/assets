FROM golang

RUN go get github.com/labstack/echo/...

WORKDIR /go/src

ADD . /go/src

CMD ["go", "run", "server.go"]
