
SELECT 
    Location, 
    COUNT(Case_ID) AS Total_Cases,
    ROUND(AVG(Resolution_Minutes), 2) AS Average_Time_Minutes
FROM fincrime_screening_data
GROUP BY Location
ORDER BY Average_Time_Minutes DESC;