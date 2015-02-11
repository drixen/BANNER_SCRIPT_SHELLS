
select utracct_GLCL_code,
       utracct_percent, 
       utracct_Account_A,
       utracct_Account_B
from   utracct
where  utracct_Account_A = '100150'

/


select utracct_GLCL_code,
       utracct_percent, 
       utracct_Account_A,
       utracct_Account_B
from   utracct
where  utracct_Account_A = '120500'

select * from utracct 
-----------------------------------------------

select utracct_GLCL_code,
       utracct_Account_A, 
       utracct_Account_B
from utracct
where utracct_GLCL_code in ('LCLC','ARMN')
/

------------------------------------------------

select utracct_GLCL_code,
       utracct_percent, 
       utracct_Account_A, 
       utracct_Account_B
from   utracct
where  utracct_GLCL_code = 'LCLC'
/

select utracct_GLCL_code,
       utracct_percent, 
       utracct_Account_A,
       utracct_Account_B
from   utracct
where  utracct_Account_A = '120500         AR: BILLED REVENUE - BANNER'

-----------------------------------------------

and   utracct_Account_A = '120500'
and   utracct_Account_B = '250020'

------------------------------------------------

select utracct_GLCL_code,
       utracct_account_A,
       utracct_account_B 
from utracct
where utracct_account_A = '100160'

select count(utracct_glcl_code)
from utracct
where utracct_glcl_code is not null

select distinct utracct_account_b
from utracct

