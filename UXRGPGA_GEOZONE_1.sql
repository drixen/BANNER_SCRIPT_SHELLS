column uxrgeca_code heading 'GECA|Code'
column uxrgeca_town_code heading 'Town|Code'
column uxrgeca_muni_code heading 'Municipality|Code'
column uxrgeca_desc heading 'Description'

select uxrgeca_code,
       uxrgeca_town_code,
       uxrgeca_muni_code,
       uxrgeca_desc
from   uxrgeca
order by uxrgeca_code
/
