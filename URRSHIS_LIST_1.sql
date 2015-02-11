Column urrshis_cust_code heading 'Customer'
column urrshis_prem_code heading 'Premise'
column urrshis_serv_num  heading 'Service'
column ucrserv_status_ind heading 'Status'

set pagesize 1000
set linesize 180

Select urrshis_cust_code,
       urrshis_prem_code,
       urrshis_serv_num,
       ucrserv_status_ind
from urrshis, ucrserv
where urrshis_action_date is not NULL
and   urrshis_charge_date is NULL
and   urrshis_prem_code = ucrserv_prem_code
and   urrshis_serv_num = ucrserv_num
and   ucrserv_status_ind = 'A'
/

Select urrshis_cust_code,
       urrshis_prem_code,
       urrshis_serv_num
from urrshis
where urrshis_action_date is not NULL
and   urrshis_charge_date is NULL
/