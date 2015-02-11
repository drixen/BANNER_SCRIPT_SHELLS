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
where ucrserv_user_ID = 'DRIXEN'
and   ucrserv_activity_date between '01-jan-2014' and '31-dec-2014'

select * from  ucrserv
where ucrserv_user_ID = 'UEADMIN'
and   ucrserv_activity_date between '01-jan-2014' and '31-dec-2014'



-- and ucrserv_activity_date = to_date('17-may-2006','dd-MON-yyyy'),


-------------------------------------------------------------------------



update ucrserv
set ucrserv_cust_code = 5390127
where ucrserv_prem_code = '4104265'
and ucrserv_cust_code = 5357496
and ucrserv_num = 2
/