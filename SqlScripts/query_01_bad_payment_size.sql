
                  
  SELECT
	payment_status,
	COUNT(*) AS "Total Bills",
	'$ ' || ROUND(SUM(total_billed_usd)/1000000,0) || ' M' AS "Total Monetary Value" ,
	ROUND((COUNT(*) / SUM(COUNT(*)) OVER()  * 100),2)|| ' %' AS "Payment Percent"
FROM
	billing
GROUP BY
	payment_status
ORDER BY  "Total Monetary Value"
