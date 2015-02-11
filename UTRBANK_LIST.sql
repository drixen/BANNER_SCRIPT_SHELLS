 select utrbank_code,
        utrbank_transit_1, 
        utrbank_transit_2,
        utrbank_transit_3,
        utrbank_cust_code_bank
from utrbank
where utrbank_code = '001'
/

select utrbank_code,
       utrbank_transit_1, 
       utrbank_transit_2,
       utrbank_transit_3,
       utrbank_cust_code_bank
from utrbank
where utrbank_transit_3 = '60952'
/

select * from utrbank
where utrbank_transit_3 = '08452'
/

select utrbank_code,
       utrbank_transit_1, 
       utrbank_transit_2,
       utrbank_transit_3,
       utrbank_cust_code_bank
from utrbank
where utrbank_transit_3 = '001'
/