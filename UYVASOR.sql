select count(UIBOTIV_ASOR_CODE)
from uibotiv
where uibotiv_asor_code = 'REPU'
/

-----------------------------------------

delete from uyvasor
where uyvasor_code = 'UPDW'
/


-----------------------------------------


update uibotiv
set uibotiv_asor_code = 'REPU'
where UIBOTIV_asor_code = 'UPDW' 
/

-----------------------------------------

Select uibotiv_code "Inv Code",
       Uibotiv_bldr_code "Builder",
       uibotiv_site_code "Site"
from  uibotiv
where uibotiv_bldr_code = 'COUH'
and   uibotiv_site_code = 'FRAG'
/

Select uibotiv_code "Inv Code",
       Uibotiv_bldr_code "Builder",
       uibotiv_site_code "Site"
from  uibotiv
where uibotiv_site_code = 'COUN'
/