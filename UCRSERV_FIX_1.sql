column ucrserv_prem_code heading 'Premise'
column ucrserv_cust_code heading 'Customer'
column ucrserv_num heading 'Service'
column ucrserv_srat_eff_date heading 'Rate Effective|Date'
column ucrserv_activity_date heading 'Activity|Date'  
column ucrserv_user_id heading 'User|ID'

set linesize 80
set pagesize 69

select ucrserv_prem_code,
       ucrserv_cust_code,
       ucrserv_num,
       ucrserv_srat_eff_date,
       ucrserv_activity_date,
       ucrserv_user_id,
       ucrserv_offset_months
from  ucrserv
where ucrserv_prem_code = 4030114
and ucrserv_num = 3
/

-----------------------------------------------------------------

select * from  ucrserv
where ucrserv_user_ID = 'RRAMPERS'
and ucrserv_activity_date = to_date('17-may-2006','dd-MON-yyyy'),
/

select * from  ucrserv
where ucrserv_prem_code = '4771568'
and ucrserv_num = 1

-------------------------------------------------------------------------

update ucrserv
set ucrserv_srat_eff_date = to_date('01-jan-1999','dd-mon-yyyy')
where ucrserv_prem_code = 3067794
and ucrserv_num = 1
/

set ucrserv_srat_eff_date = to_date('01-jan-2001','dd-mon-yyyy')
set ucrserv_srat_eff_date = NULL

update ucrserv
set ucrserv_cust_code = NULL
where ucrserv_prem_code = '2576207'
and ucrserv_num = 1
/

set ucrserv_cust_code = 5383246

update ucrserv
set ucrserv_cust_code = 5390127
where ucrserv_prem_code = '4104265'
and ucrserv_cust_code = 5357496
and ucrserv_num = 2
/