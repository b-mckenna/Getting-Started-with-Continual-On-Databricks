create schema if not exists kkbox;

use database kkbox;

create TABLE if not exists members (
	MSNO VARCHAR(16777216),
	CITY NUMERIC(38,0),
	BD NUMERIC(38,0),
	GENDER VARCHAR(16777216),
	REGISTERED_VIA NUMERIC(38,0),
	REGISTRATION_INIT_TIME NUMERIC(38,0)
) USING csv LOCATION '/tmp/databricks_demo/members_v3.csv';

CREATE TABLE if not exists TRANSACTIONS (
	MSNO VARCHAR(16777216),
	PAYMENT_METHOD_ID NUMERIC(38,0),
	PAYMENT_PLAN_DAYS NUMERIC(38,0),
	PLAN_LIST_PRICE NUMERIC(38,0),
	ACTUAL_AMOUNT_PAID NUMERIC(38,0),
	IS_AUTO_RENEW NUMERIC(38,0),
	TRANSACTION_DATE NUMERIC(38,0),
	MEMBERSHIP_EXPIRE_DATE NUMERIC(38,0),
	IS_CANCEL NUMERIC(38,0)
) USING csv LOCATION '/tmp/databricks_demo/transactions.csv'; 

CREATE TABLE if not exists USER_LOGS (
	MSNO VARCHAR(16777216),
	DATE NUMERIC(38,0),
	NUM_25 NUMERIC(38,0),
	NUM_50 NUMERIC(38,0),
	NUM_75 NUMERIC(38,0),
	NUM_985 NUMERIC(38,0),
	NUM_100 NUMERIC(38,0),
	NUM_UNQ NUMERIC(38,0),
	TOTAL_SECS FLOAT
) USING csv LOCATION '/tmp/databricks_demo/user_logs_v2.csv';