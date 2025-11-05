create database nykaa;
use nykaa;
CREATE TABLE customers (
  customer_id varchar(50) PRIMARY KEY,
  name varchar(100),
  email varchar(50),
  phone varchar(15),
  join_date DATETIME,
  city varchar(50),
  state varchar(50),
  gender varchar(50),
  date_of_birth DATETIME
);
 CREATE TABLE products (
  product_id varchar(50) PRIMARY KEY,
  sku varchar(50),
  name varchar(50),
  brand varchar(50),
  category varchar(50),
  price REAL,
  cost REAL,
  stock_quantity int,
  avg_rating REAL,
  num_reviews INTEGER
);
CREATE TABLE orders (
  order_id varchar(50) PRIMARY KEY,
  customer_id varchar(50),
  order_date DATETIME,
  status varchar(100),
  shipping_address varchar(200),
  shipping_cost int,
  items_total REAL,
  order_total REAL
);
CREATE TABLE order_items (
  order_item_id varchar(50) PRIMARY KEY,
  order_id varchar(50),
  product_id varchar(50),
  sku varchar(50),
  quantity int,
  unit_price REAL,
  total_price REAL
);
 CREATE TABLE payments (
  payment_id varchar(50) PRIMARY KEY,
  order_id varchar(50),
  payment_method varchar(50),
  payment_date DATETIME,
  amount REAL,
  payment_status varchar(50)
);
CREATE TABLE reviews (
  review_id varchar(50) PRIMARY KEY,
  product_id varchar(50),
  customer_id varchar(50),
  rating int,
  title varchar(200),
  comment varchar(50),
  review_date DATETIME,
  verified_purchase BOOLEAN
);
-- Schema created successfully for Nykaa E-commerce SQL Analytics Project

