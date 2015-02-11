Select * from utvsrat
where utvsrat_code IN ('IACF','COD1')
order by utvsrat_code

Select * from utrsrat
where utrsrat_SRAT_code IN ('IACF','COD1')
order by utrsrat_SRAT_code

-------------------------------------------

column utvsrat_code          heading 'Rate|Code'
column utvsrat_desc          heading 'Description' 


Select utvsrat_code,
       utvsrat_desc 
from utvsrat
where utvsrat_code like 'XT%'
order by utvsrat_code
/




Select utvsrat_code,
       utvsrat_desc 
from utvsrat
where utvsrat_code = 'ROCV'
order by utvsrat_code



---------UPDATE------------------------

update utvsrat
set   utvsrat_code = 'BD95'
where utvsrat_code = 'BD96'

update utrsrat
set   utrsrat_srat_code = 'STO3'
where utrsrat_srat_code = 'STO3'

delete from utrsrat where utrsrat_srat_code = 'OSSW'

-----
------------------------------------------------------------

column utvsrat_code          heading 'Rate|Code'
column utvsrat_desc          heading 'Description' 

-------------------------------------------------------------

SELECT UTRSRAT_SRAT_CODE, UTVSRAT_DESC, UTRSRAT_EFFECT_DATE, UTRSRAT_BASE_AMT, UTRSRAT_PRO_BASE_DAYS, UTRSRAT_BILL_PRINT_DESC, UTRSRAT_GLCL_CODE

FROM utrsrat, utvsrat

WHERE utrsrat_nchg_date = TO_DATE('31-DEC-2099','DD-MON-YYYY')

and UTRSRAT_SRAT_CODE = utvsrat_code

and (upper(UTVSRAT_DESC) like '%MASTER%' or upper(UTVSRAT_DESC) like '%MSTR%')

 

