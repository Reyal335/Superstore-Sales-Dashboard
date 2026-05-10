-- Aggregation Functions
SELECT customer_id, order_id, profit, order_year FROM orders where customer_id ='BH-11710' group by order_id, order_year


-- Total revenue, profit_margin by year
SELECT
	order_year,
	COUNT(*)	AS total_orders,
	COUNT(customer_id)	AS orders_with_cust,
	SUM (profit)	AS revenue,
	AVG(profit)		AS average_revenue,
	MAX(profit)		AS largest_revenue,
	MIN(profit)		AS smallest_order
FROM orders
GROUP BY order_year;


-- Top 10 sub-categories by profit

SELECT 
	sub_category,
	SUM(profit) as total_revenue
FROM orders
GROUP BY sub_category
ORDER BY total_revenue
DESC LIMIT 10;


-- Region performance with YoY grwoth
-- category
WITH category_ranked AS (
	SELECT
		category,
		product_name,
		SUM(profit),
		RANK() OVER (
			PARTITION BY category
			ORDER BY SUM(profit) DESC
		) AS rnk
	FROM orders
	GROUP BY category, product_name
)
SELECT * 
FROM category_ranked
WHERE rnk <= 3;

-- Month-over-Month revenue growth
WITH yearly AS (
	SELECT 
		order_year,
		COUNT(*) AS order_count,
		SUM(profit) AS revenue
	FROM ORDERS
	GROUP BY order_year
)
SELECT
	order_year,
	revenue,
	LAG(revenue) OVER (ORDER BY order_year) AS prev_year_rev,
	100 *(revenue - LAG(revenue) OVER (ORDER BY order_year))
	/ NULLIF(LAG(revenue) OVER (ORDER BY order_year), 0) as yearly_growth_pct
FROM yearly
ORDER BY order_year
