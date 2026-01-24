

SELECT 
    Location,
    COUNT(Case_ID) AS Total_Cases,
    ROUND(AVG(Resolution_Minutes), 2) AS Avg_Resolution_Time,
    ROUND(AVG(Reach_Minutes), 2) AS Avg_Reach_Speed
FROM Compliance_Global_Logs
WHERE Case_Date BETWEEN '2026-01-01' AND '2026-01-31'
GROUP BY Location
ORDER BY Avg_Resolution_Time DESC;
