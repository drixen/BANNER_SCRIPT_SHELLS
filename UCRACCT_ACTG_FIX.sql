update ucracct set UCRACCT_ACTG_CODE = 'RELI'
where UCRACCT_CUST_CODE = '2188895'
and   UCRACCT_PREM_CODE = '2222527';
commit;


----------------------------------------------------

select ucracct_cust_code "Customer",
       ucracct_prem_code "Premise",
       UCRACCT_ACTG_CODE "Account!Code"
from ucracct
where ucracct_cust_code = 6293660
and   ucracct_prem_code = '4587192'
/

----------------------------------------------------

select ucracct_cust_code "Customer",
       ucracct_prem_code "Premise",
       UCRACCT_ACTG_CODE "Account!Code"
from ucracct
where ucracct_ACTG_code is NULL
/

-----------------------------------------------------

update ucracct set UCRACCT_ACTG_CODE = 'RELI'
where UCRACCT_ACTG_CODE is NULL
/

---------------Master Acct Ind Fix-------------------

update ucracct set UCRACCT_MBIL_LINK_IND = NULL,
                   ucracct_MBIL_ACTN_IND = NULL      
where ucracct_cust_code = 5770505
and   ucracct_prem_code = '4494709'
/

---------------Master Acct Ind Fix-------------------

update ucracct set UCRACCT_MBIL_LINK_IND = 'N',
                   ucracct_MBIL_ACTN_IND = 'J'      
where ucracct_cust_code = 5770505
and   ucracct_prem_code = '4494709'
/