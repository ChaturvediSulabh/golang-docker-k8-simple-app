FROM golang:1.11-alpine AS build

WORKDIR /src/
COPY ./main.go /src/
RUN CGO_ENABLED=0 go build -o /bin/hello-world

FROM scratch
COPY --from=build /bin/hello-world /bin/hello-world
ENTRYPOINT ["/bin/hello-world"]
