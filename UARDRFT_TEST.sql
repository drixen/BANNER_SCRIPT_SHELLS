Select count(*) from uimsmgr.uardrft
 where trunc(UARDRFT.UARDRFT_HOLD_UNTIL_DATE) = to_date('17-Jul-2008','dd-Mon-yyyy')



  If count = 0 then file should be empty 

----List DRAFT records for specific acct--------------------------

Select * from uardrft
 where uardrft_cust_code = 5418504
 and   uardrft_prem_code = '2225148'