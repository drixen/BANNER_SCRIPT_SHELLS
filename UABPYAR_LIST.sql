select * from uabpyar
where uabpyar_arrng_num <> '0'
and   uabpyar_status = 'A'
order by uabpyar_cust_code, uabpyar_prem_code, uabpyar_arrng_num

---------------------------------------------------------

select * from uabpyar
where uabpyar_arrng_num <> '0'
and   uabpyar_status = 'A'
order by uabpyar_cust_code, uabpyar_prem_code, uabpyar_arrng_num

--------------------------------------------

select UABPYAR_CUST_CODE "Customer",
       UABPYAR_PREM_CODE "Premise",
       UABPYAR_ARRNG_NUM "Arrang", 
       UABPYAR_PYAR_CODE "PYAR",              
       UABPYAR_TOTAL_AMT "Amount",              
       UABPYAR_USER_ID_AUTHOR "Author",          
       UABPYAR_DATE_CREATED "PYMT DT",            
       UABPYAR_STATUS "Status",                  
       UABPYAR_USER_ID "User ID",                 
       UABPYAR_ACTIVITY_DATE "Act Dt",           
       UABPYAR_USE_GRACE_IND "Grace"
from uabpyar
where uabpyar_cust_code = 2646302
and   uabpyar_prem_code = '2645406'

-------------------------------------------

select UABPYAR_CUST_CODE,
       UABPYAR_PREM_CODE,
       UABPYAR_ARRNG_NUM, 
       UABPYAR_PYAR_CODE,              
       UABPYAR_TOTAL_AMT,              
       UABPYAR_USER_ID_AUTHOR,          
       UABPYAR_DATE_CREATED,            
       UABPYAR_STATUS,                  
       UABPYAR_USER_ID,                 
       UABPYAR_ACTIVITY_DATE,           
       UABPYAR_USE_GRACE_IND
from uabpyar
where uabpyar_cust_code = 2646302
and   uabpyar_prem_code = '2645406'


