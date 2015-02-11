delete from uibotiv
where uibotiv_code = '6448605'
/

----------------------------------------------------------------

column uibotiv_code heading 'Inventory|Number'
column uibotiv_ptyp_code heading 'Part|Type'
column Uibotiv_asvc_code heading 'ASVC|Code'
column uibotiv_stus_code heading 'Status|Code'

select uibotiv_code,
       uibotiv_ptyp_code,
       uibotiv_asvc_code,           
       uibotiv_stus_code 
from uibotiv 
where uibotiv_code = '6175473'
/     