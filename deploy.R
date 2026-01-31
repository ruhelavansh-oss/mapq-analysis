# Deploy Script for MAPQ Analysis
# Ideally run this from an R console or via a CI/CD runner

library(rsconnect)
library(dotenv)

# 1. Securely Load Configuration
# This ensures no API keys are hardcoded in the script
try(load_dot_env(), silent = TRUE)

# 2. Configuration Variables
# These should be set in your .env file or system environment
api_key <- Sys.getenv("CONNECT_API_KEY")
server_url <- Sys.getenv("CONNECT_SERVER") # e.g., "https://connect.posit.cloud"
account_name <- "vanshsinghruhela" 

# 3. Validation
if (api_key == "") {
  stop("Error: CONNECT_API_KEY not found in environment variables.")
}

if (server_url == "") {
  server_url <- "https://connect.posit.cloud"
  warning("CONNECT_SERVER not set, defaulting to https://connect.posit.cloud")
}

# 4. Authentication (if not already cached)
# This registers the server and account securely
tryCatch({
  rsconnect::setAccountInfo(name = account_name,
                            token = "Your-Token-If-Needed-Usually-Key-Is-Enough-For-Connect", 
                            secret = api_key) # Note: Posit Cloud usually uses token/secret pairs
}, error = function(e) {
  message("Note: Automatic authentication via script might vary based on method (Token vs API Key).")
  message("Please ensure you have run 'rsconnect::setAccountInfo(...)' manually if this fails.")
})

# 5. Deployment
# Deploys the current directory
rsconnect::deployApp(
  appDir = ".",
  appName = "mapq-scientific-analysis",
  appTitle = "MAPQ Scientific Analysis",
  account = account_name,
  server = "posit.cloud", # or the specific domain if using enterprise connect
  forceUpdate = TRUE
)

message("Deployment Command Executed.")
