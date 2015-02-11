
--The nexe script checks for an invalid carriage control characters embedded within customer name or email address

-------------------------------------------------------------------------------------------------------------------

SELECT UCBCUST_CUST_CODE, UCBCUST_LAST_NAME from UCBCUST  where UCBCUST_LAST_NAME like '%'||chr(10)||'%' or UCBCUST_LAST_NAME like '%'||chr(13)||'%'
union
  SELECT UCBCUST_CUST_CODE, UCBCUST_SPOUSES_NAME from UCBCUST u  where U.UCBCUST_SPOUSES_NAME like '%'||chr(10)||'%' or UCBCUST_SPOUSES_NAME like '%'||chr(13)||'%'
  union
    SELECT UCBCUST_CUST_CODE, UCBCUST_EMAIL_ADDR from UCBCUST u  where U.UCBCUST_EMAIL_ADDR like '%'||chr(10)||'%' or UCBCUST_EMAIL_ADDR like '%'||chr(13)||'%' 

