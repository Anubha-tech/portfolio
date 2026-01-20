SHOW TABLES FROM client_onboarding_db;
SELECT 
    table_name, 
    table_rows 
FROM 
    information_schema.tables 
WHERE 
    table_schema = 'client_onboarding_db';
    
    SELECT * FROM client_onboarding_db.raw_data LIMIT 5;
    
    DESCRIBE client_onboarding_db.raw_data;
    
    SELECT risk_level, COUNT(*) AS count_of_rfi 
FROM client_onboarding_db.raw_data 
GROUP BY risk_level;


SELECT bank_name, AVG(response_time) AS avg_response_time 
FROM client_onboarding_db.raw_data 
GROUP BY bank_name;


SELECT customer_country, SUM(amount_usd) AS sum_of_amount 
FROM client_onboarding_db.raw_data 
GROUP BY customer_country 
ORDER BY sum_of_amount DESC;

SELECT rfi_theme, COUNT(*) AS count_of_rfi 
FROM client_onboarding_db.raw_data 
GROUP BY rfi_theme;

SELECT 
    rfi_id, 
    bank_name, 
    amount_usd, 
    customer_country, 
    transaction_purpose
FROM client_onboarding_db.raw_data
WHERE risk_level = 5 
  AND prev_suspensions = 'Yes'
  AND account_type = 'Business'
ORDER BY amount_usd DESC;

SELECT 
    bank_name, 
    COUNT(*) AS total_cases,
    SUM(CASE WHEN status = 'Suspended' THEN 1 ELSE 0 END) AS suspended_cases,
    ROUND((SUM(CASE WHEN status = 'Suspended' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS suspension_rate_pct
FROM client_onboarding_db.raw_data
GROUP BY bank_name;


SELECT 
    COUNT(*) - COUNT(rfi_id) AS missing_ids,
    COUNT(*) - COUNT(amount_usd) AS missing_amounts,
    COUNT(*) - COUNT(risk_level) AS missing_risk_levels
FROM client_onboarding_db.raw_data;


SELECT 
    bank_name, 
    rfi_theme, 
    COUNT(*) AS total_rfis,
    ROUND(AVG(response_time), 2) AS avg_days_to_respond
FROM client_onboarding_db.raw_data
GROUP BY bank_name, rfi_theme
ORDER BY bank_name, total_rfis DESC;

SELECT 
    prev_suspensions, 
    risk_level, 
    COUNT(*) AS case_count,
    SUM(amount_usd) AS total_value_at_risk
FROM client_onboarding_db.raw_data
GROUP BY prev_suspensions, risk_level
ORDER BY risk_level DESC;

SELECT 
    customer_country, 
    recipient_country, 
    SUM(amount_usd) AS total_amount,
    COUNT(*) AS frequency
FROM client_onboarding_db.raw_data
GROUP BY customer_country, recipient_country
ORDER BY total_amount DESC
LIMIT 10;


SELECT 
    account_type, 
    status, 
    COUNT(*) AS count,
    ROUND(AVG(amount_usd), 2) AS avg_transaction_size
FROM client_onboarding_db.raw_data
GROUP BY account_type, status;

SELECT * FROM client_onboarding_db.raw_data
WHERE risk_level = 5 
  AND status = 'Suspended'
  AND amount_usd > 10000;
  
  SELECT 
    bank_name, 
    COUNT(*) AS total_rfis, 
    ROUND(AVG(response_time), 2) AS avg_response_time
FROM client_onboarding_db.raw_data
GROUP BY bank_name;

SELECT 
    rfi_theme, 
    SUM(amount_usd) AS total_value, 
    COUNT(*) AS volume
FROM client_onboarding_db.raw_data
GROUP BY rfi_theme;


SELECT 
    rfi_id, 
    bank_name, 
    amount_usd, 
    customer_country, 
    transaction_purpose
FROM client_onboarding_db.raw_data
WHERE risk_level = 5 
  AND status = 'Suspended' 
  AND prev_suspensions = 'Yes';
  
  
  SELECT 
    customer_country, 
    recipient_country, 
    COUNT(*) AS frequency
FROM client_onboarding_db.raw_data
WHERE risk_level = 5
GROUP BY customer_country, recipient_country
ORDER BY frequency DESC;


CREATE OR REPLACE VIEW vw_urgent_priority_cases AS
SELECT 
    rfi_id, 
    bank_name, 
    amount_usd,
   
    CASE 
        WHEN risk_level = 5 AND prev_suspensions = 'Yes' THEN 'IMMEDIATE DEACTIVATION'
        WHEN risk_level = 5 THEN 'URGENT REVIEW'
        ELSE 'STANDARD MONITORING'
    END AS compliance_action
FROM client_onboarding_db.raw_data
WHERE status = 'Suspended';