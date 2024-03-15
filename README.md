# Go Present Docker image

This repository contains a Dockerfile and a pre-built image with [Go present](https://pkg.go.dev/golang.org/x/tools/present) tool.

## Usage

You can run your slides directly using the image. The slides are mounted to the `/usr/present` directory like so:

```
docker run -v <PATH-TO-YOUR-SLIDES>:/usr/present -p 3999:8080 ghcr.io/stanislav-zeman/go-present
```

You can also use this image as the base image in your Dockerfile: 
```
FROM ghcr.io/stanislav-zeman/go-present

COPY *.slide code images /usr/present/

CMD present -http=:8080 -play=false
```

Which, compared to building only from `golang:latest` image, saves you around 850 MBs.
