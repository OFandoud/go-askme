FROM golang:1.11

WORKDIR /go/src/github.com/bashmohandes/go-askme
COPY . .
ENV GOBIN="$GOPATH/bin"
RUN go get -d -v ./... && go get -u github.com/gobuffalo/packr/... && packr install -v ./cmd/askme/main.go
EXPOSE 8080
CMD ["main"]