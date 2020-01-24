FROM golang

RUN go get github.com/labstack/echo/...

WORKDIR /app

ADD . /app

CMD ["go", "run", "server.go"]
