
--------------------------------------

Select uyvbldr_code,
       uyvbldr_desc
from uyvbldr
order by uyvbldr_desc

---------------------------------------

select UIBOTIV_CODE,
       UIBOTIV_STUS_CODE,
       UIBOTIV_MANF_CODE,      
       UIBOTIV_MODEL, 
       uibotiv_install_date,
       uibotiv_refurb_ind,
       uibotiv_refurb_date,
       uibotiv_refurb_cost, 
       uibotiv_secur_ind,
       uibotiv_bldr_code
from   uibotiv
where UIBOTIV_bldr_CODE = 'RHHO'
/

---------------------------------------
****    This script lists info from the 
****    Builder site Rules table. 

select * from uyrblst
where UYRBLST_BLDR_code = 'RHHO'
/

---------------------------------

delete from UYVBLDR
where uyvbldr_code ='RHHO'
/

---------------------------------

select uyvsite_code,
       uyvsite_desc,
       uyvsite_activity_date,
       uyvsite_user_id
from uyvsite
where uyvsite_code = 'ROSE'
/

select uibotiv_code      "Inventory",
       uibotiv_bldr_code "Builder",
       UIbotiv_site_code "Site"
from uibotiv
where uibotiv_bldr_code = 'RHHO'
/


delete from uyvsite
where uyvsite_code = 'DEVA'
/

update uibotiv
set uibotiv_site_code = 'ROSE'
where UIBOTIV_site_code = 'LPOI'
/

update UYVSITE
set    UYVSITE_code = 'ROSE'
where  UYVSITE_code = 'LPOI'
/