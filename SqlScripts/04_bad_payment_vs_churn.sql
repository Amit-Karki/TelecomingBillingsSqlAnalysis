WITH PaymentStatus AS (SELECT subscriber_id ,
CASE 
      	WHEN BOOL_OR(payment_status <> 'Paid On Time') THEN 'Bad Payment'
      	ELSE 'Good Payment' 
      END AS "Payment Status"
      FROM billing 
     GROUP BY subscriber_id
  
      )
      
      
  SELECT "Payment Status",
  COUNT(DISTINCT  p.subscriber_id) AS "Unique Subscribers",
  COUNT(DISTINCT  p.subscriber_id) FILTER(WHERE churned ) AS "Unique Churned Subscribers",
 (COUNT(DISTINCT  p.subscriber_id) FILTER(WHERE churned)::NUMERIC / COUNT(DISTINCT  p.subscriber_id)) * 100 || ' %'  AS "% Churned Subscribers"
 From PaymentStatus p
 INNER JOIN churn_labels c ON 
 p.subscriber_id = c.subscriber_id   GROUP BY "Payment Status"   
