SELECT UTRSRAT_SRAT_CODE,
       UTVSRAT_DESC, 
       UTRSRAT_EFFECT_DATE,
       UTRSRAT_BASE_AMT,
       UTRSRAT_PRO_BASE_DAYS,
       UTRSRAT_BILL_PRINT_DESC,
       UTRSRAT_GLCL_CODE
FROM utrsrat, utvsrat
WHERE utrsrat_nchg_date = TO_DATE('31-DEC-2099','DD-MON-YYYY')
and UTRSRAT_SRAT_CODE = utvsrat_code
and (upper(UTVSRAT_DESC) like '%MASTER%' or upper(UTVSRAT_DESC) like '%MSTR%')
