# Deploy Script for MAPQ Analysis
library(rsconnect)
library(dotenv)

# Load environment
try(load_dot_env(), silent = TRUE)

# Account Details
account_name <- "vanshsinghruhela"

# Instructions for the user if auth fails
print("--- Deployment Initiation ---")
print("Ensure you have authenticated locally using:")
print(paste0("rsconnect::setAccountInfo(name='", account_name, "', token='<TOKEN>', secret='<SECRET>')"))

# Deploy
tryCatch({
  rsconnect::deployApp(
    appDir = ".",
    appName = "mapq-project",
    appTitle = "MAPQ Project",
    account = account_name,
    server = "posit.cloud",
    forceUpdate = TRUE,
    launch.browser = FALSE
  )
}, error = function(e) {
  print("Deployment failed. Common reasons:")
  print("1. Authentication missing (Run setAccountInfo first)")
  print("2. 'quarto' not in system PATH")
  print(e)
})
