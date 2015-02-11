select * from UCRADDR
where UCRADDR_lang_code = 'FR'
/

select * from UCRADDR
where UCRADDR_zip = 'KGV3R6'
/

select * from UCRADDR
where UCRADDR_cust_code  = '5955491'
/

update ucaddr
set ucraddr_status_IND = 'A'
where ucraddr_cust_code = '5994939'


update ucraddr
set ucraddr_from_date = to_date('26-jul-2000', 'dd-mon-yyyy')
where ucraddr_cust_code = '2066437'
and ucraddr_from_date = to_date('25-jul-2000', 'dd-mon-yyyy')
/



update ucraddr
set ucraddr_from_date = to_date('10-feb-2003', 'dd-mon-yyyy')
where ucraddr_cust_code = '5865152'
/

-------------------------------------------

select ucracct_cust_CODE, 
       ucracct_Prem_code,
       ucracct_cycl_code,
       ucracct_status_ind,
       ucraddr_atyp_code, 
       ucraddr_street_number,
       ucraddr_street_name,
       ucraddr_street_line1,
       ucraddr_street_line2,
       ucraddr_street_line3,
       ucraddr_zip,
       ucraddr_city,
       ucraddr_utyp_code,
       ucraddr_unit
from ucracct,ucraddr
where ucracct_cust_code = ucraddr_cust_code and
      ucraddr_street_number = '226'         and
      ucraddr_zip = 'P7E1B4'               

--------------------------------------------------------------

select ucracct_cust_CODE, 
       ucracct_Prem_code,
       ucracct_cycl_code,
       ucracct_status_ind,
       ucraddr_atyp_code, 
       ucraddr_street_number,
       ucraddr_street_name,
       ucraddr_street_line1,
       ucraddr_street_line2,
       ucraddr_street_line3,
       ucraddr_zip,
       ucraddr_city,
       ucraddr_utyp_code,
       ucraddr_unit
from ucracct,ucraddr
where ucracct_cust_code = ucraddr_cust_code and
      ucraddr_street_number = '100'         and
      ucraddr_street_name = 'SHEPPARD'      and
      ucraddr_zip = 'M2N6Z1'    

--------------------------------------           

select ucracct_cust_CODE, 
       ucracct_Prem_code,
       ucracct_cycl_code,
       ucracct_status_ind,
       ucraddr_atyp_code, 
       ucraddr_street_number,
       ucraddr_street_name,
       ucraddr_street_line1,
       ucraddr_street_line2,
       ucraddr_street_line3,
       ucraddr_zip,
       ucraddr_city,
       ucraddr_utyp_code,
       ucraddr_unit
from ucracct,ucraddr
where ucracct_cust_code = ucraddr_cust_code and
      ucraddr_street_name = 'BAXTER'        and
      ucraddr_city = 'LONDON'
      ucraddr_zip like 'N5W%'               


--------------------------------------------------------------

delete from ucraddr 
where ucraddr_Cust_code = 5102402
and   ucraddr_zip = 'L7R3T5'
and   ucraddr_seqno = '2'
/  

