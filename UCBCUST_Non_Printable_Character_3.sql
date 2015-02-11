
--Trying to list the user ID along with the activity date of the entry.
--This script is to list the fields that contain a non-printable character embedded within the data. 

---------------------------------------------------


SELECT UCBCUST_CUST_CODE, UCBCUST_LAST_NAME, ucbcust_user_ID, ucbcust_Activity_date
from UCBCUST
  where UCBCUST_LAST_NAME like '%'||chr(10)||'%' or UCBCUST_LAST_NAME like '%'||chr(13)||'%'
union
  SELECT UCBCUST_CUST_CODE, UCBCUST_SPOUSES_NAME, ucbcust_user_ID, ucbcust_Activity_date
  from UCBCUST u
      where U.UCBCUST_SPOUSES_NAME like '%'||chr(10)||'%' or UCBCUST_SPOUSES_NAME like '%'||chr(13)||'%'
  union
    SELECT UCBCUST_CUST_CODE, UCBCUST_EMAIL_ADDR, ucbcust_user_ID, ucbcust_Activity_date
    from UCBCUST u 
         where U.UCBCUST_EMAIL_ADDR like '%'||chr(10)||'%' or UCBCUST_EMAIL_ADDR like '%'||chr(13)||'%' 

