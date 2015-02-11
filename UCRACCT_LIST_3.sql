column ucracct_cust_code heading 'Customer'
column ucracct_Prem_code heading 'Premise'
column ucracct_status_code heading 'Status'
column ucracct_cycl_code heading 'Cycle'
column ucracct_user_ID heading 'User|ID'
column ucracct_activity_date heading 'Date|Created'

set pagesize 1000
set linesize 80

select ucracct_cust_code,
       ucracct_prem_code, 
       ucracct_status_ind,
       ucracct_cycl_code,
       ucracct_user_id,
       UCRACCT_ACTIVITY_DATE
from   ucracct
where  ucracct_cycl_code = 'M1'
and    ucracct_status_ind = 'A'
/


---------------------------------------------

select ucracct_cust_code,
       ucracct_prem_code, 
       ucracct_status_ind,
       ucracct_cycl_code,
       ucracct_user_id,
       UCRACCT_ACTIVITY_DATE
from   ucracct
where  ucracct_cycl_code = 'M5'
and    ucracct_status_ind = 'A'
and    ucracct_paccp_cc_expiry_date is not null

------------------------------------------

select ucracct_cust_code,
       ucracct_prem_code, 
       ucracct_status_ind,
       ucracct_cycl_code,
       ucracct_user_id,
       UCRACCT_ACTIVITY_DATE,
	   ucracct_cc_code,
	   ucracct_cc_name,
	   ucracct_cc_num,
	   ucracct_last_name_cc,
	   ucracct_first_name_cc,
	   ucracct_paccp_st_date
	   ucracct_paccp_status,
	   ucracct_paccp_ind
from   ucracct
where  ucracct_status_ind = 'A'
and    ucracct_paccp_IND = = 'Y'
and    ucracct_cc_expiry_date is not null

----------------------------------------------

column ucracct_cust_code heading 'Customer'
column ucracct_Prem_code heading 'Premise'
column ucracct_status_code heading 'Status'
column ucracct_cycl_code heading 'Cycle'
column ucracct_user_ID heading 'User|ID'
column ucracct_activity_date heading 'Date|Created'

set pagesize 1000
set linesize 80

select ucracct_cust_code,
       ucracct_prem_code, 
       ucracct_status_ind,
       ucracct_cycl_code,
       ucracct_user_id,
       UCRACCT_ACTIVITY_DATE
from   ucracct
where  ucracct_cust_code = '3092990'
and    ucracct_prem_code = '3145368'
/

--------------------------------------------

select * from uabpyar
where uabpyar_status = 'A'

---------------------------------------------

and    ucracct_draft_acct_status NOT IN ('A','C','I')
and    ucracct_draft_acct_status = 'A'
and    ucracct_draft_acct_status NOT IN ('A','C')
and    ucracct_draft_acct_status NOT IN ('A','C','I')

where  ucracct_cycl_code = 'MERR'
order by ucracct_prem_code

and    ucracct_status_ind = 'A'
and    ucrserv_prem_code = ucracct_prem_code
and    ucrserv_charge_frequency = 4
and    ucrserv_charge_start_month = 2
and    ucrserv_offset_months <> 0
 and 
       ucracct_status_ind = 'A'

column ubracex_excep_num heading 'Exception'

set pagesize 69 
set linesize 80

select count(*), ucracct_cycl_code
from ucracct
where ucracct_cycl_code is not null
group by ucracct_cycl_code 
/

select * from ucracct
where ucracct_cycl_code = 'PACC'
and   ucracct_paccp_status = 'N'

select * from ucracct
where ucracct_cust_code = 2278251
and   ucracct_prem_code = '2277688'
