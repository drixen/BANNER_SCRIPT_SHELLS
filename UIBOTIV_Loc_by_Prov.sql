column uibotiv_code heading 'Inventory|No'
column uibotiv_stus_code heading 'Status'
column uibotiv_activity_date heading 'Activity|Date'
column uibotiv_user_id heading 'User|ID'

Select uibotiv_code,
       uibotiv_stus_code,
       uibotiv_activity_date,
       uibotiv_user_id
from uibotiv
where uibotiv_activity_date between '10-mar-2003' and '02-apr-2003'
and   uibotiv_user_id IN ('JMARSH', 'DBELL')
order by uibotiv_user_id, uibotiv_activity_date
/

Select uibotiv_code,
       uibotiv_stus_code,
       uibotiv_city,
       uibotiv_stat_code
from uibotiv
where uibotiv_STUS_Code = 'I' 
and   uibotiv_STAT_Code <> 'ON'
/


select ucrserv_prem_code "Premise",
       ucrserv_invn_code "Inventory",
       ucrserv_status_IND "Status" ,
       ucbprem_city "City",
       ucbprem_zipc_code "Postal Code",
       ucbprem_stat_code_addr "Province"
from ucrserv,ucbprem
where ucrserv_prem_code = ucbprem_code
and   ucrserv_status_ind = 'A'
and   ucbprem_stat_code_addr <> 'ON'
order by ucbprem_zipc_code
/


order by ucbprem_stat_code_addr

Select uibotiv_code,
       uibotiv_stus_code,
       uibotiv_MODEL,
       uibotiv_IGRP_CODE
from uibotiv
where uibotiv_model = '6640S38F'

Select * from uibotiv
where uibotiv_code = '6851356'



Select uibotiv_code,
       uibotiv_stus_code,
       uibotiv_MODEL,
       uibotiv_IGRP_CODE
from uibotiv
where uibotiv_model = '6G-75-3NC-02'
and   uibotiv_IGRP_CODE = 'PV75'