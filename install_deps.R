# R Dependency Installation Script
# Run this to ensure all required packages are installed for the analysis

packages <- c(
  "quarto",
  "readxl",
  "psych",
  "psychTools",
  "ggplot2",
  "dplyr",
  "data.table",
  "DoubleML",
  "mlr3",
  "mlr3learners",
  "ranger",
  "lavaan",
  "GPArotation",
  "dotenv",
  "rsconnect"
)

# Function to check and install
install_if_missing <- function(pkg) {
  if (!require(pkg, character.only = TRUE)) {
    message(paste("Installing", pkg, "..."))
    install.packages(pkg, dependencies = TRUE)
  } else {
    message(paste(pkg, "is already installed."))
  }
}

# Execute installation
invisible(lapply(packages, install_if_missing))

message("All dependencies checked.")
