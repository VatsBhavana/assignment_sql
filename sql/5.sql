create table item_mast(
pro_id int not null,
pro_name varchar(20) not null,
pro_price float not null,
pro_com  int not null);

insert into item_mast values(101,'Mother_Board',3200.00,15);
insert into item_mast values(102,'Key_Board',450.00,16);

insert into item_mast values(103,'Zip_Drive',250.00,14);

insert into item_mast values(104,'Speaker',550.00,16);

insert into item_mast values(105,'Monitor',5000.00,11);

insert into item_mast values(106,'DVD drive',900.00,12);

insert into item_mast values(107,'CD drive',800.00,12);

insert into item_mast values(108,'Printer',2600.00,13);

insert into item_mast values(109,'Refill cartridge',350.00,13);

insert into item_mast values(110,'Mouse',250.00,12);

-- 20. From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600.
 -- Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com
 
 select pro_id,pro_name,pro_price,pro_com from item_mast where pro_price>=200 and pro_price<=600;
 
 -- 21. From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. Return avg.

select avg(pro_price) as average_price from item_mast where pro_com=16; 

-- 22. From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.'

select pro_name as 'Item_Name' , pro_price as 'Price_in_Rs' from item_mast;
 
 -- 23. From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. 
 -- Order the result by product price in descending, then product name in ascending. Return pro_name and pro_price.

SELECT pro_name, pro_price FROM item_mast WHERE pro_price >= 250 ORDER BY pro_price DESC, pro_name ASC

-- 24. From the following table, write a SQL query to calculate average price of the items for each company. 
-- Return average price and company

SELECT pro_com AS Company, AVG(pro_price) AS Average_Price FROM item_mast GROUP BY pro_com ORDER BY pro_com ASC;

commit;