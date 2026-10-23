WITH PaymentStatus AS(
SELECT
    subscriber_id,
    year_month,
     CASE 
     	WHEN payment_status = 'Paid On Time' THEN 'Good Payment'
     	ELSE 'Bad Payment' 
     END AS "Payment"
     FROM billing
     
     ),
PreviousMonthStatus AS( 
   SELECT *, 
        LAG("Payment") OVER(PARTITION BY subscriber_id ORDER BY year_month) AS "Previous Month Status" 
        FROM PaymentStatus
  )
 SELECT
	"Previous Month Status",
	COUNT(*) AS "Total Payments",
	COUNT(*) FILTER(WHERE "Payment" = 'Bad Payment') AS "Total Bad Payments",
	ROUND((COUNT(*) FILTER(WHERE "Payment" = 'Bad Payment')::numeric / COUNT(*))* 100, 2) || ' %' AS "Bad Payments Share"
From
	previousMonthStatus
WHERE
	"Previous Month Status" IS NOT NULL
GROUP BY
	"Previous Month Status"