create database Super_Market
use Super_Market


CREATE TABLE product (
  p_id INT PRIMARY KEY identity (1,1),
  p_name VARCHAR(255) NOT NULL,
  p_price DECIMAL(10,2) NOT NULL,
  p_des TEXT
)
insert into product
values
('Chickens',150.50,'Cupcake 1500 gram'),
('Meat',250.20,'Meat 750 gram'),
('bread',50.05,'bread 500 gram'),
('Cake',150.50,'Cake 400 gram')

CREATE TABLE users (
  u_id INT PRIMARY KEY identity (1,1),
  u_name VARCHAR(255) NOT NULL,
  u_pass VARCHAR(255) NOT NULL,
  u_address VARCHAR(255) NOT NULL,
  u_phone VARCHAR(20) NOT NULL
)
select * from users
insert into users
values
('abdalrahman','123','alagamy','01254564654'),
('mohamed','022','smo7a','012548862244'),
('abdo','111','sidi gaber','012354564654'),
('omar','542','alnaser','012582014654')

CREATE TABLE orders (
  order_id INT PRIMARY KEY identity (1,1),
  [user_id] INT,
  order_Date DATETIME NOT NULL,
 FOREIGN KEY ([user_id]) REFERENCES users(u_id),
)
insert into orders
values
(1,'2023-12-31 20:00:00'),
(2,'2023-12-20 20:00:00'),
(3,'2023-10-15 20:00:00'),
(4,'2023-8-2 20:00:00')

CREATE TABLE order_details (
  detail_id INT ,
  order_id INT NOT NULL,
  p_id INT NOT NULL,
  quantity INT NOT NULL,
  subtotal DECIMAL(10,2) NOT NULL,
  primary key (detail_id,order_id),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (p_id) REFERENCES product(p_id)
)
insert into order_details
values 
(1,1,1,3,451.5),
(2,2,3,2,500.4)

CREATE TABLE payment (
  payment_id INT PRIMARY KEY identity (1,1),
  order_id INT NOT NULL,
  amount DECIMAL(10,2) NOT NULL,
  payment_Date DATETIME NOT NULL,
  payment_Method VARCHAR(50) ,
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
)
   insert into payment
   values
   (1,5,'2023-2-25 20:00:00','cash'),
   (2,7,'2023-3-15 20:00:00','visa'),
   (3,4,'2023-8-29 20:00:00','cash'),
   (4,8,'2023-1-13 20:00:00','visa')


CREATE TABLE shopping_carts (
  cart_id INT PRIMARY KEY identity (1,1),
  [user_id] INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL,
  FOREIGN KEY ([user_id]) REFERENCES users(u_id),
  FOREIGN KEY (product_id) REFERENCES product(p_id)
)
insert into shopping_carts
values
(1,1,5),
(2,2,3),
(3,3,7),
(4,4,2)
		