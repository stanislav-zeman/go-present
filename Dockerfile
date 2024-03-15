FROM golang:latest as build

RUN go install golang.org/x/tools/cmd/present@latest

FROM debian:bookworm-slim

WORKDIR /usr/present

COPY --from=build go/bin/present /usr/local/bin

CMD present -http=:8080 -play=false
