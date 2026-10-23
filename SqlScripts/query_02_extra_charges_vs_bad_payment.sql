
WITH quartile AS(
 SELECT 
    PERCENTILE_CONT(0.33) WITHIN GROUP (ORDER BY (data_overage_usd + intl_roaming_usd)) AS "33%",
    PERCENTILE_CONT(0.66) WITHIN GROUP (ORDER BY (data_overage_usd + intl_roaming_usd))  AS "66%"
FROM BILLING
WHERE data_overage_usd + intl_roaming_usd > 0
) ,PaymentStatus AS(
SELECT 
      *,
      CASE  
      	WHEN (data_overage_usd +  intl_roaming_usd =  0) THEN 'No Extra Charge'
      	ELSE 
      	   CASE WHEN data_overage_usd + intl_roaming_usd <= (SELECT "33%" FROM quartile) THEN 'Low Extra Charge'
      	         WHEN data_overage_usd + intl_roaming_usd <= (SELECT "66%"FROM quartile)  THEN 'Mid Extra Charge'
      	         ELSE 'High Extra Charge'
      	         END   
      END AS "OverPricing",
      CASE 
      	WHEN payment_status = 'Paid On Time' THEN 'Good Payment'
      	ELSE 'Bad Payment'
      END AS "Payment Status"
      FROM billing b
      INNER JOIN usage_logs u 
      ON (b.subscriber_id = u.subscriber_id AND b.year_month = u.year_month)
    )  
SELECT
	"OverPricing",
      COUNT(*) AS "Total Payments",
      COUNT(*) FILTER(WHERE "Payment Status" <> 'Good Payment') AS "Total Bad Payments",
      (COUNT(*) FILTER(WHERE "Payment Status" <> 'Good Payment')::numeric  / COUNT(*)) * 100 || ' %' AS "Bad Payments Share"
      FROM PaymentStatus 
      GROUP BY "OverPricing"
      
