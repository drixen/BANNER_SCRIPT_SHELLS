
column UBBBHST_cust_code heading 'Customer'
column UBBBHST_prem_code heading 'Premise'
column UBBBHST_ACCOUNT_STATUS_IND heading 'Acct|ST'

select UBBBHST_CUST_CODE,
       UBBBHST_PREM_CODE
from  UBBBHST
where UBBBHST_cust_code = '5799218'
and   UBBBHST_prem_code = '2678370'
/

---------------------------------------------------

select * from UBBBHST
where UBBBHST_cust_code = '5799218'
and   UBBBHST_prem_code = '2678370'
/
