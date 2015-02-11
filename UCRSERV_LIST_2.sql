
----------  This script will list services that have a turn on date too far into the future  --------


column ucrserv_cust_code heading 'Customer'
column ucrserv_prem_code heading 'Premise'
column ucrserv_num heading 'Serv|Num'
column ucrserv_cust_code heading 'Customer'
column ucrserv_prem_code heading 'Premise'
column ucrserv_num heading 'Service|Num'
column ucrserv_styp_code heading 'Service|Type'
column ucrserv_date_activated heading 'Date|activated'
column ucrserv_date_inactive heading 'Date|Inactive'
column ucrserv_aniv_date heading 'Anniversary|Date'

set pagesize 500
set linesize 1000

select ucrserv_cust_code,
       ucrserv_prem_code,
       ucrserv_num,
       ucrserv_styp_code,
       ucrserv_date_activated,
       ucrserv_date_inactive,
       UCRSERV_ANIV_DATE
from ucrserv
where ucrserv_date_activated > to_date('31-dec-2004','dd-mon-yyyy')
order by ucrserv_date_activated
/

--------------This script will list Services with ---------------
--------------Turn off dates too far into the future ------------

select ucrserv_cust_code "Cust",
       ucrserv_prem_code "Prem",
       ucrserv_num "Service",
       ucrserv_styp_code "Type",
       ucrserv_date_activated "DT Activated",
       ucrserv_date_inactive "Dt Inactivated",
       UCRSERV_ANIV_DATE "Ann Date"
from ucrserv
where ucrserv_date_inactive  > to_date('31-dec-2004','dd-mon-yyyy')
order by ucrserv_date_Inactive
/

--------------------------------------------------------------------

or ucrserv_date_inactive  > to_date('01-jan-2003','dd-mon-yyyy') 
ucrserv_date_activated > to_date('01-jan-2003','dd-mon-yyyy')
where ucrserv_cust_code = '2104228' and

column ucrserv_cust_code heading 'Customer'
column ucrserv_prem_code heading 'Premise'
column ucrserv_num heading 'Serv|Num'
column ucrserv_srat_code heading 'Rate'
column ucrserv_date_activated heading 'Date|Activated'
column ucrserv_date_inactive heading 'Date|Inactive'

set pagesize 69
set linesize 130

select ucrserv_cust_code,
       ucrserv_prem_code,
       ucrserv_num,
       ucrserv_srat_code,
       ucrserv_date_activated,
       ucrserv_date_inactive
from ucrserv
where ucrserv_prem_code = '4307085' and
      ucrserv_num = 2
/

-------------------------------------------------

update ucrserv
set ucrserv_srat_code = 'QRPV'
where ucrserv_prem_code = '3067794' and
      ucrserv_num = 1
/


set pagesize 1000
select ucrserv_cust_code,
       ucrserv_prem_code,
       ucrserv_num,
       ucrserv_styp_code,
       ucrserv_date_activated,
       ucrserv_date_inactive,
       UCRSERV_ANIV_DATE
from ucrserv
where ucrserv_date_activated < to_date('01-jun-1999','dd-mon-yyyy')
and ucrserv_styp_code = 'RENT'
/

column ucrserv_cust_code heading 'Customer'
column ucrserv_prem_code heading 'Premise'
column ucrserv_num heading 'Serv|Num'
column ucrserv_cust_code heading 'Customer'
column ucrserv_prem_code heading 'Premise'
column ucrserv_num heading 'Service|Num'
column ucrserv_styp_code heading 'Service|Type'
column ucrserv_date_activated heading 'Date|activated'
column ucrserv_date_inactive heading 'Date|Inactive'
column ucrserv_aniv_date heading 'Anniversary|Date'

set pagesize 69
set linesize 1000

select ucrserv_cust_code,
       ucrserv_prem_code,
       ucrserv_num,
       ucrserv_styp_code,
       ucrserv_date_activated,
       ucrserv_date_inactive,
       UCRSERV_ANIV_DATE
from ucrserv
where ucrserv_date_activated > to_date('01-jan-2003','dd-mon-yyyy')
or ucrserv_date_inactive  > to_date('01-jan-2004','dd-mon-yyyy') 
/


select ucrserv_cust_code,
       ucrserv_prem_code,
       ucrserv_num,
       ucrserv_styp_code,
       ucrserv_date_activated,
       ucrserv_date_inactive,
       UCRSERV_ANIV_DATE
from ucrserv
where ucrserv_date_inactive  > to_date('01-jan-2004','dd-mon-yyyy')
/