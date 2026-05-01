-- ============================================
-- LOAN RISK ANALYSIS - SQL SERVER
-- Project: Loan Risk & Approval Optimization
-- Description: SQL analysis to identify high-risk borrowers and optimize lending strategy
-- ============================================

-- STEP 1: Validate Risk Segmentation
SELECT 
    risk_segment,
    COUNT(*) AS total_loans,
    SUM(is_default) AS total_defaults,
    ROUND(AVG(CAST(is_default AS FLOAT)) * 100, 2) AS default_rate_percent
FROM dbo.loans
GROUP BY risk_segment
ORDER BY default_rate_percent DESC;


-- STEP 2: Income vs Default Risk
SELECT 
    income_segment,
    COUNT(*) AS total_loans,
    ROUND(AVG(CAST(is_default AS FLOAT)) * 100, 2) AS default_rate
FROM dbo.loans
GROUP BY income_segment
ORDER BY default_rate DESC;


-- STEP 3: Combined Risk Segmentation (Income + Risk)
SELECT 
    income_segment,
    risk_segment,
    COUNT(*) AS total_loans,
    ROUND(AVG(CAST(is_default AS FLOAT)) * 100, 2) AS default_rate
FROM dbo.loans
GROUP BY income_segment, risk_segment
ORDER BY default_rate DESC;


-- STEP 4: Loan Grade Validation
SELECT 
    grade,
    COUNT(*) AS total_loans,
    ROUND(AVG(CAST(is_default AS FLOAT)) * 100, 2) AS default_rate
FROM dbo.loans
GROUP BY grade
ORDER BY default_rate DESC;


-- STEP 5: Top Risk States
SELECT TOP 10
    addr_state,
    COUNT(*) AS total_loans,
    ROUND(AVG(CAST(is_default AS FLOAT)) * 100, 2) AS default_rate
FROM dbo.loans
GROUP BY addr_state
ORDER BY default_rate DESC;


-- STEP 6: State Risk Ranking (Window Function)
SELECT 
    addr_state,
    COUNT(*) AS total_loans,
    ROUND(AVG(CAST(is_default AS FLOAT)) * 100, 2) AS default_rate,
    RANK() OVER (ORDER BY AVG(CAST(is_default AS FLOAT)) DESC) AS risk_rank
FROM dbo.loans
GROUP BY addr_state;


-- STEP 7: Loan Volume vs Risk
SELECT 
    risk_segment,
    SUM(loan_amnt) AS total_loan_volume,
    ROUND(AVG(CAST(is_default AS FLOAT)) * 100, 2) AS default_rate
FROM dbo.loans
GROUP BY risk_segment;