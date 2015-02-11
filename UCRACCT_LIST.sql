column ucracct_cust_code heading 'Customer'
column ucracct_prem_code heading 'Premise'
column ucracct_status_ind heading 'Account|Status'
column ucracct_cycl_code heading 'Billing|Cycle'


set pagesize 100
set linesize 80

spool Andrew1

select ucracct_cust_code,
       ucracct_prem_code,
       ucracct_status_ind,
       ucracct_cycl_code
from   ucracct
where  ucracct_status_ind = 'A'
and    rownum < 51
/

spool off


----------List accts for POP up EBill Message------------

select ucracct_cust_code,
       ucracct_prem_code,
       ucracct_BILL_pres_type
from   ucracct
where  ucracct_status_ind = 'A'
and    ucracct_BILL_PRES_TYPE IN ('E', 'L','R','O')
--and    rownum < 11
/



----------List accts for Bill Presentment change------------

select ucracct_cust_code,
       ucracct_prem_code,
       ucracct_BILL_pres_type
from   ucracct
where  ucracct_status_ind = 'A'
and    ucracct_BILL_PRES_TYPE = 'P'
and    rownum < 11
/


----------List any Credit card acct------------

select ucracct_cust_code,
       ucracct_prem_code,
       ucracct_status_ind,
       ucracct_cycl_code
from   ucracct
where  ucracct_status_ind = 'A'
and    ucracct_PACCP_status = 'A'
and    rownum < 51
/