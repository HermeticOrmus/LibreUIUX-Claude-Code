# Quantitative Trading

> Financial modeling, algorithmic trading strategy development, and portfolio risk management.

## Overview

This plugin provides two complementary agents for quantitative finance: a quant analyst focused on strategy development and backtesting, and a risk manager specializing in portfolio protection and position sizing. Together they cover the full trading workflow from market data analysis through risk-adjusted execution with Monte Carlo simulation and R-multiple tracking.

## Contents

### Agents

| Agent | Description |
|-------|-------------|
| **quant-analyst** | Build financial models, backtest trading strategies with realistic transaction costs and slippage, implement portfolio optimization (Markowitz, Black-Litterman), options pricing and Greeks, statistical arbitrage, pairs trading, and time series forecasting using pandas, numpy, and scipy. |
| **risk-manager** | Monitor portfolio risk with position sizing (Kelly criterion), R-multiple analysis, Value at Risk (VaR), correlation and beta analysis, hedging strategies (options, futures), stress testing via Monte Carlo simulation, and maximum drawdown analysis. |

## Usage

- **Strategy development**: The quant-analyst agent builds and backtests trading strategies with out-of-sample validation to avoid overfitting.
- **Risk assessment**: The risk-manager agent calculates risk metrics, sets position limits, and designs hedging strategies.
- **Portfolio construction**: Combine both agents -- quant-analyst for signal generation and optimization, risk-manager for position sizing and exposure limits.
- **Trade tracking**: The risk-manager agent tracks all trades in R-multiples for objective, consistent performance analysis.
- **Stress testing**: Run Monte Carlo simulations to understand tail risk and validate strategy robustness under adverse conditions.

## Related Plugins

- **observability-monitoring** -- Dashboard creation (Grafana) for real-time trading metrics and P&L monitoring.
- **machine-learning-ops** -- ML pipelines for building predictive models that feed trading signals.
