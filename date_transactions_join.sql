-- SELECT * FROM sales.date;
SELECT st.*, sd.*
FROM sales.transactions st
INNER JOIN sales.date as sd ON st.order_date = sd.date
where sd.year=2020;

SELECT SUM(st.sales_amount)
FROM sales.transactions st
INNER JOIN sales.date as sd ON st.order_date = sd.date
where sd.year=2020 and st.market_code='Mark001';

SELECT distinct product_code FROM sales.transactions where market_code='Mark001';