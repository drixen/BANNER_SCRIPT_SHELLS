update uxrintp
set uxrintp_intp_code = '1035'
where uxrintp_intp_CODE = '1499' and
      uxrintp_priority = 99
/

select uxrintp_intp_code,
       UXRINTP_DESC,           
       UXRINTP_PRIORITY 
from uxrintp 
where uxrintp_intp_code = '1499'
and uxrintp_priority = 88
/     