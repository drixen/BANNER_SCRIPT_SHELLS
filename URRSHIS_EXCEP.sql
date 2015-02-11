column urrshis_cust_code heading 'Customer'
column urrshis_prem_code heading 'Premise'
column urrshis_serv_num  heading 'Service'
column urrshis_actn_code heading 'Actn|Code'
column urrshis_action_date heading 'Action|Date'
column urrshis_charge_date heading 'Charge|Date'
column ucrserv_date_inactive heading 'Turned|Off'
column ubracex_excep_num heading 'Exception'

set pagesize 100
set linesize 150

select urrshis_cust_code, 
       urrshis_prem_code,  
       urrshis_serv_num,
       urrshis_actn_code,
       urrshis_action_date,
       ucrserv_date_inactive,
       urrshis_charge_date,
       ubracex_excep_num
from  urrshis,ubracex,ucrserv
where urrshis_prem_code = ubracex_prem_code and
      urrshis_cust_code = ubracex_cust_code and
      urrshis_prem_code = ucrserv_prem_code and
      urrshis_serv_num  = ubracex_serv_num and
      urrshis_serv_num = ucrserv_num and
      ubracex_excep_num = 96
/


order by ubracex_activity_date
order by urrshis_activity_date