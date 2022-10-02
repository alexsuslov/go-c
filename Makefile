FROM golang:1.18.1 AS build

WORKDIR /app
COPY . .
RUN go build -o app main.go

FROM alpine:3.15
RUN apk add gcompat
WORKDIR /app
COPY --from=build /app/app .
CMD ["./app"]
