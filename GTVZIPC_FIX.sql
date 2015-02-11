delete from GTVZIPC
where GTVZIPC_code = 'P1G1V8'
/

----------------------------------------------------------------

column GTVZIPC_code heading 'Postal|Code'


select GTVZIPC_code,
       GTVZIPC_city,
       GTVZIPC_STAT_CODE,           
       GTVZIPC_NATN_code 
from GTVZIPC 
where GTVZIPC_code = 'P1G1V8'
/     