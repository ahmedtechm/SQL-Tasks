
CREATE TABLE vendor (
  vendor_id INT PRIMARY KEY,
  vendor_name VARCHAR(50),
  city VARCHAR(50));

INSERT INTO vendor (vendor_id, vendor_name, city)
VALUES (1, 'Ahmed', 'Muscat'),
       (2, 'Abdulhamid ', 'Samail');

SELECT * FROM vendor;


CREATE TABLE product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  price DECIMAL(10, 2));

INSERT INTO product (product_id, product_name, price)
VALUES (1, 'Apple', 1.99),
       (2, 'Banana', 0.99);

SELECT * FROM product;


CREATE TABLE supply (
  supply_id INT PRIMARY KEY,
  vendor_id INT,
  product_id INT,
  quantity INT,
  date_supplied DATE,
  FOREIGN KEY (vendor_id) REFERENCES vendor(vendor_id),
  FOREIGN KEY (product_id) REFERENCES product(product_id));



INSERT INTO supply (supply_id, vendor_id, product_id, quantity, date_supplied)
VALUES (1, 1, 1, 100, '2023-02-10'),
       (2, 2, 2, 200, '2023-02-12');

SELECT * FROM supply;




CREATE DATABASE myGroceryShop;


--->> 7. Write SQL code to find all vendors details.

SELECT * FROM vendor;



--->> 8. Write SQL code to search vendors by city name.

SELECT * FROM vendor WHERE city = 'Muscat';

--->> 9. Write SQL code to display all products available in the shop in descending order.

SELECT * FROM product ORDER BY product_name DESC;

--->> 10. Write SQL code to change the size of any column in the table

ALTER TABLE vendor ALTER COLUMN vendor_name VARCHAR(70);



--->> 11. Apply Arithmetic Expressions to the price column

UPDATE product SET price = price * 1.1;

--->> 12. Restrict the rows that are returned by using (where) clause + Comparison Operator

SELECT * FROM product WHERE price > 1.50;

--->> 13. Eliminating the duplicate rows by using (DISTINCT)

SELECT DISTINCT city FROM vendor;

--->> 14. Fetch data from tables using different type of joins 

SELECT vendor.vendor_name, product.product_name, supply.quantity
FROM vendor
INNER JOIN supply
ON vendor.vendor_id = supply.vendor_id
INNER JOIN product
ON product.product_id = supply.product_id;


SELECT vendor.vendor_name, product.product_name, supply.quantity
FROM vendor
LEFT JOIN supply
ON vendor.vendor_id = supply.vendor_id
LEFT JOIN product
ON product.product_id = supply.product_id;


SELECT vendor.vendor_name, product.product_name, supply.quantity
FROM vendor
RIGHT JOIN supply
ON vendor.vendor_id = supply.vendor_id
RIGHT JOIN product
ON product.product_id = supply.product_id;


SELECT vendor.vendor_name, product.product_name, supply.quantity
FROM vendor
FULL OUTER JOIN supply
ON vendor.vendor_id = supply.vendor_id
FULL OUTER JOIN product
ON product.product_id = supply.product_id;
