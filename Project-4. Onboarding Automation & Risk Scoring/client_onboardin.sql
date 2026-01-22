
-- 1. Benchmarking Average Response Time across valid Partner Banks

SELECT 
    bank_name AS Partner_Bank,
    ROUND(AVG(response_time), 2) AS Average_Response_Time_Days,
    COUNT(rfi_id) AS Total_RFI_Volume
FROM 
    client_onboarding_db.raw_data
GROUP BY 
    bank_name
ORDER BY 
    Average_Response_Time_Days DESC;

-- 2. Deep Dive: High Latency Analysis for Bank A

SELECT 
    bank_name,
    rfi_theme,
    risk_level,
    ROUND(AVG(response_time), 2) AS Avg_Latency
FROM 
    client_onboarding_db.raw_data
WHERE 
    bank_name = 'Bank A'
GROUP BY 
    rfi_theme, 
    risk_level
ORDER BY 
    Avg_Latency DESC;

-- 3. Benchmarking Bank A against the Global Average

WITH GlobalAvg AS (
    SELECT AVG(response_time) as overall_avg 
    FROM client_onboarding_db.raw_data
)
SELECT 
    bank_name,
    ROUND(AVG(response_time), 2) AS Bank_Avg,
    ROUND((SELECT overall_avg FROM GlobalAvg), 2) AS Global_Benchmark,
    ROUND(AVG(response_time) - (SELECT overall_avg FROM GlobalAvg), 2) AS Variance
FROM 
    client_onboarding_db.raw_data
GROUP BY 
    bank_name
HAVING 
    bank_name = 'Bank A';

-- 4. Financial Impact Audit  

SELECT 
    SUM(amount_usd) AS Total_Value_At_Risk_USD
FROM 
    client_onboarding_db.raw_data;

-- 5. Risk Exposure Distribution

SELECT 
    risk_level, 
    COUNT(*) AS count_of_rfi,
    ROUND((COUNT(*) * 100.0 / (SELECT COUNT(*) FROM client_onboarding_db.raw_data)), 2) AS percentage_of_total
FROM 
    client_onboarding_db.raw_data
GROUP BY 
    risk_level
ORDER BY 
    risk_level DESC;