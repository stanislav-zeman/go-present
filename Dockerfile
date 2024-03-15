FROM golang:latest

RUN go install golang.org/x/tools/cmd/present@latest

CMD present -http=:8080 -play=false
