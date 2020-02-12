FROM golang:1.9
MAINTAINER zsfree  "963916753@qq.com"

# 该指令用于配置工作目录，其参数应该使用绝对目录。
WORKDIR $GOPATH/src/github.com/zsfree/golang-web

add . $GOPATH/src/github.com/zsfree/golang-web

RUN go get github.com/beego/bee
#RUN go get github.com/go-chi/chi
#RUN go get github.com/go-chi/docgen
#RUN go get github.com/go-chi/render
#RUN go get github.com/bitly/go-simplejson

#RUN go build $GOPATH/src/github.com/zsfree/golang-web


#对外暴露端口
#EXPOSE 8000
#CMD ["bash","run-server.sh"]   # 容器执行的命令，起动python程序
#ENTRYPOINT  ["bash","./start.sh"] 
#ENTRYPOINT ["./golang-web"]