
--Script below can be used to select Rate codes that are used on a specific FEED Code date.  


select  * from  uabopen a 
where a.uabopen_srat_code in (
'ADCH',
'EXIC',
'EXIC',
'DRDF',
'PITF',
'IACF',
'EQDF',
'DRDF',
'EXEL',
'EXOT',
'EXCP',
'EXHV',
'EXWR',
'EXCM',
'PRWH',
'ACSU',
'STOC',
'COD1',
'ENSC',
'ACSU',
'RSER'
)
and A.UABOPEN_CHARGE_DATE > to_date('01-JAN-2010','dd-MON-yyyy')
and a.uabopen_feed_doc_code = 'F3646'

--------------------------------------------------------------------------------

Select a.*  from uabopen a, utrsrat b
   where a.uabopen_feed_doc_code = 'F3646'
   and a.uabopen_srat_code = b.utrsrat_srat_code
   and a.uabopen_srat_code IN ('ACTS',  'ADCH', 'STAT')
   and b.utrsrat_nchg_date = to_date ('31-DEC-2099','DD-MON-YYYY') 
   and B.UTRSRAT_GLCL_CODE IN ('ADCH', 'STAT')
   and A.UABOPEN_CHARGE_DATE > to_date('01-JAN-2010','dd-MON-yyyy')


---------------------------------------------------------------------------------

select  * from  uabopen a 
where a.uabopen_srat_code in ('MBCA', 'MBCC')
and A.UABOPEN_CHARGE_DATE between '01-SEP-2010' and '30-NOV-2010'


and A.UABOPEN_CHARGE_DATE > to_date('01-JAN-2010','dd-MON-yyyy')
and a.uabopen_feed_doc_code = 'F3646'

-----------------------------------------------------------------------------------

SELECT a.uabopen_cust_code        "Customer",
       a.uabopen_prem_code        "Premises",
       a.uabopen_srat_code        "Rate_code",
       b.utrsrat_glcl_code        "GL_class_code",
       b.utrsrat_bill_print_desc  "Desc",
       a.uabopen_feed_doc_code    "Feed_code",
       a.uabopen_charge_date      "Date",
       a.uabopen_billed_chg       "Charge",
       a.uabopen_balance          "Balance", 
       a.uabopen_user_id          "Userid",
       a.uabopen_originating_user "Userorg"     
 FROM  uabopen a, utrsrat b
 WHERE b.utrsrat_glcl_code IN ('MBCC')
   AND a.uabopen_charge_date between TRUNC( TO_DATE ('01-SEP-2010','DD-MON-YYYY' ))
   AND TRUNC( TO_DATE( '30-SEP-2010', 'DD-MON-YYYY' ))
   AND a.uabopen_srat_code = b.utrsrat_srat_code
   AND b.utrsrat_nchg_date = TO_DATE ('31-DEC-2099','DD-MON-YYYY')



