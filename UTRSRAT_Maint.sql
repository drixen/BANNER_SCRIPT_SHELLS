select * from utrsrat
where utrsrat_srat_code = 'GSTM'
and utrsrat_effect_date = to_date('01-JUL-2010','dd-MON-yyyy')
/

select * from utrsrat
where utrsrat_srat_code LIKE 'CO%'
and utrsrat_activity_date = to_date('23-JUN-2010','dd-MON-yyyy')

select * from utrsrat
where utrsrat_srat_code IN ('MC4A','MC4N','MC5A','MC5N','ME4A',
                            'ME4N','QC4A','QC4N','QC5A','QC5N',
                            'QE4A','QE4N')

select * from utrsrat
where utrsrat_srat_code IN ('BW14','BW15','BW16','BW17','BW18',
                            'BW19','BW20','BW22','BW23','BW24',
                            'BWH2','BWH5','BH01')

select * from utrsrat
where utrsrat_srat_code IN ('TP11','TP12','TP13','TP14','TP15',
                            'TP16','F849')

select * from utrsrat
where utrsrat_srat_code IN ('B3R2','B3R3','B4R2','B4R3')

select * from utrsrat
where utrsrat_srat_code IN ('BD01','BD02','BD03','BD04','BD05','BD06','BD07',
                            'BD08','BD09','BD10','BD11','BD12','BD13','BD14',
                            'BD15','BD16','BD17','BD18','BD19','BD20','BD21',
                            'BD22','BD23','BD24','BD25','BD26','BD27','BD28',
                            'BD29','BD30','BD31','BD32','BD33','BD34','BD35','BD36')

-----------------------------------------------------

select * from utrsrat
where utrsrat_srat_code IN ('F607','F608','F609','F610','F611','F612','F613',
                            'F614','F615','F616','F617','F618','F619','F620',
                            'F621','F622','F623')

update utrsrat
set utrsrat_effect_date = to_date('01-dec-2010', 'dd-mon-yyyy')
where utrsrat_srat_code in ('F609', 'F610', 'F611', 'F612')
and   utrsrat_effect_date = to_date('01-dec-2011','dd-MON-yyyy')

update utrsrat
set utrsrat_effect_date = to_date('01-jun-2012', 'dd-mon-yyyy')
where utrsrat_srat_code in ('F553', 'F554', 'F555', 'F678')
and   utrsrat_effect_date = to_date('25-MAY-2012','dd-MON-yyyy')

update utrsrat
set utrsrat_effect_date = to_date('25-may-2012', 'dd-mon-yyyy')
where utrsrat_srat_code in ('F553', 'F554', 'F555')
and   utrsrat_effect_date = to_date('25-MAY-2012','dd-MON-yyyy')

-----------------------------------------------------------------

select * from utrsrat
where utrsrat_srat_code IN ('MPC2','MPD2','MPP2','MPT2','MPE2','MPCH')

select * from utrsrat
where utrsrat_srat_code IN ('AH06','AH07','AH08','AH09','AH10','AH11','AH12')


select * from utrsrat
where utrsrat_srat_code like COD%


---------UPDATE------------------------

update utvsrat
set   utvsrat_code = 'STO3'
where utvsrat_code = 'ST03'

update utrsrat
set   utrsrat_srat_code = 'STO3'
where utrsrat_srat_code = 'STO3'

-----

update utvsrat
set   utvsrat_code = 'DNO2'
where utvsrat_code = 'DN02'

update utrsrat
set   utrsrat_srat_code = 'DNO2'
where utrsrat_srat_code = 'DN02'

-----------

update utvsrat
set   utvsrat_code = 'DCO5'
where utvsrat_code = 'DC05'

update utrsrat
set   utrsrat_srat_code = 'DCO5'
where utrsrat_srat_code = 'DC05'

-----------

update utvsrat
set   utvsrat_code = 'DNO4'
where utvsrat_code = 'DN04'

update utrsrat
set   utrsrat_srat_code = 'DNO4'
where utrsrat_srat_code = 'DN04'

----------DELETE-----------------------

delete from utrsrat
where utrsrat_srat_code = 'BLDR'

delete from utvsrat
where utvsrat_code = 'BLDR'
/

delete from utrsrat
where utrsrat_effect_date = to_date('01-JUL-2010','dd-MON-yyyy')
and utrsrat_SRAT_CODE = 'GSTM'
/

and utrsrat_base_amt = 23.97


-----------LIST -----------------------

select * from utvsrat
where utvsrat_code IN ('BW14','BW15','BW16','BW17','BW18',
                       'BW18','BW19','BW20','BW21','BW22',
                       'BW23','BW24')
/

update utvsrat
set   utvsrat_code = 'PW57'
where utvsrat_code = 'PW56'
/

-------------------------

update utrsrat
set utrsrat_effect_date = to_date('01-oct-2012', 'dd-mon-yyyy')
where utrsrat_srat_code IN ('BD01','BD02','BD03','BD04','BD05','BD06','BD07',
                            'BD08','BD09','BD10','BD11','BD12','BD13','BD14',
                            'BD15','BD16','BD17','BD18','BD19','BD20','BD21',
                            'BD22','BD23','BD24','BD25','BD26','BD27','BD28',
                            'BD29','BD30','BD31','BD32','BD33','BD34','BD35','BD36')
and   utrsrat_effect_date = to_date('07-NOV-2012','dd-MON-yyyy')


select * from utvsrat
where utvsrat_code = 'B1T!'




delete from utvsrat
where utvsrat_code = 'B1T!'
/

----------------------------------

select * from utrglcl
where utrglcl_code = 'TCGC'
/

delete from utrglcl
where utrglcl_code = 'TEBD'
/

delete from utrglcl
where utrglcl_code = 'TCRG'
/

