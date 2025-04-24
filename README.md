# Rust GenAI Application

This is a Rust implementation of the Hello-GenAI application.

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

## Running the Application

### Using Docker
```bash
d r
docker run -p 8082:8082 -e LLM_BASE_URL=http://your-llm-api -e LLM_MODEL_NAME=your-model rust-genai
```

### Without Docker
```bash
cargo run
```

## Development
- Requires Rust (edition 2021)
- Uses Actix-web, Tera, DashMap, and other crates
