Select * from uabadje
where uabadje_adjm_code = 'INBD'
and   to_char(uabadje_activity_date,'dd-mon-yyyy') = '29-jul-2005'
and   uabadje_user_id = 'DRIXEN'



--------------------------------------------------------

delete from UABADJE
where UABADJE_origin_AR_trans = '122324532'
and   to_char(uabadje_activity_date,'dd-mon-yyyy') = '29-jul-2005'
and   uabadje_user_id = 'DRIXEN'
and   uabadje_adjm_code = 'INBD'
/
