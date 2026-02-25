# Machine Learning Ops

> End-to-end MLOps tooling for data science, model engineering, and production ML pipeline orchestration.

## Overview

This plugin covers the full machine learning lifecycle from data analysis and feature engineering through model training, deployment, and monitoring. It coordinates three specialized agents (data scientist, ML engineer, MLOps engineer) via a multi-agent pipeline command, supported by a detailed skill for building reproducible ML workflows with experiment tracking, model serving, and automated retraining.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **data-scientist** | Statistical modeling, exploratory data analysis, feature engineering, hypothesis testing, and business intelligence using pandas, scikit-learn, and visualization libraries. |
| **ml-engineer** | Production ML systems with PyTorch 2.x, TensorFlow, JAX, model serving (TorchServe, TF Serving, Triton), distributed training, and quantization/pruning for optimization. |
| **mlops-engineer** | ML infrastructure and pipeline orchestration with Kubeflow, Airflow, MLflow, Weights & Biases, feature stores (Feast, Tecton), and cloud MLOps stacks (SageMaker, Vertex AI). |

### Commands

| Command | Description |
|---------|-------------|
| **ml-pipeline** | Multi-agent MLOps orchestration that coordinates data analysis, model development, deployment, and monitoring across all three agents in four structured phases. |

### Skills

| Skill | Description |
|-------|-------------|
| **ml-pipeline-workflow** | Step-by-step workflow for building end-to-end ML pipelines covering data preparation, training configuration, model validation, deployment strategies (blue-green, canary), and production monitoring. |

## Usage

- **Starting a new ML project**: Use the ml-pipeline command to orchestrate the full workflow from data analysis through deployment.
- **Data exploration**: The data-scientist agent handles EDA, statistical analysis, and feature engineering.
- **Model development**: The ml-engineer agent builds, trains, and optimizes models for production readiness.
- **Infrastructure**: The mlops-engineer agent sets up experiment tracking, feature stores, and CI/CD for ML.
- **Reference workflows**: The ml-pipeline-workflow skill provides templates for common pipeline patterns.

## Related Plugins

- **observability-monitoring** -- Monitor model performance, data drift, and inference latency in production.
- **performance-testing-review** -- Load test ML inference endpoints and review model serving code.
