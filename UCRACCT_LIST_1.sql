column ucracct_prem_code heading 'Premise'
column ucracct_cust_code heading 'Customer'
column ucracct_bunch_code heading 'Bunch|Code'
column ucracct_bunch_code_start_date heading 'Start|Date'
column ucracct_bunch_coce_end_date heading 'End|Date'

select UCRACCT_PREM_CODE,
       UCRACCT_CUST_CODE,
       ucracct_bunch_code,
       ucracct_bunch_code_start_date,
       ucracct_bunch_code_end_date
from ucracct
where ucracct_bnch_code = 'WKLN'
/

----------------------------------------------------------



Select UCRACCT_CUST_CODE,
       UCRACCT_PREM_CODE,
       ucracct_status_ind
from ucracct Where ucracct_user_id like 'UPDATE%';



Select UCRACCT_CUST_CODE,
       UCRACCT_PREM_CODE,
       ucracct_status_ind,
       ucracct_bill_pres_type
from ucracct 
Where ucracct_bill_pres_type IN ('E', 'L')
and   ucracct_status_ind = 'A';



select UCRACCT_CUST_CODE, UCRACCT_PREM_CODE, ucracct_cycl_code from ucracct Where ucracct_cust_code = 2000001 and ucracct_prem_code = '2000001'


--------------------------------

Select UCRACCT_CUST_CODE,
       UCRACCT_PREM_CODE
 from ucracct
 Where ucracct_cycl_code = 'LOIS';


update ucracct
set   UCRACCT_cycl_code = 'TRASH'
where UCRACCT_CUST_CODE =  6290341
and   UCRACCT_PREM_CODE = '4585586'
/


 
 

