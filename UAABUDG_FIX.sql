

* * * This script is used to change the Budget Indicator * * * 

select * from uabbudg select * from uabbudg where uabbudg_cust_code = 6872256 
and uabbudg_PREM_CODE = '3183335'

-------------------------------------------------


update UABBUDG
set uabbudg_status_ind = 'R'
where uabbudg_cust_code = 6872256 
and   uabbudg_PREM_CODE = '3183335'



--------------------------------------------------


  