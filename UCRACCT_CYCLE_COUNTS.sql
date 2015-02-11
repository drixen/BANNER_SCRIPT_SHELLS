Query:
select ucracct_cycl_code, count(*)
from ucracct
where ucracct_status_ind = 'A'
group by ucracct_cycl_code
order by 2 desc
