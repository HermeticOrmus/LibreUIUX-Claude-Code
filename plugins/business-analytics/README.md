# Business Analytics

> Data-driven business analysis with AI-powered analytics, KPI frameworks, predictive modeling, and strategic recommendations.

## Overview

This plugin provides a business analyst agent for transforming complex business data into actionable insights and executive-ready presentations. It covers the full analytics spectrum from dashboard creation (Tableau, Power BI, Looker) and statistical analysis to AI-powered predictive modeling, customer segmentation, and financial forecasting. Use it when defining KPIs, building revenue dashboards, analyzing customer churn, conducting A/B tests, sizing markets, or creating data governance frameworks.

## Contents

### Agents

- **business-analyst** -- Expert business analyst for data-driven decision making. Masters modern analytics platforms (Tableau, Power BI, Looker, Snowflake, BigQuery, Databricks), AI-powered business intelligence (predictive analytics, anomaly detection, sentiment analysis, recommendation engines), KPI framework development (OKRs, balanced scorecards, North Star metrics), financial modeling (CLV/CAC optimization, cohort analysis, scenario planning), customer analytics (segmentation, churn prediction, journey mapping, TAM analysis), data visualization and storytelling, statistical analysis (A/B testing, hypothesis testing, time series forecasting), data governance (quality assessment, ETL optimization, GDPR/CCPA compliance), and industry-specific analytics for e-commerce, SaaS, healthcare, financial services, and manufacturing. Runs on the haiku model for cost-effective analytical work.

## Usage

```bash
claude plugin install business-analytics
```

Example workflows:

```
@business-analyst Analyze our customer churn patterns and create a predictive model to identify at-risk customers
@business-analyst Build a comprehensive revenue dashboard with drill-down capabilities and automated alerts
@business-analyst Design an A/B testing framework for our product feature releases
@business-analyst Create a market sizing analysis for our new product line with TAM/SAM/SOM breakdown
@business-analyst Develop a cohort-based LTV model and optimize our customer acquisition strategy
```

The agent translates complex technical analysis into narratives that non-technical stakeholders can act on, making it suitable for executive presentations and board-level reporting.

## Key Capabilities

The business-analyst agent covers several complementary analytical domains:

- **Modern analytics platforms** -- Creates dashboards in Tableau, Power BI, Looker, and Qlik Sense. Works with cloud-native data platforms including Snowflake, BigQuery, and Databricks for large-scale analytics. Builds real-time streaming visualizations and automated report distribution systems.
- **AI-powered intelligence** -- Applies machine learning for predictive analytics (churn prediction, demand forecasting), NLP for sentiment analysis and text mining, anomaly detection for flagging unusual patterns, and recommendation engines for business optimization.
- **KPI frameworks** -- Designs comprehensive measurement systems including OKRs, balanced scorecards, North Star metrics, and metric dependency hierarchies. Benchmarks against industry standards and tracks trends for continuous improvement.
- **Financial modeling** -- Builds revenue forecasts, CLV/CAC models, cohort analyses, unit economics breakdowns, scenario planning with sensitivity analysis, and ROI calculations for investment decisions.
- **Customer analytics** -- Segments customers by behavior and value, predicts churn with prevention strategies, maps customer journeys, sizes markets (TAM/SAM/SOM), analyzes product-market fit, and optimizes conversion funnels.
- **Statistical rigor** -- Designs and analyzes A/B tests with proper sample sizing, conducts hypothesis testing, performs time series forecasting, and applies multivariate analysis. Validates assumptions through data-driven testing rather than intuition.
- **Data governance** -- Assesses data quality, designs ETL/ELT processes, implements master data management, establishes data lineage tracking, and ensures compliance with GDPR and CCPA privacy regulations.
- **Industry-specific analytics** -- Adapts analysis for e-commerce (conversion, merchandising), SaaS (MRR, churn, expansion), healthcare (population health), financial services (risk, compliance), manufacturing (IoT sensors), and marketing (attribution, campaign effectiveness).

## Related Plugins

- **application-performance** -- Performance metrics and SLI/SLO frameworks complement business KPI tracking.
- **backend-development** -- Feature development workflows start with business analysis from this plugin's agent.
- **agent-orchestration** -- Multi-agent optimization includes cost tracking and performance analytics that feed into business analysis.
