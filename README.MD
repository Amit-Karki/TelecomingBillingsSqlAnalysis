# **Telecom Billing & Churn Analysis**

## **Introduction:**
Dataset used for Telecom Billing & Churn Analysis is extracted from kaggle. The data is cleaned, transformed and then loaded into the postgres database where further analysis is done. 

## **Tables:**
1. ['Billing.csv'](https://drive.google.com/file/d/1mIDRmPqZLYjvcyuS32BkQTObJpbSpIEC/view?usp=sharing) 
2. ['support_tickets.csv'](https://drive.google.com/file/d/13RbDkz5y6JJMJ9jp1EAMttax6gzQJ9Gh/view?usp=sharing)
3. ['subscriber.csv'](https://drive.google.com/file/d/1jagUZgF9_okRTMf5x6pZ3o7edse2I_yH/view?usp=sharing)
4. ['churn_labels.csv'](https://drive.google.com/file/d/1dcsV8-PYyK8QGFrfg1O6qMN1Eop8EUfJ/view?usp=drive_link)
5. ['usage_logs.csv'](https://drive.google.com/file/d/1xy2O7oEPRRCyTnBTJYfqwYEdgnSmwlva/view?usp=sharing)

Every table is interconnected with each other with a primary key of subscriber_id or composite key of subscriber_id and year_month.

## Key Definations:

**Good Payment:** The Payment which is done in Time.

**Bad Payment:** The payment which is not done in Time which may include failed payment, paid late or not pend payments.

**Escalated Tickets:** The ticket which issued to the Subscriber when the Subcriber have a serious issue and the issue can't be solved by the low level Customer Service Department so it is passed to high level employees.

## **Analysis**

### **Query0:**
**Question:** 
         What is the share of low, high and mid value subscriber
         in basis of total customer count? 

**Finding:**
       Low Value Subscribers holds the highest share of the total Subscribers. Almost every 1 in 2 Subscribers are Low Value Subscriber i.e 50.00% followed by High Value Subscribers at almost 40.20% and Mid Value Subscribers at 9.79%.

**Action:** 
      Company Should focus on how can it increase  revenue from the low value customers as they are the majority customers which can be done by giving cheaper mobile data and calling while decreasing margin in individual sales but due to massive customer base the revenue and profit can increase dastrically. For high value customer high data rates can be not that much problemetic but quality service should be provided as they are more prone to leave the service if found dissatisfaction in the service. Mid Value Customers can be targeted with mid range of prices.


### ***Query1:***

**Question:** 
         Categorize the bills with respect to the payment status of the bill, marking each category share in total bills.

**Finding:**
        Almost all of the bills are paid in time i.e 85.85% followed by bills which are paid late at 9.38%, unpaid bills at 1.82% and fail to pay bills at 2.96%. 

**Action:** 
       The real risk of revenue here is from the bills which are unpaid or failed to pay. Despite these bills combined contribute only 4% of total bills but the combined monetory value of these bills is $ 11M which is a significant amount. So for the recovery of these bills various steps can be taken like blocking all incoming calls, message remainders etc.


### **Query2:**

**Question:** 
         Do users with extra bill charges(further categorized into low,mid and high) have higher bad payment percentages in comparision to the users with no extra bill charge

**Finding:**
         We found that the bills with extra charge  whether the charge is low, mid or very high doesn't corresponds to higher bad payments percentage. So the overpriced bills have no coorelation with the high bad payment rates.

**Action:** 
        idk
      

### **Query 3:**

**Question:**
         Do good or bad payment of the previous month of the bill impacts the future bad payment rate?
**Finding:**
         We found that if there is a good payment previous month by the subscriber then in aggegrate the bad payment rate is almost 1.3 times lesser than that of the  Subscribers with bad payment previous month.

**Action:** 
       In case of customers with bad payments previous months alert message can be sent to pay the bills in time as they are likely to have bad payment. Also if a customers have a bad payments in a row or frequently then fines may be applied.

### **Query 4:**

**Question:** 
        Do Subscribers with at least one bad payment in their entire life have higher churned rate in comparision to the customers with no bad payment in their entire life?
**Finding:**
        We found out that the Subscribers who have at least one bad payment in their entire life have almost 1.2 times higher churned rate in comparision to those with no any bad payment in their entire life.

**Action:** Bad Payments alone doesn't guarantees that the  money can't be recovered. High Churn is very dangerous to a healthy company so the company must study why there is high churned rate among custoers with at least one bad payment. This may be the cause of the frequent automated message due to bad payment which irritated the customer.


### **Query 5:** 

**Question:** 
        Do Customers who have at least on escalated ticket 
         have highere churned rate in comparision to the customers with zero escalated ticket? (Note: Only taken in account customers who have reach the support team)
**Finding:**
        We found out that the subscribers who have been issued at least one escalated ticket have 1.6 times higher churned rate than the one who have been never issued with escalated ticket.

**Action:** 
       High Churned Rate of the customers with escalted ticket may be the cause that the issue was't solved properly by the high level customer service properly or there was a huge delay in solving these problems. So the company must investigate the issue further more detailly.


### **Query 6:**

**Question:**
         Does the plan type affects the heavy user percentage?

**Finding:**
         We have found out that the user who have the business plan have the highest heavy users which is around 37.62% followed by Postpaid premium at 30.91%, Postpaid Standard at 12.91%, PostPaid basics at 0.0024% and at last is prepaid at 0.00%.

**Action:**
        We know more data consumed means the user is heavy user.
        As the data consumption rate in the PostPaid basics and Standard is lesser so the revenue will be also lesser so the data rate should be affordable for these user plan so that they use maximum data and even with low margin there is a high net revenue.




## **Limitation**

-  DataSet is recorded under a short interval of time so cannot be used for detailed analysis like revenue per cohort year, churned rates per cohort year etc. It only contains telecom information from 2025 to 2026 with many missing months in between.

- Artificial data so the insights may not represent the true characteristics.

