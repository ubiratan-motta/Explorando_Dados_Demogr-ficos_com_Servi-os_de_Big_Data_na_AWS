select state, city,
	sum(population) as populacao_estado
from "populacaodb"."popula__o"
group by city, state
order by state, city;