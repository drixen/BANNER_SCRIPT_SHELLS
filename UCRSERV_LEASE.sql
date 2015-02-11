set pagesize 69
set linesize 130
 
select ucrserv_PREM_CODE,
       ucrserv_CUST_CODE,
       ucrserv_num,
       ucrserv_unit
from ucrserv
where ucrserv_STATUS_IND = 'A'
and   ucrserv_num_units > 1
/


and   ucrserv_date_activated is less than system_date
and   ucrserv_date_inactive is NULL
/   

------------------------------------------

select ucrserv_activity_date,
       ucrserv_user_id  
from ucrserv
where ucrserv_CUST_CODE = 6284200 and
      ucrserv_PREM_CODE = '2646557' and
      ucrserv_num = 3
/

select * from ucrserv
where ucrserv_CUST_CODE = 2049721   and
      ucrserv_PREM_CODE = '2049592' and
      ucrserv_num = 2
/

select ucrserv_activity_date,
       ucrserv_user_id  
from ucrserv
where ucrserv_PREM_CODE = '2285625' and
      ucrserv_num = 1
/

-------------------------------------------

column ucrserv_CUST_CODE          heading 'Customer'
column ucrserv_prem_code          heading 'Premise'
column ucrserv_srat_code          heading 'Rate"
column ucrserv_num                heading 'Serv #'
column ucrserv_Date_activated     heading 'Start Date'
column ucrserv_Dateretired        heading 'Turn Off'
column ucrserv_charge_start_month heading 'Start Month'
column ucrserv_charge_frequency   heading 'Frequency'

set pagesize 1500
set linesize 120

select ucrserv_cust_code,
       ucrserv_PREM_CODE,
       ucbprem_city,
       ucrserv_SRAT_CODE,
       ucrserv_num,
       ucrserv_Date_activated,
       ucrserv_date_retired,
       ucrserv_charge_start_month,
       ucrserv_charge_frequency 
from ucrserv,ucbprem
where ucrserv_STATUS_IND = 'A'
and   ucrserv_prem_code = ucbprem_code
and   ucrserv_SRAT_CODE IN ('TMB1','TQB1')
and   ucbprem_City = 'HAMILTON'
and   to_char(ucrserv_date_activated,'dd-mon-yyyy') = '10-jun-2005'
/   

and   to_char(ucrserv_date_activated,'dd-mon-yyyy') < '01-feb-1993'

select ucrserv_cust_code,
       ucrserv_PREM_CODE,
       ucrserv_SRAT_CODE,
       ucrserv_num,
       ucrserv_Date_activated,
       ucrserv_date_retired,
       ucrserv_charge_start_month,
       ucrserv_charge_frequency 
from ucrserv
where ucrserv_STATUS_IND = 'A'
and   ucrserv_SRAT_CODE = 'HCOM'






and   ucrserv_date_activated between '01-jan-1987' and '01-jan-1993'