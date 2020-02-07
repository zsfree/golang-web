FROM golang:1.9
MAINTAINER zsfree  "963916753@qq.com"
# 该指令用于配置工作目录，其参数应该使用绝对目录。
WORKDIR $GOPATH/src/github.com/zsfree/golang-web

ADD . $GOPATH/src/github.com/zsfree/golang-web

#RUN go get -u github.com/gin-gonic/gin

RUN go build .

EXPOSE 8080

ENTRYPOINT ["./golang-web"]