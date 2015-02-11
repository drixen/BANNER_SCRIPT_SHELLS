delete from uyvbldr
where uyvbldr_code = 'VINE'
/


delete from uyvsite
where uyvsite_code = 'VINE'
/

delete from uyrblst
where uyrblst_bldr_code = 'VINE'
/


update uyvbldr
set Uyvbldr_code = 'EDEN'
where Uyvbldr_CODE = 'EDE' 
/

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