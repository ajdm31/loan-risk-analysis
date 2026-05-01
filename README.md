# 📊 Loan Risk & Approval Optimization Analysis

🚀 End-to-end data analytics project using Python, SQL Server, and Power BI to optimize loan approval strategies.

## 📌 Overview

This project analyzes a large loan dataset (~1.3M records) to identify high-risk borrowers, reduce default rates, and optimize lending strategy.

The goal is to simulate how a financial institution can use data analytics and business intelligence tools to improve decision-making and profitability.

## 🧠 Business Problem

Loan defaults represent a major financial risk for lenders.

This project answers key business questions:

* Which borrowers are most likely to default?
* How can risk be reduced without limiting growth?
* What segments should the company target or avoid?

## 🛠️ Tech Stack / Requirements
* Python → Data cleaning & feature engineering
* SQL Server → Data analysis & validation
* Microsfot Power BI → Dashboard & visualization


## 📂 Dataset

The dataset includes:

* Loan details (amount, term, interest rate)
* Borrower information (income, employment, home ownership)
* Credit metrics (FICO score, grade)
* Geographic data (state)

## ⚙️ Methodology
## 1. Data Cleaning & Feature Engineering (Python)
* Handled missing values and formatting issues
* Created key features:
    * risk_segment (Low / Medium / High)
    * income_segment (Low / Mid / High)
    * Financial ratios:
        * Loan-to-Income
        * Installment-to-Income

## 2. SQL Analysis (SQL Server)

Key analyses performed:

* Default rate by risk segment
* Income vs default rate
* Combined segmentation (risk + income)
* Loan grade validation
* Geographic risk analysis
* Window functions for ranking high-risk states

## 3. Dashboard (Microsoft Power BI)

An interactive dashboard was built to:

* Track KPIs:
    * Total Loans
    * Default Rate
    * Total Defaults
    * Loan Volume
* Analyze borrower risk segments
* Identify high-risk regions
* Support data-driven decision making

📊 Dashboard Preview
![alt text](Loan-Portfolio-Dashboard.png)

## 🔍 Key Insights
* 🔴 High Risk borrowers have a 30.45% default rate (~4x higher than Low Risk)
* 💰 Low Income borrowers show the highest default rate (23.75%)
* ⚠️ High Risk + Low Income is the most dangerous segment (30.7%)
* 🧾 Loan grades strongly correlate with risk (Grade G = 49.93% default rate)
* 🌍 Certain states show significantly higher default rates (e.g., MS, NE, AR)
* 💸 Most loan volume is concentrated in Medium Risk borrowers

## 💡 Business Recommendations
* Tighten approval criteria for high-risk borrowers
* Shift growth toward low-risk, high-income segments
* Adjust pricing (interest rates) based on risk
* Apply regional risk strategies
* Improve risk models using multi-factor segmentation

## 📈 Business Impact

This analysis can help:

* Reduce default rates
* Improve profitability
* Optimize risk exposure
* Enable smarter lending decisions

## 🧠 What I Learned
* How to translate business problems into data analysis
* How to use SQL for large-scale data insights
* How to design dashboards for decision-making
* How to communicate insights clearly

## Dateset
Lending Club Loan Dataset
Dataset not included due to size. Available on Kaggle: [https://www.kaggle.com/datasets/wordsforthewise/lending-club]


## ⚙️ Installation

git clone https://github.com/ajdm31/loan-risk-analysis.git
cd loan-risk-analysis

# Create virtual environment
python -m venv venv
venv\Scripts\activate   # Windows

# Install dependencies
pip install -r requirements.txt
