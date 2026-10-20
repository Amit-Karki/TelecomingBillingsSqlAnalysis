CREATE TABLE subscribers (
    subscriber_id          VARCHAR(20),
    signup_date            DATE,
    tenure_months          INTEGER,
    age                    INTEGER,
    gender                 VARCHAR(20),
    state                  VARCHAR(50),
    area_type              VARCHAR(30),
    plan_type              VARCHAR(50),
    contract_months        INTEGER,
    monthly_charge_usd     NUMERIC(10,2),
    device_type            VARCHAR(50),
    device_age_months      INTEGER,
    payment_method         VARCHAR(50),
    has_family_plan        BOOLEAN,
    num_lines              INTEGER,
    has_internet           BOOLEAN,
    has_streaming_bundle   BOOLEAN,
    has_device_protection  BOOLEAN,
    acquisition_channel    VARCHAR(50)
);

CREATE TABLE churn_labels (
    subscriber_id            VARCHAR(20),
    churned                  BOOLEAN,
    churn_date               DATE,
    churn_reason             VARCHAR(100),
    churn_probability_score  NUMERIC(6,5)
);

CREATE TABLE support_tickets (
    ticket_id              VARCHAR(20),
    subscriber_id          VARCHAR(20),
    ticket_date            DATE,
    issue_type             VARCHAR(50),
    channel                VARCHAR(30),
    resolution_hours       NUMERIC(8,2),
    customer_satisfaction  SMALLINT,
    escalated              BOOLEAN
);

CREATE TABLE usage_logs (
    subscriber_id        VARCHAR(20),
    year_month           VARCHAR(7),
    data_used_gb         NUMERIC(10,2),
    voice_minutes        NUMERIC(10,2),
    sms_count            INTEGER,
    num_calls            INTEGER,
    num_data_sessions    INTEGER,
    intl_minutes         NUMERIC(10,2),
    roaming_minutes      NUMERIC(10,2),
    data_overage_gb      NUMERIC(10,2)
);

CREATE TABLE billing (
    subscriber_id      VARCHAR(20),
    year_month         VARCHAR(7),
    base_charge_usd    NUMERIC(10,2),
    data_overage_usd   NUMERIC(10,2),
    intl_roaming_usd   NUMERIC(10,2),
    tax_usd            NUMERIC(10,2),
    late_fee_usd       NUMERIC(10,2),
    total_billed_usd   NUMERIC(10,2),
    payment_status     VARCHAR(30),
    days_to_payment    INTEGER
);