select count (distinct UTRSRAT_SEQ_Num)
from utrsrat
/

set pagesize 400


select count(*), UTRSRAT_SEQ_Num
from utrsrat
where utrsrat_seq_num is not null
group by utrsrat_seq_num
/



-------------------------------------------

column Utrsrat_srat_code     heading 'Rate|Code'
column utrsrat_scat_code     heading 'Service|Cat' 
column utrsrat_effect_date   heading 'Effective|Date' 
column utrsrat_activity_date heading 'Activity|Date'

Select Utrsrat_srat_code,
       utrsrat_scat_code, 
       utrsrat_effect_date, 
       utrsrat_activity_date,
       utrsrat_bill_print_desc,
       utrsrat_base_amt 
from utrsrat
where to_char(utrsrat_activity_date,'dd-mon-yyyy') > '01-jan-2004'
and   utrsrat_srat_code like  'E%'
order by utrsrat_srat_code 

-----------List Bill Print Description-------

Select Utrsrat_srat_code,
       utrsrat_scat_code, 
       utrsrat_effect_date, 
       utrsrat_activity_date,
       utrsrat_seq_num,
       utrsrat_bill_print_desc,
       utrsrat_base_amt 
from utrsrat
where utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')
order by utrsrat_srat_code 
-----------------------------------------------

Select * from utrsrat
where utrsrat_SEQ_NUM = '500'


------------------------------------------

Select * from utrsrat
where to_char(utrsrat_activity_date,'dd-mon-yyyy') > '28-jan-2010'
and   utrsrat_srat_code like  'F%'


------------------------------------------


--and   UTRSRAT_BILL_PRINT_DESC = 'Rental Home Comfort Service'



Select * from utrsrat
where  UTRSRAT_BILL_PRINT_DESC = 'Rental Home Comfort Service'
and    utrsrat_PRO_MIN_DAYS = 15
and    UTRSRAT_PRO_MAX_DAYS = 46


where utrsrat_activity_date between  '30-apr-2005' and '08-sep-2005'
and   ucrserv_date_activated between '31-dec-2005' and '01-jun-2099'
where to_char(utrsrat_activity_date,'dd-mon-yyyy') > '30-apr-2005'