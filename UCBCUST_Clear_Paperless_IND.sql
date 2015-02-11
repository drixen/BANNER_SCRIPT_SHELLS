
-------------TEST SCRIPT Below----------------


UPDATE ucbcust
set ucbcust_paperless_IND = ' '
    Where ucbcust_cust_code = 2400019



-------------Production UPDATE SCRIPT Below----------------

UPDATE ucbcust
set ucbcust_paperless_IND = ' '
    Where ucbcust_paperless_IND IS NOT NULL
