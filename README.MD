# **Telecom Billing & Churn Analysis**

## Introduction:
Dataset used for Telecom Billing & Churn Analysis is extracted from kaggle. The data is cleaned, transformed and then loaded into the postgres database where further analysis is done. 

## Tables:
1. 
2.

## Key Definations:
Good Payment: The Payment which is done in Time.

Bad Payment: The payment which is not done in Time which may include failed payment, paid late or not pend payments.

Escalated Tickets: The ticket which issued to the Subscriber when the Subcriber have a serious issue and the issue can't be solved by the low level Customer Service Department so it is passed to high level employees.

## Findings

Query0: Low Value Subscribers holds the highest share of the total Subscribers. Almost every 1 in 2 Subscribers are Low Value Subscriber i.e 50.00% followed by High Value Subscribers at almost 40.20% and Mid Value Subscribers at 9.79%.

Query1: Almost all of the bills are paid in time i.e 85.85% followed by bills which are paid late at 9.38%, unpaid bills at 1.82% and fail to pay bills at 2.96%. The real risk here is unpaid bills and failed to pay bills which may looks small in percentage i.e almost 4% of total bills but is approx $ 11M in Monetory value, so the focus should be given for the payment recovery of these bills. 

Query2: We found that the bills with extra charge  whether the charge is low, mid or very high doesn't corresponds to higher bad payments percentage. So the overpriced bills have no coorelation with the high bad payment rates.

Query 3: We found that if there is a good payment previous month by the subscriber then in aggegrate the bad payment rate is almost 1.3 times lesser than that of the  Subscribers with bad payment previous month.

Query 4: We found out that the Subscribers who have at least one bad payment in their entire life have almost 1.2 times higher churned rate in comparision to those with no any bad payment in their entire life.

Query 5: We found out that the subscribers who have been issued at least one escalated ticket have 1.6 times higher churned rate than the one who have been never issued with escalated ticket.

Query 6: We have found out that the user who have the business plan have the highest heavy users which is around 37.62% followed by Postpaid premium at 30.91%, Postpaid Standard at 12.91%, PostPaid basics at 0.0024% and at last is prepaid at 0.00%.


## Limitation 

-  DataSet is recorded under a short interval of time so cannot be used for detailed analysis like revenue per cohort year, churned rates per cohort year etc. It only contains telecom information from 2025 to 2026 with many missing months in between.

- Artificial data so the insights may not represent the true characteristics.

