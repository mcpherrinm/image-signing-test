FROM docker.io/golang:1.24.3 as build

COPY testapp /app

WORKDIR /app
RUN go build -o /bin/testapp .

FROM scratch

COPY --from=build /bin/testapp /bin/testapp

ENTRYPOINT ["/bin/testapp"]
