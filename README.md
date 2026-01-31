# MAPQ Experimental Project

This repository contains the source code, data processing pipelines, and analytical reports for the Modified Attitudes on Psychedelics Questionnaire (MAPQ) project. The study focuses on the psychometric investigation of the instrument and the application of causal inference frameworks to observational behavioral data.

## Project Overview

The MAPQ project is a scientific initiative designed to evaluate a psychometric instrument within the Canadian demographic context. It utilizes advanced statistical frameworks to ensure the reliability of the measurement and explores the causal impact of demographic variables on knowledge-sharing behaviors.

### Primary Objectives
1.  **Psychometric Investigation**: Verification of the 4-factor structure through EFA, CFA, and Monte Carlo simulations.
2.  **Causal Inference**: Estimation of Average Treatment Effects (ATE), ATT, and LATE using Double Machine Learning (DML) architectures.
3.  **Scientific Reproducibility**: Implementation of a version-controlled, containerized workflow to ensure all results are verifiable and transparent.

## Analysis Modules

The project is structured into two distinct computational modules:

### 1. PSY: Psychological Metrics (`analysis_psych.qmd`)
*   **Reliability Assessment**: Calculation of Cronbach's Alpha and McDonald's Omega coefficients.
*   **Structural Modeling**: Execution of EFA and CFA on observed and synthetic datasets.
*   **Robustness Testing**: Implementation of Monte Carlo simulations to validate factor stability.

### 2. DML: Causal Machine Learning (`analysis_dml.qmd`)
*   **Estimation Framework**: Utilization of the Interactive Regression Model (IRM) within the DoubleML framework.
*   **Class Balancing**: Application of the Synthetic Minority Over-sampling Technique (SMOTE).
*   **Instrumental Variables**: Simulation-based LATE estimation to address potential unobserved confounding.

## Technical Stack

*   **Platform**: Quarto Publishing System
*   **Language**: R System for Statistical Computing
*   **Deployment**: Posit Connect / Posit Cloud
*   **Core Libraries**:
    *   `psych`, `psychTools`: Psychometric analytics
    *   `DoubleML`, `mlr3`: Causal inference and machine learning
    *   `lavaan`: Structural equation modeling
    *   `knitr`, `kableExtra`: Scientific reporting and tabularization

## Repository Structure

```
/
├── _quarto.yml          # Project-wide configuration and navigation
├── index.qmd            # Home: Introduction, Scope, and Security
├── about.qmd            # About: Author profile and study context
├── analysis_psych.qmd   # Module: Psychological Metrics (PSY)
├── analysis_dml.qmd     # Module: Causal Machine Learning (DML)
├── styles.css           # Custom scientific CSS styles
├── README.md            # Repository documentation
├── LICENSE              # MIT License terms
├── data/                # Secure observational data (excluded from git)
│   └── ...
└── R_libs/              # Reproducible R dependency environment
```

## Security & Reproducibility

*   **Confidentiality**: Access to raw observational data is restricted to authorized environments.
*   **Secret Management**: Sensitive configuration parameters are managed via environment variables.
*   **Licensing**: The investigation framework is open-source under the [MIT License](LICENSE).

## Author

**Vansh Singh Ruhela**  
Centre for Criminology and Sociolegal Studies, University of Toronto  
[GitHub](https://github.com/ruhelavansh-oss) | [ORCID](https://orcid.org/0009-0004-1750-3592)

---
*Copyright © 2026 Vansh Singh Ruhela. All rights reserved.*
