column ubracex_excep_num heading 'Exception'

set pagesize 69 
set linesize 80

select count(*), ubracex_excep_num
from ubracex
where ubracex_excep_num is not null
group by ubracex_excep_num
order by ubracex_excep_num
/


/* This script will list Exception codes 02's, 15's and 99's


select ubracex_cust_code "Customer",
       ubracex_prem_code "Premise",
       ubracex_serv_num "Service #",
       ubracex_excep_num "Exception"      
from   ubracex
where ubracex_excep_num = '02' or
      ubracex_excep_num = '15' or
      ubracex_excep_num = '70' or
      ubracex_excep_num = '71' or
      ubracex_excep_num = '72' or
      ubracex_excep_num = '74' or
      ubracex_excep_num = '99' 
order by ubracex_excep_num, ubracex_prem_code;




-------------Display Accounts with Error 96----------------------

select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ucracct_cycl_code, 
       ucracct_status_ind, 
       ucracct_activity_date
from   ubracex, ucracct
where ubracex_cust_code = ucracct_cust_code
and   ubracex_prem_code = ucracct_prem_code
and   ubracex_excep_num = '96' 
and   ucracct_status_ind = 'A'
and   ucracct_activity_date between '01-jan-2000' and '01-jan-2009'
order by ubracex_activity_date, ubracex_serv_num
/

-------------------------------------------------------------

column ubracex_cust_code heading 'Customer'
column ubracex_prem_code heading 'Premise'
column ubracex_serv_num heading 'Service'
column ubracex_excep_num heading 'Exception'
column ucrserv_user_id heading 'User'
column ucrserv_activity_date heading 'Activity Date'

set pagesize 69
set linesize 100

select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ucrserv_user_id,
       ucrserv_activity_date
from   ubracex,ucrserv
where ubracex_excep_num in ('02','15','55','70','71','99') 
and   ubracex_prem_code = ucrserv_prem_code 
and   ubracex_serv_num = ucrserv_num
order by ucrserv_activity_date
/

xxxxxxxxxxxxxxxxxxxx

column ubracex_cust_code heading 'Customer'
column ubracex_prem_code heading 'Premise'
column ubracex_serv_num heading 'Service'
column ubracex_excep_num heading 'Exception'
column ucrserv_user_id heading 'User'
column ucrserv_activity_date heading 'Activity Date'

set pagesize 69
set linesize 100

select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ucrserv_user_id,
       ucrserv_activity_date
from   ubracex,ucrserv
where ubracex_excep_num = '70' 
and   ubracex_prem_code = ucrserv_prem_code 
and   ubracex_serv_num = ucrserv_num
order by ucrserv_activity_date
/

order by ucrserv_activity_date
order by ucrserv_user_id

--------------------------------------------------------------------------

column ubracex_cust_code heading 'Customer'
column ubracex_prem_code heading 'Premise'
column ubracex_serv_num heading 'Service'
column ubracex_excep_num heading 'Exception'
column ucrserv_user_id heading 'User'
column ucrserv_activity_date heading 'Activity Date'

set pagesize 69
set linesize 100

select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ucrserv_user_id,
       ucrserv_activity_date
from   ubracex,ucrserv
where ubracex_excep_num = '70' 
and   ubracex_prem_code = ucrserv_prem_code 
and   ubracex_serv_num = ucrserv_num
and   ucrserv_date_inactive < ucrserv_aniv_date 
order by ucrserv_activity_date
/



------------------------------------------------------------
select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ubracex_activity_date
from   ubracex
where  ubracex_excep_num = '70'
order by ubracex_activity_date
/

-------------------------------------------------------------

select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ubracex_user_id,
       ubracex_activity_date
from   ubracex
where ubracex_excep_num = '70'
order by ubracex_user_id, ubracex_activity_date

---------------------------------------------------

column ubracex_cust_code heading 'Customer'
column ubracex_prem_code heading 'Premise'
column ubracex_serv_num heading 'Service'
column ubracex_excep_num heading 'Exception'
column ucrserv_user_id heading 'User'
column ucrserv_activity_date heading 'Activity Date'

set pagesize 69
set linesize 100

select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ucrserv_user_id,
       ucrserv_activity_date
from   ubracex,ucrserv
where ubracex_excep_num IN ('15','70','72','99') 
and   ubracex_prem_code = ucrserv_prem_code 
and   ubracex_serv_num = ucrserv_num
order by ucrserv_activity_date
/


------------  This next script list user ID and location

column ubracex_cust_code heading 'Customer'
column ubracex_prem_code heading 'Premise'
column ubracex_serv_num heading 'Service'
column ubracex_excep_num heading 'Exception'
column ucrserv_user_id heading 'User'
column gubuloc_user_location heading 'Location'
column ucrserv_activity_date heading 'Activity Date'

set pagesize 69
set linesize 180

select distinct ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ucrserv_user_id,
       gubuloc_user_location,
       ucrserv_activity_date
from   ubracex,ucrserv,gubuloc,gurucls
where ubracex_excep_num IN ('15', '70', '72', '99')
and   ubracex_prem_code = ucrserv_prem_code 
and   ubracex_serv_num = ucrserv_num
and   gubuloc_userid = gurucls_userid
and   ucrserv_user_ID = gurucls_userID
/

where ubracex_excep_num IN ('70', '99') 
where ubracex_excep_num =  '70'
where ubracex_excep_num IN ('15', '70', '99') 
where ubracex_excep_num IN ('02', '15', '70', '72', '99')

where ubracex_excep_num = 70 
* * * * This script lists services with service type mismatches  * * * 

column ubracex_cust_code heading     'Customer'
column ubracex_prem_code heading     'Premise'
column ubracex_serv_num heading      'Service'
column ubracex_excep_num heading     'Exception'
column ucrserv_user_id heading       'User'
column ucrserv_activity_date heading 'Activity Date'
column ucrserv_SRAT_CODE             'Rate Code'

set pagesize 100
set linesize 100

select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num,
       ubracex_excep_num,
       ucrserv_styp_code,
       urrshis_styp_code, 
       ucrserv_activity_date,
       ucrserv_user_id,
       ucrserv_SRAT_CODE 
from   ubracex,ucrserv,urrshis
where ubracex_excep_num = 70 
and   ubracex_prem_code = ucrserv_prem_code 
and   ubracex_serv_num  = ucrserv_num
and   urrshis_serv_num  = ubracex_serv_num
and   urrshis_prem_code = ubracex_prem_code
and   ucrserv_styp_code <> urrshis_styp_code
order by ucrserv_activity_date
/

----Helen's Exception code 70 script ------------------------------

select UBRACEX.UBRACEX_CUST_CODE, UBRACEX.UBRACEX_PREM_CODE, UBRACEX.UBRACEX_SERV_NUM, UBRACEX.UBRACEX_ACTIVITY_DATE  
from uimsmgr.ubracex
where exists ( select 1 from UIMSMGR.UYBMVRQ
                        where UYBMVRQ.UYBMVRQ_PREM_CODE = UBRACEX.UBRACEX_PREM_CODE
                        and UYBMVRQ.UYBMVRQ_CUST_CODE_OUT = UBRACEX.UBRACEX_CUST_CODE)
and UBRACEX.UBRACEX_EXCEP_NUM = 70;


--------------------------------------------------------------------


select UCRSERV_cust_code,
       UCRSERV_prem_code,
       UCRSERV_num,
       UCRSERV_STATUS_IND,
       ucrserv_styp_code,
       urrshis_styp_code, 
       ucrserv_SRAT_CODE, 
       ucrserv_activity_date
from   ucrserv,urrshis
where  ucrserv_prem_code = urrshis_prem_code 
and    ucrserv_status_ind = 'A'
and    ucrserv_num = urrshis_serv_num
and    ucrserv_styp_code <> urrshis_styp_code
order by ucrserv_activity_date
