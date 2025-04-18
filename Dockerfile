# Sử dụng image Go chính thức
FROM golang:1.24.2-alpine AS builder

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép go.mod và go.sum
COPY go.mod go.sum ./

# Tải dependencies
RUN go mod download

# Sao chép mã nguồn
COPY . .

# Biên dịch ứng dụng
RUN CGO_ENABLED=0 GOOS=linux go build -o main .

# Sử dụng image nhỏ gọn để chạy
FROM alpine:latest
WORKDIR /root/
COPY --from=builder /app/main .
EXPOSE 8080
CMD ["./main"]