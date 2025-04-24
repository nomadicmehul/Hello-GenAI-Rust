# Build stage
FROM rust:1.81 AS builder
WORKDIR /usr/src/rust-genai
# Create blank project
RUN cargo new --bin rust-genai
WORKDIR /usr/src/rust-genai/rust-genai
# Copy manifests
COPY Cargo.toml ./
# Cache dependencies
RUN cargo build --release
# Copy source code
COPY src ./src
# Build for release
RUN touch src/main.rs && cargo build --release

# Final stage
FROM debian:bookworm-slim
WORKDIR /app
# Install curl for healthcheck and ca-certificates for HTTPS
RUN apt-get update && apt-get install -y curl ca-certificates && rm -rf /var/lib/apt/lists/*
RUN useradd -m nomadicmehul
COPY --from=builder /usr/src/rust-genai/rust-genai/target/release/rust-genai .
COPY static/ ./static/
COPY templates/ ./templates/
EXPOSE 8082
USER nomadicmehul
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8082/health || exit 1
CMD ["./rust-genai"]
