
Select * from utvmanf
where utvmanf_code = '815'
/

------------------------------

delete from utvmanf
where utvmanf_code = '815'
/

------------------------------

Manufacturer Record Layout:

 UTVMANF_CODE                    NOT NULL VARCHAR2(4)
 UTVMANF_NAME                    NOT NULL VARCHAR2(35)
 UTVMANF_ACTIVITY_DATE           NOT NULL DATE
 UTVMANF_USER_ID                 NOT NULL VARCHAR2(30)  