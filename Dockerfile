# syntax=docker/dockerfile:1

FROM golang:1.22

WORKDIR /app

RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux go build -o /jenkins-practice-udemylabs

CMD ["/jenkins-practice-udemylabs"]