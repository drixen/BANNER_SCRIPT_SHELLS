--This is a TEST script that will identify Customre last name fields with a non printable character in them. 

----------------------------------------------------------------------

select * from ucbcust a		
where A.UCBCUST_LAST_NAME like '%RELIANCE HOME COMFORT%'		

----------------------------------------------------------------------

select * from ucbcust
where ucbcust_cust_code = 7886450 


----------------------------------------------------------------------
