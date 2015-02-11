

SELECT * FROM ucracct
WHERE ucracct_cust_code = 2632059
AND   ucracct_prem_code = '2631168'
 

SELECT * FROM urrshis WHERE urrshis.URRSHIS_PREM_CODE = '2631168'
ORDER BY urrshis.URRSHIS_SERV_NUM,urrshis.URRSHIS_ACTION_DATE DESC
 
 
 

SELECT * FROM usraudt WHERE usraudt.USRAUDT_TABLE_NAME = 'UCRACCT'
AND usraudt.USRAUDT_KEY_VALUE_2 = '4488159'
 
SELECT * FROM usraudt WHERE usraudt.USRAUDT_TABLE_NAME = 'UCRSERV'
AND usraudt.USRAUDT_KEY_VALUE_2 = '4488159'
and ursaudt.usraudt_KEY_VALUE_3 = '2'
 
-------------------------------------------------------------------

SELECT usraudt_seq_num,
       usraudt_origin,
       usraudt_column_name,
       usraudt_user_id,
       usraudt_activity_date,
       usraudt_table_name,
       usraudt_action,
       usraudt_old_value,
       usraudt_new_value,
       usraudt_key_value_1 
FROM usraudt WHERE usraudt.USRAUDT_TABLE_NAME = 'UCRSERV'
and   ucrserv_date_activated between '01-jan-2006' and '01-nov-2006'

SELECT * FROM usraudt WHERE usraudt.USRAUDT_TABLE_NAME = 'UCRSERV'
and  usraudt_key_value_1 = '4488159'




and   to_char(urrshis_activity_date,'dd-mon-yyyy') = '31-oct-2005'


AND usraudt.USRAUDT_KEY_VALUE_2 = '4488159'
and ursaudt.usraudt_KEY_VALUE_3 = '2'
 