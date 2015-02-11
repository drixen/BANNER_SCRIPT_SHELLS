column ucrloca_cust_code heading 'Cust'
column ucrloca_prem_code heading 'Prem'
column ucrloca_street_number heading 'Street|Num'
column ucrloca_street_name heading 'Street|Name'
column ucrloca_zipc_code heading 'Postal|Code'

set linesize 180
set pagesize 69

select ucrloca_cust_code,
       ucrloca_prem_code,
       ucrloca_street_number,
       ucrloca_street_name,
       ucrloca_zipc_code
from   ucrloca
where ucrloca_street_name = 'APPLEBY'
and  ucrloca_zipc_code = 'L7L2Y2'
/


select * from utrstrt
where utrstrt_zipc_code = 'L7L'
/


ucrloca_street_number = '450' 