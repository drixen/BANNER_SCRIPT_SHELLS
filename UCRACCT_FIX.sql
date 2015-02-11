update ucracct
set UCRACCT_ESTABLISHED_DATE = to_date('01-may-2001','dd-MON-yyyy')
where UCRACCT_CUST_CODE = 5151256
and   UCRACCT_PREM_CODE = '2368874'
/

set UCRACCT_ESTABLISHED_DATE = to_date('01-may-2001','dd-MON-yyyy')

update ucracct
set ucracct.UCRACCT_ESTABLISHED_DATE = to_date('01-may-2001','dd-MON-yyyy')
where ucracct.UCRACCT_CUST_CODE = 5151256
and ucracct.UCRACCT_PREM_CODE = '2368874';

select ucracct_cust_code "Customer",
       ucracct_prem_code "Premise",
       UCRACCT_ESTABLISHED_DATE "Established Date"
from ucracct
where ucracct_cust_code = 5151256
and   ucracct_prem_code = '2368874';