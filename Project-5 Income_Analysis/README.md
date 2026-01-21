
# Project 5

### Socio-Economic Analytics: Educational Impact on Income

Focus: Data Processing with Python · Statistical Visualisation · Economic Mobility



### Project Summary

This project investigates the relationship between educational attainment and financial mobility. By processing over 32,000 demographic records from a census-based dataset, I develop a computational pipeline to calculate Success Rates—the proportion of individuals achieving a high-income bracket across different educational levels.

The project provides a data-driven perspective on the economic “Return on Investment” (ROI) of higher education, supporting insights into social equity and workforce development.



### Background & Context

Access to advanced education strongly influences social sustainability. Raw demographic datasets often contain inconsistencies and formatting errors, which obscure meaningful patterns.

From a Sustainable Societies perspective, analysing these barriers helps identify systemic factors affecting economic mobility. This project demonstrates how automated data cleaning and aggregation transform raw census records into actionable insights on income inequality.



### Scope & Analysis

The analysis uses Python to process a large-scale demographic dataset:
• Dataset Size: 32,561 individual records

• Metric Definition: Income Success Rate (%)

• Key Comparison: Success Rate differences between Doctorate/Professional degrees and secondary education



### Key Findings

1.Advanced Education Advantage

Individuals with Doctorate or Professional School qualifications achieve a high-income success rate of over 74%, compared to roughly 16% for high school graduates.

2.Data Normalisation and Integrity

Whitespace inconsistencies in salary and education fields (e.g., " >50K" vs ">50K") require automated cleaning using .str.strip(). Failure to clean whitespace would have resulted in an undercount of high-income earners, distorting the socio-economic reality of the sample and demonstrating the ethical importance of accurate data engineering.



### Skill Set Demonstrated

• Data Processing with Python: Cleaning and processing large datasets using Pandas

•Statistical Analysis: Calculating normalised success rates across educational tiers using .value_counts(normalise=True)

•Data Visualisation: Creating clear bar charts with Metplotlib to communicate trends effectively

•Socio-Economic Insight: Evaluating patterns of economic mobility to inform sustainable workforce planning


### Technical Implementation

• **Data Cleaning:** Remove whitespace and categorical inconsistencies for consistent analysis

• **Aggregation Logic:** Apply .groupby() and .unstack() to convert raw counts into a success-rate matrix

• **Visualization Design:** Generate a sorted “Income Success Rate by Education Level” bar chart (research_result.png) for stakeholders


