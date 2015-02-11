
select uyroisd_otiv_model,
       uyroisd_ptyp_code
from uyroisd
where uyroisd_user_id = 'DRIXEN'
/

* * * * * * * * * * * * * * * *
 

delete from uyroisd
where uyroisd_user_id = 'DRIXEN'
and   uyroisd_otiv_model = '152E-36M-OH'
/

------Michell Yam Fix---------------------

update uyroisd
set uyroisd_otiv_model = '59MN7A060V17-14'
where uyroisd_otiv_model = ' 59MN7A060V17-14';


-----------------------------------

update uyroisd
set uyroisd_otiv_model = 'GSX130301A'
where uyroisd_otiv_model = 'GSX1300301A';


GSX1300301A

update uyroisd
set uyroisd_OTIV_MODEL = '6G5065SN-PDV-02'
where uyroisd_OTIV_MODEL = '6G5065SM-PDV-02'

update uyroisd
set uyroisd_OTIV_MODEL = 'RP180FV'
where uyroisd_OTIV_MODEL = 'RR180FV'

select * from uyroisd 
where uyroisd_otiv_model = '6G50TBFNA'

select uibotiv_code
 from uibotiv 
where uibotiv_model = '6G50TBFNA'

update uibotiv
set uibotiv_model = '6G50TBFNA-02'
where uibotiv_model = '6G50TBFNA';

--------------This next script updates Cap cost and install cost----------

update uyroisd
set uyroisd_otiv_model = '38TZA018',
    UYROISD_CAPITAL_COST = 1226.53,
    UYROISD_INSTALL_COST = 635.29
where UYROISD_OTIV_MODEL = '38TZA018-3';

commit;

--------------------

update uyroisd
set UYROISD_CAPITAL_COST = 1226.53,
    UYROISD_INSTALL_COST = 635.29
where UYROISD_OTIV_MODEL = '38TZA018-3';

commit;

------------------------------------------------------
