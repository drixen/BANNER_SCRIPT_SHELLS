* * * This script is used to change the Due date in the UABOPEN table  * * * 


update uabopen
set uabopen_due_date = to_date('23-aug-2000','dd-MON-YYYY')
where uabopen_cust_code = 5150252 and
      uabopen_prem_code = '3139145' and
      UABOPEN_SCAT_CODE = 'NONE' and
      uabopen_srat_code = 'MVIN' and
      uabopen_due_date = to_date('23-feb-2000','dd-MON-YYYY')
/

update uabopen
set uabopen_due_date = to_date('03-feb-2000','dd-MON-YYYY')
where uabopen_cust_code = 2445915 and
      uabopen_prem_code = '2445135' and
      UABOPEN_SCAT_CODE = 'NONE' and
      uabopen_srat_code = 'DISC' and
      uabopen_serv_num is null and
      uabopen_due_date = to_date('31-DEC-1999','dd-MON-YYYY')
/

update uabopen
set uabopen_due_date = to_date('03-feb-2000','dd-MON-YYYY')
where uabopen_cust_code = 2445915 and
      uabopen_prem_code = '2445135' and
      UABOPEN_SCAT_CODE = 'NONE' and
      uabopen_srat_code = 'GSTO' and
      uabopen_serv_num is null and
      uabopen_due_date = to_date('31-DEC-1999','dd-MON-YYYY')
/

select uabopen_cust_code,
       uabopen_prem_code,           
       UABOPEN_SCAT_CODE,
       uabopen_srat_code,
       uabopen_serv_num, 
       UABOPEN_DUE_DATE
from uabopen 
where uabopen_cust_code = 2254636 and
      uabopen_prem_code = '2254112' and
      UABOPEN_SCAT_CODE = 'NONE' and
      uabopen_srat_code = 'LOPR' and
      uabopen_serv_num is null and
      uabopen_due_date = to_date('18-FEB-2000','dd-MON-YYYY')
/

-----------------------------------------------------------

select uabopen_cust_code,
       uabopen_prem_code,           
       uabopen_srat_code,
       uabopen_serv_num, 
       UABOPEN_DUE_DATE
from uabopen 
where uabopen_srat_code = 'PITF' and
  uabopen_due_date = to_date('19-jul-2006','dd-MON-YYYY')
     


      uabopen_due_date = to_date('19-jul-2006','dd-MON-YYYY')
----------------------------------------------------


  