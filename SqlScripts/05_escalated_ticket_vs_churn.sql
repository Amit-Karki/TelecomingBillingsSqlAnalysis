WITH TicketAnalysis AS(
SELECT  
     subscriber_id,
      CASE 
      	WHEN BOOL_OR(escalated) THEN 'Had Escalated ticket'
      	ELSE 'None Escalated ticket '
      END AS "Ticket Type"
      FROM support_tickets
      GROUP BY subscriber_id
      )
      
      
    SELECT
	"Ticket Type",
	COUNT(*) AS "Total Customers",
	COUNT(*) FILTER(WHERE churned = true) AS "Total Churned users",
	ROUND((COUNT(*) FILTER(WHERE churned = true)::NUMERIC / COUNT(*)) * 100,2) || ' %' AS "Churned Percentage"
FROM
	TicketAnalysis T
INNER JOIN churn_labels c ON
	T.subscriber_id = c.subscriber_id
	group by "Ticket Type"
