delete from uxrbmsr
where uxrbmsr_bmsg_code = '1923'
/

select uxrbmsr_bmsg_code,
       uxrbmsr_start_date,           
       uxrbmsr_end_date 
from   uxrbmsr
where  uxrbmsr_bmsg_code = '1896'  
/     