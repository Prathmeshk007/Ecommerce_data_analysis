create database ecommerce;
use ecommerce;
select * from orders;
# row in table
select count(*) from orders;
# total sum
select sum(Net_amount) as total from orders;
# top product
select product, sum(net_amount) as sales from orders group by product order by sales desc;
# top cities
select city, sum(net_amount) as sales from orders group by city order by sales desc;
# highest profit Product
select product, sum(Profit) as profit from orders group by product order by profit desc;
# Payment mode distribution
select Payment_Mode, count(*) as cont from orders group BY Payment_Mode ;
# order status 
select Order_status, count(*) as cont from orders group BY Order_status ;
# cancel order
select * from orders where Order_status="cancelled";
