column urrshis_cust_code heading 'Customer'
column urrshis_prem_code heading 'Premise'
column urrshis_styp_code heading 'Service|Type'
column urrshis_serv_num heading 'Serv|Num'
column urrshis_actn_code heading 'Action|Code'
column urrshis_action_date heading 'Action|Date'
column urrshis_charge_date heading 'Charge|Date'
column urrshis_user_id heading 'User|ID'
column urrshis_activity_date heading 'Activity|Date'
column urrshis_srat_code heading 'Rate'
column urrshis_origin heading 'Origin'
column urrshis_invn_code heading 'Inventory|Code'
column urrshis_adv_billing_ind heading 'ADV|Billing|Ind'

set pagesize 69
set linesize 180

select urrshis_cust_code,
       urrshis_prem_code,
       urrshis_serv_num,
       urrshis_styp_code,
       urrshis_charge_date,
       urrshis_activity_date,
       urrshis_srat_code
from urrshis
where urrshis_prem_code = '2661278' and
      urrshis_serv_num = 1
/

order by urrshis_serv_num, urrshis_action_date
order by urrshis_action_date