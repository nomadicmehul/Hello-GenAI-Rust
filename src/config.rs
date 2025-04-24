use std::env;
use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, Serialize, Deserialize)]
pub struct AppConfig {
    pub port: u16,
    pub llm_base_url: String,
    pub llm_model_name: String,
    pub log_level: String,
}

impl AppConfig {
    pub fn from_env() -> Self {
        let port = env::var("PORT").unwrap_or_else(|_| "8082".to_string()).parse().unwrap_or(8082);
        let llm_base_url = env::var("LLM_BASE_URL").unwrap_or_default();
        let llm_model_name = env::var("LLM_MODEL_NAME").unwrap_or_default();
        let log_level = env::var("LOG_LEVEL").unwrap_or_else(|_| "info".to_string());
        Self {
            port,
            llm_base_url,
            llm_model_name,
            log_level,
        }
    }
}
