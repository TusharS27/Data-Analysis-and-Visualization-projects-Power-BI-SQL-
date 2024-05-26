#KPI's requirements
#1. Total Revenue
#2. Average order value
#3. Total pizzas sold
#4. Total orders
#5. Average pizzas per order

#Daily trend for total orders
#Monthly trend of total orders
#Percentage of sales by pizza category
#%age of sales by pizza size
#Total pizzas sold by Pizza category
#Top 5 best sellers by Revenue, total qty and total orders
#Bottom 5 worst sellers by rever=nue, total qty and total orders

create database Pizza_DB;
use Pizza_DB;
create table pizza_sales(pizza_id int,
						order_id int,
                        pizza_name_id varchar(50),
                        quantity tinyint,
                        order_date date,
                        order_time time,
                        unit_price float,
                        total_price float,
                        pizza_size varchar(50),
                        pizza_category varchar(50),
                        pizza_ingredients varchar(200),
                        pizza_name varchar(50));
                        
use pizza_db;
select * from pizza_sales;

#KPI1. Total revenue
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;
#Average Order Value
SELECT SUM(total_price)/count(distinct(order_id)) as Avg_order_value from pizza_sales;

select * from pizza_sales;

select count(distinct(order_id)) from pizza_sales;

#Average pizzas per order;
SELECT round(SUM(quantity)/count(distinct(order_id)),2) as Avg_pizza_per_order from pizza_sales;

select sum(quantity) from pizza_sales;

#Total pizza sold

SELECT SUM(quantity) as Total_pizza_sold from pizza_sales;


select * from pizza_sales;
#%age of sales by pizza category
select pizza_category as Pizza_Category, round(SUM(total_price)*100/(SELECT SUM(total_price) from pizza_sales where month(order_date) = 1),2)
 as percentage_sales from pizza_sales
where month(order_date) = 1
group by 1
#having 1 = 'Classic'
order by 2 desc;
Select * from pizza_sales;
#%age of sales by pizza size

SELECT pizza_name as pizza_name, count(distinct(order_id)) as Total_orders from pizza_sales
group by 1
order by 2
limit 5;

SELECT user()
                        
                        
                        



