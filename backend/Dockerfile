FROM golang AS builder
WORKDIR /app
COPY . .
RUN go build -o backend .

FROM gcr.io/distroless/base
COPY --from=builder /app/backend .
CMD ["/backend"]