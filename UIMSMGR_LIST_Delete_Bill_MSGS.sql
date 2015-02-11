--------------List an Insert-------------


Select * from UIMSMGR.uxrains a
     where A.UXRAINS_INTP_CODE = 1089 

---------------------------------------


Select * from UIMSMGR.uxramsg a
     where A.UXRAmsg_bmsg_CODE = 1089 

Select count (*) UXRAmsg_bmsg_CODE
       from UIMSMGR.uxramsg a
       where A.UXRAmsg_bmsg_CODE = 1082 


--------------Delete a message

delete from uimsmgr.uxramsg a
     where a.uxramsg_bmsg_code = 1089


-------------Delete an Insert-------------


delete from uimsmgr.uxrains a
 where A.UXRAINS_INTP_CODE = 1089;


------------------------------------------
-------------List a Bill Message----------


 commit;*/
where utrglcl_code = 'TEBD'
/
