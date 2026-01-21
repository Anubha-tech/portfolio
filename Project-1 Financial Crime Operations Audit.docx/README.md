# Project 1

### Financial Crime Operations Audit

Focus: Systemic Risk · Compliance · Responsible Automation


### Project Summary

This project involved a forensic audit of a global financial crime screening operation, reviewing flagged transactions before release. By framing the workflow as a socio-technical system, it explored how human decisions interact with automated processes. The goal was to identify systemic risk points, understand how local errors propagate, and propose sustainable system-level safeguards to reduce long-term operational risk.


###  Background & Context

Financial crime screening is vital to maintaining trust in financial institutions. Failures can affect regulatory compliance, financial stability, and societal confidence.
Distributed global teams face pressure to process transactions quickly, creating conditions where speed may compromise safety. This project positions compliance as a sustainability challenge, showing that thoughtful system design strengthens resilience, accountability, and responsible AI practices.



### Scope & Analysis

The audit examined:

• Resolution times across multiple hubs

• Chronological logs of investigation and payment events

• Misalignments between intended compliance procedures and actual system behaviour

The dataset was anonymised to mirror real-world operational conditions.



### Key Findings

1. Operational Imbalance

One regional team’s average resolution time was 41% slower than another.
Such inefficiencies increase cognitive strain, heighten the chance of shortcuts, and may amplify risk systemically, threatening consistent compliance across operations.

2. Compliance Breach

Event	Time (UTC)

Payment released	12:59:54

Sanctions risk cleared	13:19:22

Funds were released before legal clearance, creating an Asset Flight risk. This highlights a design gap in the system that could allow localised errors to escalate if unaddressed.


### Intervention: Deterministic Control Logic

A rule-based deterministic control ensures that payments cannot be released until investigators explicitly confirm safety.
This solution enforces correct sequencing, maintains transparency, supports human judgment, and reduces systemic risk, illustrating ethical, human-centred automation aligned with sustainable operations.



### Skill Set Demonstrated
• Compliance & Risk Awareness: AML and sanctions workflows

• Data Analysis & Forensic Reasoning: Using Excel and SQL to sequence timestamps, benchmark performance, and detect anomalies

• Systems Thinking: Understanding how local inefficiencies escalate into systemic vulnerabilities

• Responsible Automation: Implementing safeguards to ensure sustainable, trustworthy processes



### Technical Implementation

As an individual, I:

• Cleaned and sequenced operational data using Excel and SQL

• Analysed performance gaps and compliance vulnerabilities

• Designed the deterministic control logic to prevent asset flight

• Communicated insights clearly without relying on external materials

