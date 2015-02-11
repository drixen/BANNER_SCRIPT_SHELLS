--List Rate code information for Yash Rate Increases--------------------------

Select a.UTRSRAT_SRAT_CODE       "Rate Code",
       utvsrat_desc              "Description",
       a.UTRSRAT_BASE_AMT        "Base Amount",
       utvsrat_charge_frequency  "Frequency",
       a.UTRSRAT_PRO_BASE_DAYS   "Base Days", 
       a.utrsrat_GLCL_code       "GL Class Code",
       a.UTRSRAT_BILL_PRINT_DESC "Bill Print Desc"
from utrsrat a, utvsrat
where utrsrat_srat_code = utvsrat_code
and   utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')
order by utrsrat_srat_code

-------------------------------------------------------------------------------

Select a.UTRSRAT_SRAT_CODE       "Rate Code",
       utvsrat_desc              "Description",
       a.UTRSRAT_BASE_AMT        "Base Amount",
       a.UTRSRAT_PRO_BASE_DAYS   "Base Days", 
       a.UTRSRAT_BILL_PRINT_DESC "Bill Print Desc"
from utrsrat a, utvsrat
where utrsrat_srat_code = utvsrat_code
and   utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')
order by 1


Select UTRSRAT_SRAT_CODE       "Rate Code",
       UTRSRAT_BASE_AMT        "Base Amount",
       UTRSRAT_PRO_BASE_DAYS   "Base Days", 
       UTRSRAT_BILL_PRINT_DESC "Bill Print Desc"
FROM UTRSRAT  
where utrsrat_srat_code IN ('TCAB','TCAP','TCBB','TCBF','TCBP','TCFB','TCFP','TCNT','TMA1','TMA6','TMAB',
'TMAC','TMAM','TMAP','TMB1','TMB3','TMB5','TMB6','TMBB','TMBM','TMBP','TMBR',
'TMBS','TMC1','TMC7','TMCP','TMF1','TMF4','TMF6','TMF7','TMFB','TMFI','TMFM',
'TMFP','TMFQ','TMFT','TP01','TP02','TP03','TP04','TP06','TP07','TP10','TP17',
'TQA1','TQAB','TQAP','TQB1','TQB3','TQB5','TQBB','TQBP','TQC1','TQC7','TQCP',
'TQF1','TQF3','TQFP','TQFZ','TQP1','TQP2','TQP4','TQP5','VMC5','VMF5','VMF7',
'VQC3','VQC5','VQF3','VQF5')
and   utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')

--------------------------list everything for rate code


Select * from utrsrat, utvsrat
where utrsrat_srat_code = utvsrat_code
and   utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')
and   UTRSRAT_BILL_PRINT_DESC = 'Water Heater Rental'
order by utrsrat_seq_num

-------

Select * from utrsrat, utvsrat
where utrsrat_srat_code = utvsrat_code
and   utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')
and   UTRSRAT_BILL_PRINT_DESC = ' Furnace/AC Rental'
order by utrsrat_seq_num

-------

Select * from utrsrat, utvsrat
where utrsrat_srat_code = utvsrat_code
and   utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')
and   UTRSRAT_BILL_PRINT_DESC LIKE '%CPP%'
order by utrsrat_seq_num





-----------------------List active rates and there descriptions----------------




Select a.UTRSRAT_SRAT_CODE,
         utvsrat_desc "Desc", 
       a.UTRSRAT_BILL_PRINT_DESC "Bill Print Desc"
from utrsrat a, utvsrat
where utrsrat_srat_code = utvsrat_code
and   utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')
order by 1



Select * from utrsrat a, utvsrat
where utrsrat_srat_code = utvsrat_code
and   utrsrat_nchg_date = to_date('31-DEC-2099','DD-MON-YYYY')
order by 1