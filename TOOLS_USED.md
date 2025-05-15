# Tools, Libraries, and Technologies Used in Rust-Hello-GenAI

| Category         | Tool/Library/Tech         | Purpose/Role                                 |
|------------------|--------------------------|----------------------------------------------|
| Language         | Rust                     | Main programming language                    |
| Web Framework    | Actix-web                | HTTP server, routing, middleware             |
| Templating       | Tera                     | HTML template rendering                      |
| Async Runtime    | Tokio                    | Async execution                              |
| HTTP Client      | Reqwest                  | Outbound HTTP requests (LLM API)             |
| Serialization    | Serde, serde_json        | Data (de)serialization                       |
| Caching          | DashMap                  | In-memory cache with TTL                     |
| Rate Limiting    | Mutex<HashMap> (custom)  | Per-IP rate limiting                         |
| Logging          | log, env_logger          | Logging                                      |
| Env Management   | dotenv                   | Load env vars from .env                      |
| Date/Time        | chrono                   | Date/time handling                           |
| DevOps           | Docker, Docker Compose   | Containerization, orchestration              |
| DevOps           | Debian slim, curl, ca-certificates | Runtime base image, health checks, HTTPS support |
| Security         | Non-root user            | Container security                           |
| API Docs         | Swagger (static)         | API documentation                            |
| Healthcheck      | curl (in Docker)         | Container health check                       |
| AI Agent Tool    | Rfact.ai                 | Autonomous AI agent for coding and DevOps    |
