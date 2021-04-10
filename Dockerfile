FROM golang:1.16-stretch

WORKDIR /usr/app

COPY go.mod .
COPY go.sum .

RUN go mod tidy

COPY . .

RUN go get -u github.com/cosmtrek/air