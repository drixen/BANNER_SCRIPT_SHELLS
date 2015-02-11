update ucracct
set ucracct.UCRACCT_ESTABLISHED_DATE = to_date('30-jun-2002','dd-MON-yyyy')
where ucracct.UCRACCT_CUST_CODE = 2021843
and ucracct.UCRACCT_PREM_CODE = '2364027'



select ucracct_prem_code,
       ucracct_cust_code,
       ucracct_status_ind,
       ucracct_cycl_code,
       ucracct_established_date,
       ucracct_activity_date,
       ucracct_user_id,
       ucracct_acct_code
from ucracct
where ucracct_prem_code = '4080612'
order by ucracct_established_date
/


where ucracct_prem_code = '2364027'

where ucracct_cust_code = '5227830'

   * * * These following scripts list Banner G/L Accounts
   * * * Used for new account set ups or modifications to 
   * * * Banner account descriptions where positioning may be a
   * * * concern.  


select distinct utracct_account_B
from utracct


select distinct utracct_account_A
from utracct