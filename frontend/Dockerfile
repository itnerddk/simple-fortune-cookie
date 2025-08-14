FROM golang AS builder
WORKDIR /app
COPY . .
RUN go build -o frontend .

FROM gcr.io/distroless/base
COPY --from=builder /app/frontend .
COPY ./templates ./templates
COPY ./static ./static
CMD ["/frontend"]