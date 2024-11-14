-- Scoped query
select * from ethereum.raw.logs order by block_timestamp desc limit 100;

-- Full scan type of query
select date_trunc('week', block_timestamp) as date, 
sum(gas_price) as gas_price
from ethereum.raw.transactions
where date between date_trunc('week', CAST('2020-01-01' AS DATE)) 
and date_trunc('week', CAST('2024-12-31' AS DATE))
group by all;

