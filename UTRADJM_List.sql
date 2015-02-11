

select * from UTRADJM
where  UTRADJM_code = 'XAWO'
and   to_char(utradjm_activity_date,'dd-mon-yyyy') = '11-jul-2005'

/

-----------------------------------------------

select * from UTRADJM
where  to_char(utradjm_activity_date,'dd-mon-yyyy') = '11-jul-2005'

------------------------------------------------

select utradjm_code      "Adjustment Code",
       utradjm_desc      "Description",
       utradjm_GLCL_code_default  "General Ledger Class Code"
from utradjm