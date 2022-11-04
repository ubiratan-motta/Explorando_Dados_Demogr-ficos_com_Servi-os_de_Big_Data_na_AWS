select region,
	sum(population)
from "populacaodb"."popula__o"
where region='Nordeste'
group by region;