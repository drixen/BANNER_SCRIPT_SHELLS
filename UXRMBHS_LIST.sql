column uxrmbhs_mbil_num heading 'Master|Bill|Number'
column uxrmbhs_prem_code_mast heading 'Master|Premise'
column uxrmbhs_cust_code_Mast heading 'Master|Customer'
column uxrmbhs_cust_code_sub heading 'Customer|Code|Sub'
column uxrmbhs_Prem_code_sub heading 'Premise|Code|Sub'
column ucbprem_city heading 'City'
column ucrserv_num heading 'Service|Number'
column ucrserv_status_ind heading 'Status'

set linesize 180
set pagesize 100

select uxrmbhs_mbil_num, 
       uxrmbhs_cust_code_mast, 
       uxrmbhs_prem_code_mast,
       uxrmbhs_CUST_CODE_sub,
       uxrmbhs_PREM_CODE_sub,
       ucbprem_city,
       ucrserv_num,
       ucrserv_status_ind
from uxrmbhs, ucbprem, ucrserv
where uxrmbhs_cust_code_sub = ucrserv_cust_code
and   uxrmbhs_prem_code_sub = ucrserv_prem_code
and   ucrserv_prem_code = ucbprem_code
and   ucbprem_city = 'STRATFORD'
/

