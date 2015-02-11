column utrstrt_geca_code heading 'GECA|Code'
column utrstrt_street_name heading 'Street|Name'
column utrstrt_zipc_code heading 'Postal|Code'
column utrstrt_zipc_seq_num heading 'Seq|Number'

select utrstrt_geca_code,
       utrstrt_street_name,
       utrstrt_zipc_code,
       utrstrt_zipc_seq_num
from   utrstrt
/

