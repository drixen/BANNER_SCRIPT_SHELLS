column ubracex_cust_code heading 'Customer'
column ubracex_prem_code heading 'Premise'
column ubracex_serv_num heading 'Service'
column ubracex_type_ind heading 'Excep|Type'
column ubracex_excep_num heading 'Exception|Number'

set pagesize 69
set linesize 100

select ubracex_cust_code,
       ubracex_prem_code,
       ubracex_serv_num
from  ubracex
where ubracex_excep_num = '15'
/


select count(*), ubracex_excep_num
 from ubracex
where ubracex_excep_num is not null
group by ubracex_excep_num
/
 

select UBRACEX_CUST_CODE,
       UBRACEX_PREM_CODE,
       UBRACEX_SERV_NUM,
       UBRACEX_TYPE_IND,       
       UBRACEX_EXCEP_NUM      
from ubracex
where ubracex_cust_code = '5290393' and
      ubracex_prem_code = 2421176
/

delete from ubracex
where ubracex_cust_code = '5410658' and
      ubracex_prem_code = 2414891
/

commit;
