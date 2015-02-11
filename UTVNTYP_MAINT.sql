
Select * from UTVNTYP
where UTVNTYP_code = '2006PM'
/

------------------------------

update utvntyp
set utvntyp_code = '06NAPM'
where utvntyp_CODE = '2006PM'
/


delete from UTVNTYP
where UTVNTYP_code = '815'
/

------------------------------

Manufacturer Record Layout:

 UTVNTYP_CODE                    NOT NULL VARCHAR2(4)
 UTVNTYP_NAME                    NOT NULL VARCHAR2(35)
 UTVNTYP_ACTIVITY_DATE           NOT NULL DATE
 UTVNTYP_USER_ID                 NOT NULL VARCHAR2(30)  