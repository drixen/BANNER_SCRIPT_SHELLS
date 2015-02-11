update ucracct set UCRACCT_cycl_CODE = 'RUTH' where UCRACCT_CUST_CODE = '2188895' and   UCRACCT_PREM_CODE = '2222527'




commit;


----------------------------------------------------

select ucracct_cust_code "Customer",
       ucracct_prem_code "Premise",
       UCRACCT_ACTG_CODE "Account!Code"
from ucracct
where ucracct_cust_code = 6293660
and   ucracct_prem_code = '4587192'
/

