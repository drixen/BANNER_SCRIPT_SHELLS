--Special listing for Norma Locke --------------------

select ucbcust_cust_code     "Cust #",
       ucbprem_code          "Prem #",
       ucracct_status_ind    "Account Status",   
       ucbcust_first_name    "First",
       ucbcust_last_name     "Last", 
       ucbcust_activity_date "Date",
       ucbcust_user_id       "User",
       ucbcust_start_date    "Start|Date"
from ucbcust, ucbprem, UCRACCT
where ucbcust_cust_code  = 2362400 
and   UCBCUST_CUST_code       = ucracct_cust_code
and   UCRACCT_PREM_code  = UCBPREM_CODE
and   UCRACCT_STATUS_IND = 'A'


--------------------------------------------------------


set linesize 180
set pagesize 1000

select ucbcust_cust_code     "Cust #",
       ucbcust_first_name    "First",
       ucbcust_last_name     "Last", 
       ucbcust_activity_date "Date",
       ucbcust_user_id       "User"
from ucbcust
where ucbcust_cust_code = 5071652 
ucbcust_last_name = 'SMITH'
and   ucbcust_first_name = 'DENNIS'
order by ucbcust_activity_date
/

---------------------------------------------

select ucbcust_cust_code     "Cust #",
       ucbcust_first_name    "First",
       ucbcust_last_name     "Last", 
       ucbcust_activity_date "Date",
       ucbcust_user_id       "User",
       ucbcust_start_date    "Start|Date"
from ucbcust
where ucbcust_cust_code = 2362400 
/

---------------------------------------------

select * from ucbcust
where ucbcust_user_id = 'JMARSHAL'
and   to_char(ucbcust_activity_date,'dd-mon-yyyy') = '08-mar-2005'
/

select * from ucbcust
where ucbcust_user_id = 'VRAMANAT'
and   to_char(ucbcust_activity_date,'dd-mon-yyyy') = '17-feb-2012'

---------------------------------------------

select count(ucbcust_first_name), count(*)
from ucbcust
where ucbcust_first_name is null
/

select count(ucbcust_last_name), count(*)
from ucbcust
where ucbcust_last_name is null
/

---------------------------------------------

select * from ucbcust
where ucbcust_cust_code = 5354483

---------------------------------------------

select * from ucbcust
where ucbcust_spouses_name is not NULL
and   ucbcust_spouses_name not like '/%'
and   ucbcust_spouses_name not like 'N/A'
and   ucbcust_spouses_name not like '(WIDOWED)'
and   ucbcust_spouses_name not like '"'
and   ucbcust_spouses_name not like ','
and   ucbcust_spouses_name not like '(LANDLORD)'
and   ucbcust_spouses_name not like '(LL)%'
and   ucbcust_spouses_name not like '(IN TRUST)'
and   ucbcust_spouses_name not like '(OWNER)%'
and   ucbcust_spouses_name not like '(DECEASED)'
and   ucbcust_spouses_name not like 'KATHERINE)'
and   ucbcust_spouses_name not like 'A%'
and   ucbcust_spouses_name not like 'B%'
and   ucbcust_spouses_name not like 'C%'
and   ucbcust_spouses_name not like 'D%'
and   ucbcust_spouses_name not like 'E%'
and   ucbcust_spouses_name not like 'F%'
and   ucbcust_spouses_name not like 'G%'
and   ucbcust_spouses_name not like 'H%'
and   ucbcust_spouses_name not like 'J%'
and   ucbcust_spouses_name not like 'J%'
and   ucbcust_spouses_name not like 'K%'
and   ucbcust_spouses_name not like 'L%'
and   ucbcust_spouses_name not like 'M%'
and   ucbcust_spouses_name not like '(SINGLE)'
and   ucbcust_spouses_name not like '(SEPARATED)'
and   ucbcust_spouses_name not like '(SEPERATED)'
and   ucbcust_spouses_name not like '?'
order by ucbcust_spouses_name


