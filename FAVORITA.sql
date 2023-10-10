use la_favorita;
SELECT * FROM la_favorita.stores limit 5;
select * from transactions limit 5;

select 
	store_nbr,
    count(transaction)
from 
	transactions  
group by 
	store_nbr
order by 
	count(transaction) desc
limit 100;


select 
	s.city,
    count(t.transaction)
from 
	stores s
		left join 
	transactions t on s.store_nbr = t.store_nbr 
group by 
	s.city
order by 
	count(t.transaction) desc;
    
    
select 
	s.state,
    count(t.transaction)
from 
	stores s
		left join 
	transactions t on s.store_nbr = t.store_nbr 
group by 
	s.state
order by 
	count(t.transaction) desc;


