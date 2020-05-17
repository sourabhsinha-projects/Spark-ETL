--create structure for the stock_prices
drop table stock_price;

create table stock_price (
stock_date date,
openning_price float,
high_price float,
low_price float,
closing_price float,
volume float,
ticker varchar
);

select * FROM stock_price;
--TRUNCATE  stock_price;

drop table stock_monthly_prices;

--Create another table (stock_monthly_prices), this table will contain just the following columns:
----a) ticker
----b)avg value for the month
create table stock_monthly_prices
as
select to_char(stock_date, 'Mon-yyyy') yr_month, ticker, avg(closing_price) avg_closing_price
from stock_price
group by to_char(stock_date, 'Mon-yyyy'), ticker
;

select * from stock_monthly_prices;

