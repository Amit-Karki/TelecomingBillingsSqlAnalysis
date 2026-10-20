WITH TotalLTV AS(
SELECT subscriber_id, 
	SUM(total_billed_usd - tax_usd) AS "LTV After Tax"
	FROM billing 
	GROUP BY subscriber_id
	ORDER BY RANDOM()  

),
Calc AS(SELECT 
       	PERCENTILE_CONT(0.5) WITHIN GROUP(ORDER BY "LTV After Tax") AS "50%Percentile",
       	AVG("LTV After Tax") AS "Average LTV"
       FROM TotalLTV    
), Subscribertype AS(

SELECT T.*,
       CASE  WHEN "LTV After Tax" > "50%Percentile" AND "LTV After Tax" <= "Average LTV" THEN '2-Mid Value Subscriber'      
	       WHEN "LTV After Tax" < "Average LTV" THEN '1-Low Value Subscriber'
             WHEN "LTV After Tax" > "Average LTV" THEN '3-High Value Subscriber'
            END AS "Subscriber type"
            
       FROM TotalLTV T, calc c
)


SELECT
	"Subscriber type",
	COUNT(subscriber_id) AS "Total Subscribers",
	ROUND((COUNT(subscriber_id) / SUM(COUNT(subscriber_id)) OVER()) * 100,2) || ' %' AS "Subscriber Share"
FROM
	Subscribertype
GROUP BY
	"Subscriber type"
ORDER BY
	"Total Subscribers" DESC 
