column uibotiv_code heading 'Inventory'
column uibotiv_refurb_ind heading 'Refurbish|Ind'

set pagesize 69
set linesize 80

select uibotiv_code,
       uibotiv_refurb_ind,
       uibotiv_refurb_date
from uibotiv
where uibotiv_code = '2261114' 
/



update uibotiv
set   uibotiv_refurb_date = ''  
where uibotiv_CODE = '6080770'
/

update uibotiv
set   uibotiv_refurb_ind = ''  
where uibotiv_CODE = '6080770'
/
