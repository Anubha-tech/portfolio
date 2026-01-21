# Project 2

## Baltic Stock Market Analysis

Focus: Data Science · Algorithmic Filtering · Interpretability



### Project Summary

This project developed a computational screening pipeline for the Baltic stock markets. By implementing heuristic-based valuation models, the tool identifies market inefficiencies and information asymmetries. The objective was to move beyond speculative sentiment toward a data-driven investment framework that supports long-term economic resilience and financial inclusion within regional European markets.



### Background & Context

The Baltic equity market is small and often suffers from thin trading and information gaps, which can amplify price volatility and misplacing.

From a sustainability perspective, stabilizing these markets contributes to economic resilience by reducing the risk of speculative bubbles that can erode societal wealth. This project demonstrates how algorithmic approaches can support evidence-based decision-making, helping local investors access structured insights previously available only to professional analysts.



### Scope & Analysis

The dataset included 52 publicly listed companies across Nasdaq Baltic exchanges. Analysis focused on:

• Dividend Consistency: Historical payouts (2015–2023)
• Yield Screening: Selecting assets with yields exceeding 5%
• Fair-Value Heuristics: Comparing market price to intrinsic value estimates to identify undervaluation



### Key Findings

1.Identification of Opportunities

The pipeline filtered 52 stocks to 19 candidates showing high potential based on historical payouts and fair-value metrics.

• Top Recommendation (historical data): SFG1T (Tallinn) appeared significantly undervalued, with a historical yield of 24.75% and a 75.7% discount relative to its intrinsic value. This reflects historical patterns and does not constitute advice for real-world trading.

2.Regional Insights

Tallinn (TLN) displayed the highest density of undervalued assets, illustrating how information asymmetry can vary by market. Algorithmic assessment helps reduce mispricing, supporting stable, resilient local markets.


### Intervention: Algorithmic Interpretability & Fair-Value Logic

To mitigate “yield traps” and high-risk speculation, the project implemented a deterministic scoring algorithm:

• Vectorized Data Processing: Python (Pandas/NumPy) processed multi-year historical payouts for 52 companies efficiently.
• Interpretability Layer: Matplotlib and Seaborn were used to translate high-dimensional financial metrics into evidence-based decision supports for non-experts.
• Fair-Value Heuristics: Intrinsic value formulas provided a ground-truth anchor against short-term market volatility.



### Skill Set Demonstrated

• Python & Data Engineering: Vectorized operations, dataset cleaning, merging, and structured processing
• Algorithmic Filtering & Financial Modeling: Heuristic scoring logic for multi-factor valuation
• Interpretability & Visualization: Clear evidence-based reporting for non-technical stakeholders
• Economic Sustainability: Supporting market stability and reducing information asymmetry in small-cap markets


### Technical Implementation

As an individual, I:

• Built the full end-to-end data pipeline in Jupyter Notebook (Baltic_Analysis.ipynb)
• Designed multi-factor filtering logic (Yield > 5% & Price < Fair Value)
• Cleaned and merged disparate datasets to create a unified Baltic market overview
• Developed an interpretability layer to translate complex insights into clear visualizations for non-experts



This project demonstrates how data science, algorithmic reasoning, and interpretability can support evidence-based decision-making and regional economic resilience, key principles in AI for Sustainable Societies.

