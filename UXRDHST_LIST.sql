

------------  This next script list Credit hit info


set pagesize 69
set linesize 180

select uxrdhst_cust_code,
       uxrdhst_prem_code,
       uxrdhst_serv_num,
       uxrdhst_seq_num,
       uxrdhst_action_type_IND,
       uxrdhst_action_code,
       uxrdhst_activity_date,
       uxrdhst_action_date,
       uxrdhst_svco_code
from   uxrdhst
where uxrdhst_action_date = to_date('16-apr-2009','dd-MON-yyyy')
and   uxrdhst_action_code = 'A045'
/



--------------------------------------------------------------------
