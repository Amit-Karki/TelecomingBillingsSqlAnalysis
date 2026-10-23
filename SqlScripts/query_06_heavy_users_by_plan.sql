	WITH HeavyUser AS(
	SELECT u.subscriber_id,
	     data_used_gb,
	     plan_type, 
	CASE WHEN AVG(data_used_gb) OVER(PARTITION BY u.subscriber_id) >= 2 * AVG(data_used_gb) OVER() THEN 'Heavy User'
	     Else 'Normal User' END AS "User Type"
	     FROM usage_logs u
	     INNER JOIN subscribers s ON 
	     s.subscriber_id =u.subscriber_id 
	     )
	     
	  
	 SELECT
		plan_type,
		AVG(data_used_gb) AS "Average Data Used",
		COUNT(DISTINCT subscriber_id) AS "Total Customers",
		COUNT(DISTINCT subscriber_id) FILTER(WHERE "User Type" = 'Heavy User') AS "Total Heavy Users",
		ROUND((COUNT(DISTINCT subscriber_id) FILTER(WHERE "User Type" = 'Heavy User')::NUMERIC / COUNT(DISTINCT subscriber_id))* 100,4) || ' %' AS "Heavy User Percentage"
		FROM HeavyUser
		GROUP BY plan_type
		ORDER BY "Heavy User Percentage"