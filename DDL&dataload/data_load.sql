COPY billing FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\billings_csv\Part_1.csv' DELIMITER ',' CSV HEADER;
COPY billing FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\billings_csv\Part_2.csv' DELIMITER ',' CSV HEADER;
COPY billing FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\billings_csv\Part_3.csv' DELIMITER ',' CSV HEADER;
COPY billing FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\billings_csv\Part_4.csv' DELIMITER ',' CSV HEADER;
COPY billing FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\billings_csv\Part_5.csv' DELIMITER ',' CSV HEADER;



COPY usage_logs FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\Usage_logs.csv\part_1.csv' DELIMITER ',' CSV HEADER;
COPY usage_logs FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\Usage_logs.csv\part_2.csv' DELIMITER ',' CSV HEADER;
COPY usage_logs FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\Usage_logs.csv\part_3.csv' DELIMITER ',' CSV HEADER;
COPY usage_logs FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\Usage_logs.csv\part_4.csv' DELIMITER ',' CSV HEADER;
COPY usage_logs FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\Usage_logs.csv\part_5.csv' DELIMITER ',' CSV HEADER;

COPY subscribers FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\subscribers.csv'  DELIMITER ',' CSV HEADER;
COPY support_tickets FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\support_tickets.csv'  DELIMITER ',' CSV HEADER;
COPY churn_labels FROM 'A:\Downloads\HelmetData\TelecomingBillingsSqlAnalysis\churn_labels.csv'  DELIMITER ',' CSV HEADER;
