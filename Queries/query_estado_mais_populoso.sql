select state,
	sum(population) as populacao_estado
from "populacaodb"."popula__o"
group by state;