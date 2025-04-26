# Rust GenAI Application

This is a Rust implementation of the Hello-GenAI application.

---

## 🚀 Docker Model Runner: Fast, Local AI Model Testing

Here we are using Docker Model Runner for a faster, simpler way to run and test AI models locally, right from your existing workflow. Whether you’re experimenting with the latest LLMs or deploying to production, Model Runner brings the performance and control you need, without the friction.

[![Docker Model Runner Demo](https://img.youtube.com/vi/FvOlsXQepBc/0.jpg)](https://youtu.be/FvOlsXQepBc)

---

## Features
- Structured responses (Markdown)
- Environment variable validation
- In-memory response caching with TTL
- Rate limiting (per client IP)
- Health check endpoint
- API documentation (Swagger UI)
- Security headers
- Responsive web UI (static + templates)
- Improved error handling and logging

## Environment Variables
- `PORT`: The port to run the server on (default: 8082)
- `LLM_BASE_URL`: The base URL of the LLM API (required)
- `LLM_MODEL_NAME`: The model name to use for API requests (required)
- `LOG_LEVEL`: The logging level (default: INFO)

## API Endpoints
- `GET /`: Main chat interface
- `POST /api/chat`: Chat API endpoint
- `GET /health`: Health check endpoint
- `GET /example`: Example of structured formatting
- `GET /api/docs`: Swagger UI for API documentation

---

## Running the Application

You can run the application using Docker Compose or compile and run it natively.

### Prerequisites
- [Docker](https://docs.docker.com/get-docker/) and [Docker Compose](https://docs.docker.com/compose/install/) for containerized setup
- [Rust toolchain](https://www.rust-lang.org/tools/install) (cargo, rustc) for native build

### Environment Variables

Before running, copy `.env.example` to `.env` and fill in the required values:

```sh
cp .env.example .env
# Edit .env as needed
```

### Using Docker Compose

1. Build and start the services:

   ```sh
   docker-compose up --build
   ```

2. The app will be available at [http://localhost:8082](http://localhost:8082).

3. To stop the services:

   ```sh
   docker-compose down
   ```

### Running Natively (Without Docker)

1. Install Rust toolchain (cargo, rustc).
2. Clone the repository and enter the directory.
3. Copy `.env.example` to `.env` and fill in required values.
4. Build and run:

   ```sh
   cargo build --release
   cargo run --release
   ```

5. The app will be available at [http://localhost:8082](http://localhost:8082).

---

## Development
- Requires Rust (edition 2021)
- Uses Actix-web, Tera, DashMap, and other crates

---

## Security & Open Source Checklist
- Ensure `.env` is not committed to the repository (add to `.gitignore` if needed)
- No secrets or sensitive information in code or config
- `.env.example` is provided for reference
- License is correct and present
- All dependencies are open source

---

Feel free to open issues or contribute!
