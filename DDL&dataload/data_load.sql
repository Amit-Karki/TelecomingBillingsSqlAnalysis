COPY billing FROM 'A:\Downloads\TelecomingBillingsSqlAnalysis\data\billing.csv' DELIMITER ',' CSV HEADER;
COPY usage_logs 'A:\Downloads\TelecomingBillingsSqlAnalysis\data\usage_logs.csv' FROM DELIMITER ',' CSV HEADER;
COPY subscribers FROM 'A:\Downloads\TelecomingBillingsSqlAnalysis\data\subscribers.csv'  DELIMITER ',' CSV HEADER;
COPY support_tickets FROM 'A:\Downloads\TelecomingBillingsSqlAnalysis\data\support_tickets.csv'  DELIMITER ',' CSV HEADER;
COPY churn_labels FROM 'A:\Downloads\TelecomingBillingsSqlAnalysis\data\churn_labels.csv'  DELIMITER ',' CSV HEADER;
