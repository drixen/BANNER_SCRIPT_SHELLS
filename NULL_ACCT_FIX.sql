update ucracct set UCRACCT_ACTG_CODE = 'UERT' where UCRACCT_CUST_CODE = 'CCCCCCC' and UCRACCT_PREM_CODE = 'PPPPPPP'
/

----------------------------------------------------

select ucracct_cust_code "Customer",
       ucracct_prem_code "Premise",
       UCRACCT_ESTABLISHED_DATE "Established Date"
from ucracct
where ucracct_cust_code = 5151256
and   ucracct_prem_code = '2368874';