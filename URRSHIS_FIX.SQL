update urrshis
set urrshis_action_date = to_date('30-OCT-2011','dd-MON-yyyy')
where urrshis_serv_num = 1 and
      urrshis_PREM_CODE = '4867102' and
      urrshis_actn_code = 'IN' and
      urrshis_srat_code = 'WH00' and
      to_char(urrshis_action_date,'dd-mon-yyyy') = '31-OCT-2011'
/

------------------Correct Action Date------------

update urrshis
set urrshis_action_date = to_date('25-APR-2009','dd-MON-yyyy')
where urrshis_serv_num = 1 and
      urrshis_PREM_CODE = '4789486' and
      urrshis_actn_code = 'OUT' and
      urrshis_invn_code = '7377981' and
      urrshis_srat_code = 'LVEL' and
      to_char(urrshis_action_date,'dd-mon-yyyy') = '25-apr-2012'

---------------------------------------

urrshis_cust_code = 5151861 and
 urrshis_cust_code is NULL
urrshis_action_date = to_date('17-AUG-2001','dd-MON-yyyy')

set pagesize 100
set linesize 180

select urrshis_action_date,
       urrshis_CUST_CODE, 
       urrshis_PREM_CODE,
       urrshis_serv_num,
       urrshis_actn_code,
       urrshis_charge_date,
       urrshis_invn_code
from urrshis
where urrshis_PREM_CODE = '3146195' and
      urrshis_serv_num = 1
order by urrshis_action_date
/  
	
urrshis_CUST_CODE = 0 and

update urrshis
set urrshis_invn_code = 6686984
where urrshis_serv_num = 2 
and   urrshis_PREM_CODE = '4502251' 
and   urrshis_actn_code = 'IN'
/

update urrshis
set urrshis_action_date = to_date('03-apr-2009','dd-MON-yyyy')
where urrshis_serv_num = 3 
and   urrshis_action_date = to_date('03-apr-2019','dd-MON-yyyy')
and   urrshis_PREM_CODE = '4516027' 
and   urrshis_cust_code = 6285579
and   urrshis_actn_code = 'OUT'
/

and urrshis_action_date = to_date('02-JAN-2000','dd-MON-yyyy')
urrshis_cust_code = 0 and
and   urrshis_INVN_CODE = 6843239


update urrshis
set urrshis_chrg_calc_num = '1234567'
where urrshis_serv_num = 1 
and   urrshis_cust_code = '3164214'
and   urrshis_PREM_CODE = '3206840' 
and   urrshis_actn_code = 'IN'
/

-----------------

update urrshis
set urrshis_cust_code = '2149257'
where urrshis_serv_num = 1 
and   urrshis_cust_code = '7281921'
and   urrshis_PREM_CODE = '4867102' 
and   urrshis_actn_code = 'IN'

update urrshis
set urrshis_action_date = to_char(urrshis_action_date,'17-may-2011','1:15')
where urrshis_serv_num = 1 
and   urrshis_cust_code = '5096217'
and   urrshis_PREM_CODE = '2008246' 
and   urrshis_actn_code = 'IN'


select urrshis_prem_code,
       urrshis_cust_code,
       urrshis_action_date, to_char(urrshis_action_date,'HH:MI:SS')
from urrshis
where urrshis_prem_code = '2008246'
and   urrshis_cust_code = 5096217
and   urrshis_actn_code = 'OUT'
and   urrshis_serv_num  = 1
and   to_char(urrshis_action_date,'dd-mon-yyyy') = '17-may-2011'

