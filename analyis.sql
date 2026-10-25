create database credit_risk;
use credit_risk;
USE credit_risk;
DROP TABLE IF EXISTS application_train;

CREATE TABLE application_train (
SK_ID_CURR VARCHAR(60), TARGET VARCHAR(60), NAME_CONTRACT_TYPE VARCHAR(60), CODE_GENDER VARCHAR(60), FLAG_OWN_CAR VARCHAR(60), FLAG_OWN_REALTY VARCHAR(60), CNT_CHILDREN VARCHAR(60), AMT_INCOME_TOTAL VARCHAR(60), AMT_CREDIT VARCHAR(60), AMT_ANNUITY VARCHAR(60), AMT_GOODS_PRICE VARCHAR(60), NAME_TYPE_SUITE VARCHAR(60), NAME_INCOME_TYPE VARCHAR(60), NAME_EDUCATION_TYPE VARCHAR(60), NAME_FAMILY_STATUS VARCHAR(60), NAME_HOUSING_TYPE VARCHAR(60), REGION_POPULATION_RELATIVE VARCHAR(60), DAYS_BIRTH VARCHAR(60), DAYS_EMPLOYED VARCHAR(60), DAYS_REGISTRATION VARCHAR(60), DAYS_ID_PUBLISH VARCHAR(60), OWN_CAR_AGE VARCHAR(60), FLAG_MOBIL VARCHAR(60), FLAG_EMP_PHONE VARCHAR(60), FLAG_WORK_PHONE VARCHAR(60), FLAG_CONT_MOBILE VARCHAR(60), FLAG_PHONE VARCHAR(60), FLAG_EMAIL VARCHAR(60), OCCUPATION_TYPE VARCHAR(60), CNT_FAM_MEMBERS VARCHAR(60), REGION_RATING_CLIENT VARCHAR(60), REGION_RATING_CLIENT_W_CITY VARCHAR(60), WEEKDAY_APPR_PROCESS_START VARCHAR(60), HOUR_APPR_PROCESS_START VARCHAR(60), REG_REGION_NOT_LIVE_REGION VARCHAR(60), REG_REGION_NOT_WORK_REGION VARCHAR(60), LIVE_REGION_NOT_WORK_REGION VARCHAR(60), REG_CITY_NOT_LIVE_CITY VARCHAR(60), REG_CITY_NOT_WORK_CITY VARCHAR(60), LIVE_CITY_NOT_WORK_CITY VARCHAR(60), ORGANIZATION_TYPE VARCHAR(60), EXT_SOURCE_1 VARCHAR(60), EXT_SOURCE_2 VARCHAR(60), EXT_SOURCE_3 VARCHAR(60),
APARTMENTS_AVG VARCHAR(60), BASEMENTAREA_AVG VARCHAR(60), YEARS_BEGINEXPLUATATION_AVG VARCHAR(60), YEARS_BUILD_AVG VARCHAR(60), COMMONAREA_AVG VARCHAR(60), ELEVATORS_AVG VARCHAR(60), ENTRANCES_AVG VARCHAR(60), FLOORSMAX_AVG VARCHAR(60), FLOORSMIN_AVG VARCHAR(60), LANDAREA_AVG VARCHAR(60), LIVINGAPARTMENTS_AVG VARCHAR(60), LIVINGAREA_AVG VARCHAR(60), NONLIVINGAPARTMENTS_AVG VARCHAR(60), NONLIVINGAREA_AVG VARCHAR(60),
APARTMENTS_MODE VARCHAR(60), BASEMENTAREA_MODE VARCHAR(60), YEARS_BEGINEXPLUATATION_MODE VARCHAR(60), YEARS_BUILD_MODE VARCHAR(60), COMMONAREA_MODE VARCHAR(60), ELEVATORS_MODE VARCHAR(60), ENTRANCES_MODE VARCHAR(60), FLOORSMAX_MODE VARCHAR(60), FLOORSMIN_MODE VARCHAR(60), LANDAREA_MODE VARCHAR(60), LIVINGAPARTMENTS_MODE VARCHAR(60), LIVINGAREA_MODE VARCHAR(60), NONLIVINGAPARTMENTS_MODE VARCHAR(60), NONLIVINGAREA_MODE VARCHAR(60),
APARTMENTS_MEDI VARCHAR(60), BASEMENTAREA_MEDI VARCHAR(60), YEARS_BEGINEXPLUATATION_MEDI VARCHAR(60), YEARS_BUILD_MEDI VARCHAR(60), COMMONAREA_MEDI VARCHAR(60), ELEVATORS_MEDI VARCHAR(60), ENTRANCES_MEDI VARCHAR(60), FLOORSMAX_MEDI VARCHAR(60), FLOORSMIN_MEDI VARCHAR(60), LANDAREA_MEDI VARCHAR(60), LIVINGAPARTMENTS_MEDI VARCHAR(60), LIVINGAREA_MEDI VARCHAR(60), NONLIVINGAPARTMENTS_MEDI VARCHAR(60), NONLIVINGAREA_MEDI VARCHAR(60),
FONDKAPREMONT_MODE VARCHAR(60), HOUSETYPE_MODE VARCHAR(60), TOTALAREA_MODE VARCHAR(60), WALLSMATERIAL_MODE VARCHAR(60), EMERGENCYSTATE_MODE VARCHAR(60), OBS_30_CNT_SOCIAL_CIRCLE VARCHAR(60), DEF_30_CNT_SOCIAL_CIRCLE VARCHAR(60), OBS_60_CNT_SOCIAL_CIRCLE VARCHAR(60), DEF_60_CNT_SOCIAL_CIRCLE VARCHAR(60), DAYS_LAST_PHONE_CHANGE VARCHAR(60),
FLAG_DOCUMENT_2 VARCHAR(60), FLAG_DOCUMENT_3 VARCHAR(60), FLAG_DOCUMENT_4 VARCHAR(60), FLAG_DOCUMENT_5 VARCHAR(60), FLAG_DOCUMENT_6 VARCHAR(60), FLAG_DOCUMENT_7 VARCHAR(60), FLAG_DOCUMENT_8 VARCHAR(60), FLAG_DOCUMENT_9 VARCHAR(60), FLAG_DOCUMENT_10 VARCHAR(60), FLAG_DOCUMENT_11 VARCHAR(60), FLAG_DOCUMENT_12 VARCHAR(60), FLAG_DOCUMENT_13 VARCHAR(60), FLAG_DOCUMENT_14 VARCHAR(60), FLAG_DOCUMENT_15 VARCHAR(60), FLAG_DOCUMENT_16 VARCHAR(60), FLAG_DOCUMENT_17 VARCHAR(60), FLAG_DOCUMENT_18 VARCHAR(60), FLAG_DOCUMENT_19 VARCHAR(60), FLAG_DOCUMENT_20 VARCHAR(60), FLAG_DOCUMENT_21 VARCHAR(60),
AMT_REQ_CREDIT_BUREAU_HOUR VARCHAR(60), AMT_REQ_CREDIT_BUREAU_DAY VARCHAR(60), AMT_REQ_CREDIT_BUREAU_WEEK VARCHAR(60), AMT_REQ_CREDIT_BUREAU_MON VARCHAR(60), AMT_REQ_CREDIT_BUREAU_QRT VARCHAR(60), AMT_REQ_CREDIT_BUREAU_YEAR VARCHAR(60)
);
set global local_infile = 1;
LOAD DATA local INFILE "C:/Users/saiaa/OneDrive/Desktop/CREDIT_RISK/DATA/application_train.csv" into table application_train fields terminated by ',' enclosed by'"' lines terminated by'\n' ignore 1 rows;
USE credit_risk;

CREATE TABLE bureau (
SK_ID_CURR VARCHAR(60), SK_ID_BUREAU VARCHAR(60), CREDIT_ACTIVE VARCHAR(60), CREDIT_CURRENCY VARCHAR(60), DAYS_CREDIT VARCHAR(60), CREDIT_DAY_OVERDUE VARCHAR(60), DAYS_CREDIT_ENDDATE VARCHAR(60), DAYS_ENDDATE_FACT VARCHAR(60), AMT_CREDIT_MAX_OVERDUE VARCHAR(60), CNT_CREDIT_PROLONG VARCHAR(60), AMT_CREDIT_SUM VARCHAR(60), AMT_CREDIT_SUM_DEBT VARCHAR(60), AMT_CREDIT_SUM_LIMIT VARCHAR(60), AMT_CREDIT_SUM_OVERDUE VARCHAR(60), CREDIT_TYPE VARCHAR(60), DAYS_CREDIT_UPDATE VARCHAR(60), AMT_ANNUITY VARCHAR(60)
);
LOAD DATA LOCAL INFILE "C:/Users/saiaa/OneDrive/Desktop/CREDIT_RISK/DATA/bureau.csv" into table bureau fields terminated by ','enclosed by'"'lines terminated by'\n' ignore 1 rows;
select count(*) from bureau;


CREATE TABLE previous_application (
SK_ID_PREV VARCHAR(60), SK_ID_CURR VARCHAR(60), NAME_CONTRACT_TYPE VARCHAR(60), AMT_ANNUITY VARCHAR(60), AMT_APPLICATION VARCHAR(60), AMT_CREDIT VARCHAR(60), AMT_DOWN_PAYMENT VARCHAR(60), AMT_GOODS_PRICE VARCHAR(60), WEEKDAY_APPR_PROCESS_START VARCHAR(60), HOUR_APPR_PROCESS_START VARCHAR(60), FLAG_LAST_APPL_PER_CONTRACT VARCHAR(60), NFLAG_LAST_APPL_IN_DAY VARCHAR(60), RATE_DOWN_PAYMENT VARCHAR(60), RATE_INTEREST_PRIMARY VARCHAR(60), RATE_INTEREST_PRIVILEGED VARCHAR(60), NAME_CASH_LOAN_PURPOSE VARCHAR(60), NAME_CONTRACT_STATUS VARCHAR(60), DAYS_DECISION VARCHAR(60), NAME_PAYMENT_TYPE VARCHAR(60), CODE_REJECT_REASON VARCHAR(60), NAME_TYPE_SUITE VARCHAR(60), NAME_CLIENT_TYPE VARCHAR(60), NAME_GOODS_CATEGORY VARCHAR(60), NAME_PORTFOLIO VARCHAR(60), NAME_PRODUCT_TYPE VARCHAR(60), CHANNEL_TYPE VARCHAR(60), SELLERPLACE_AREA VARCHAR(60), NAME_SELLER_INDUSTRY VARCHAR(60), CNT_PAYMENT VARCHAR(60), NAME_YIELD_GROUP VARCHAR(60), PRODUCT_COMBINATION VARCHAR(60), DAYS_FIRST_DRAWING VARCHAR(60), DAYS_FIRST_DUE VARCHAR(60), DAYS_LAST_DUE_1ST_VERSION VARCHAR(60), DAYS_LAST_DUE VARCHAR(60), DAYS_TERMINATION VARCHAR(60), NFLAG_INSURED_ON_APPROVAL VARCHAR(60)
);
LOAD DATA LOCAL INFILE"C:/Users/saiaa/OneDrive/Desktop/CREDIT_RISK/DATA/previous_application.csv" INTO table previous_application fields terminated by',' enclosed by'"' lines terminated by '\n' ignore 1 rows;
use credit_risk;
SELECT avg(ext_source_1) from application_train;
SELECT avg(CAST(nullif(EXT_SOURCE_1, '') AS DECIMAL(10,6))) FROM APPLICATION_TRAIN;
SELECT COUNT(*)FROM BUREAU;
SELECT count(*) AS TOTAL,SUM(EXT_SOURCE_1= '') AS NULLIF FROM APPLICATION_TRAIN;
drop table app_clean;
create table app_clean as
select cast(SK_ID_CURR AS unsigned) AS_ID_CURR,cast(target as unsigned) as target ,cast(nullif(amt_income_total,'') as decimal(14,2)) as amt_income_total from application_train ;
  select count(*) as total,avg(target) as default_rate from app_clean;
  drop table if exists app_clean;
  create table app_clean as
  select cast(sk_id_curr as unsigned) as sk_id_curr,
  cast(target as unsigned)as target,
  name_contract_type,
  code_gender,
  flag_own_car,
  flag_own_realty,
  name_education_type,
  cast(nullif(amt_income_total,'') as decimal(14,2)) as amt_income_total
  from application_train;
  select code_gender ,
     COUNT(*) as customers,
     round(avg(target)*100,2) as default_pct
from app_clean
group by code_gender;
SELECT name_education_type,
count(*) as customers,
round(avg(target)*100,2)as default_pct
from app_clean
group by name_education_type
order by default_pct desc;
drop table if exists app_clean;
create table app_clean as 
select
cast(sk_id_curr as unsigned) as sk_id_curr,
cast(target as unsigned) as target,
name_contract_type,
code_gender,
flag_own_car,
flag_own_realty,
cast(cnt_children as signed) as cnt_children,
cast(nullif(amt_income_total,'')as decimal(14,2))as amt_income_total,
cast(nullif(amt_credit,'') as decimal(14,2)) as amt_credit,
cast(nullif(amt_annuity,'') as decimal(14,2)) as amt_annuity,
cast(nullif(amt_goods_price,'')as decimal(14,2)) as amt_goods_price,
name_income_type,
name_education_type,
name_family_status,
name_housing_type,
occupation_type,
cast(days_birth as signed) as days_birth,
cast(days_employed as signed) as days_employed,
cast(nullif(ext_source_1,'')as decimal(10,6)) as ext_source_1,
cast(nullif(ext_source_2,'')as decimal(10,6)) as ext_source_2,
cast(nullif(ext_source_3,'')as decimal(10,6)) as ext_source_3
from application_train;
select sk_id_curr,count(*) as loans from bureau group by sk_id_curr order by loans desc limit 5;
show columns from app_clean;
show columns from bureau;
use  credit_risk;
drop table bureau_agg;
create table bureau_agg as
select
cast(sk_id_curr as unsigned) as sk_id_curr,
count(*) as bureau_loans,
sum(CREDIT_ACTIVE = 'active') as active_loans,
sum(cast(nullif(AMT_CREDIT_SUM_DEBT,'') as decimal(18,2))) as total_debt,
sum(cast(nullif(AMT_CREDIT_SUM_OVERDUE,'') as decimal(18,2))) as total_overdue,
max(cast(credit_day_overdue as unsigned)) as max_days_overdue

from bureau
group by sk_id_curr;
select count(*) from bureau_agg;
select*from bureau_agg limit 5;
show tables from credit_risk;
show columns from previous_application;
drop table prev_agg;
create table prev_agg as
select
count(*) as prev_app,
cast(sk_id_curr as unsigned) as sk_id_curr,
sum(name_contract_status = 'approved') as prev_approved,
sum(name_contract_status = 'refused') as prev_refused,
avg(cast(nullif(amt_credit,'') as decimal(18,2))) as prev_avg_credit
from previous_application
group by sk_id_curr;
select count(*) from bureau_agg;
select*from prev_agg limit 5;
alter table app_clean add index idx_app(sk_id_curr);
alter table bureau_agg add index idx_bur (sk_id_curr);
alter table prev_agg add index idx_prev(sk_id_curr);

create table customer_features as select
a.*,
round(-a.days_birth/365.25,1) as age_years,
case when a.days_employed = 365243 then null
else round(a.days_employed/ 365.25,1) end as years_employed,
round(a.amt_credit/a.amt_income_total,2) as credit_income_ratio,
round(a.amt_annuity/a.amt_income_total ,2) as annuity_income_ratio,
coalesce(b.bureau_loans,0) as bureau_loans,
coalesce(b.active_loans,0) as acitve_loans,
coalesce(b.total_debt,0) as total_debt,
coalesce(b.total_overdue,0) as total_overdue,
coalesce(b.max_days_overdue,0) as max_days_overdue,
coalesce(p.prev_apps,0) as prev_apps,
coalesce(p.prev_approved,0) as prev_approved,
coalesce(p.prev_refused,0) as prev_refused
from app_clean a
left join bureau_agg b on a.sk_id_curr = b.sk_id_curr
left join prev_agg p on a.sk_id_curr = p.sk_id_curr;
show warnings;
alter table prev_agg rename column prev_app to prev_apps;
select count(*) from customer_features;
select sk_id_curr,target,age_years,years_employed,acitve_loans,prev_apps from customer_features limit 10;
alter table customer_features rename column acitve_loans to active_loans;
select 
 case when age_years < 25 then '1. under25'
 when age_years < 35 then '2.25-34'
 when age_years < 45 then '3.35-44'
 when age_years < 55 then '4.45-54'
 else'5.55+' end as age_band,
 count(*) as customers,
 round(avg(target)*100,2) as default_pct
 from customer_features
 group by age_band
 order by age_band;
 select
 case when prev_refused = 0 then' no earlier refusal'
 else'has earlier refusal' end as refusal_status,
 count(*) as customers,
 round(avg(target)*100,2) as default_pct
 from customer_features
 group by refusal_status;
 select income_quartile,
 count(*) as customers,
 min(amt_income_total) as min_income,
 max(amt_income_total) as max_income,
 round(avg(target)*100,2) as default_pct
 from(
 select target,amt_income_total,
 ntile(4) over (order by amt_income_total) as income_quartile
 from app_clean
 )t
 group by income_quartile
 order by income_quartile;
 select occupation_type,
 count(*) as customers,
 round(avg(target)*100,2) as default_pct
 from app_clean
 where occupation_type <>''
 group by occupation_type
 having count(*) > 1000
 order by default_pct desc;
 select 
 case when credit_income_ratio < 2 then '1.below 2x'
 when credit_income_ratio < 4 then '2.2x to 4x'
  when credit_income_ratio < 6 then '3.4x to 6x'
  else'4.6x and above' end ratio_bucket,
  count(*) as customers,
  round(avg(target)*100,2) as default_pct
  from customer_features
  where credit_income_ratio is not null
  group by ratio_bucket
  order by ratio_bucket;
 
