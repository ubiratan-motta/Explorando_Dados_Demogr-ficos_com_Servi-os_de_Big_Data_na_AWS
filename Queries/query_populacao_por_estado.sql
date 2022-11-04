select state,
	sum(population)
from "populacaodb"."popula__o"
where state='São Paulo'
group by state;