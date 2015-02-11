

select utracct_GLCL_code,
       utracct_percent, 
       utracct_Account_A,
       utracct_Account_B
from   utracct
where  utracct_Account_A = '120500'

/

-----------------------------------------------

select utracct_GLCL_code,
       utracct_Account_A, 
       utracct_Account_B
from utracct
where utracct_GLCL_code in ('RENT','ARMN')
/

select utracct_GLCL_code,
       utracct_Account_A, 
       utracct_Account_B
from utracct
where utracct_GLCL_code = 'ARMN'
/

-----------------------------------------------

and   utracct_Account_A = '120500'
and   utracct_Account_B = '250020'

------------------------------------------------

select utracct_GLCL_code,
       utracct_account_a,
       utracct_account_b 
from utracct
where utracct_account_a = '120500'

