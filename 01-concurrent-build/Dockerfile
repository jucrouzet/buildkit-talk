FROM golang:alpine as buildA

WORKDIR /
COPY foo.go /foo.go
RUN go build -o /foo foo.go 
RUN sleep 10

## ---------------------------------

FROM golang:alpine as buildB

WORKDIR /
COPY bar.go /bar.go
RUN go build -o bar bar.go
RUN sleep 10

## ---------------------------------

FROM alpine as final

COPY --from=buildA /foo /foo
COPY --from=buildB /bar /bar

CMD ["sh", "-c", "/foo && /bar"]
