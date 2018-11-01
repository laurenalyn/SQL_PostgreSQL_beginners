-- /*
-- INSERTING OUR DATA INTO THE ADDRESS TABLE
-- */ 

INSERT INTO address (street, city, postcode)
VALUES ('Fenwick Street','Brighton','BN89ST');
                     
INSERT INTO address (street, city, postcode)
VALUES ('George Street','Brighton','BN83ET');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Liverpool Avenue','Worthing','BN120RW');

INSERT INTO address (street, city, postcode)
VALUES ('Sea Lane','Shoreham','SW121QP');
                     
INSERT INTO address (street, city, postcode)
VALUES ('George Street','Brighton','BN83ET');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Fenwick Street','Brighton','BN89ST');
             
INSERT INTO address (street, city, postcode)
VALUES ('Fenwick Street','Brighton','BN89ST');
                     
INSERT INTO address (street, city, postcode)
VALUES ('North Lane','Brighton','BN85CV');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Main Road','Hove','BN79MG');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Church Street','Worthing','BN124DQ');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Salisbury Street','Hove','BN72ZT');
                     
INSERT INTO address (street, city, postcode)
VALUES ('South Lane','Brighton','BN88OP');
                     
INSERT INTO address (street, city, postcode)
VALUES ('North Lane','Brighton','BN85CV');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Fenwick Street','Brighton','BN89ST');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Fortnum Road','Hove','BN71KG');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Scarborough Avenue','Brighton','BN81AZ');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Jubilee Street','London','N117TY');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Bridge Road','London','SW39IJ');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Ocean Road','Eastbourne','EN124WT');
                     
INSERT INTO address (street, city, postcode)
VALUES ('High Street','Worthing','BN120KL');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Station Road','Brighton','BN84WS');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Goss Street','Hove','BN79SA');
                     
INSERT INTO address (street, city, postcode)
VALUES ('Church Street','Brighton','BN80JC');
                     
INSERT INTO address (street, city, postcode)
VALUES ('High Street','Brighton','BN82HS');

/*
INSERTING OUR DATA INTO THE EMPLOYEES TABLE
*/ 

INSERT INTO employees (first_name, last_name, pay, hours, days_off, address_id)
VALUES ('Karen','Lam',10.25,130,2,1);

INSERT INTO employees (first_name, last_name, pay, hours, days_off, address_id)
VALUES ('Olivia','Burton',13.50,140,0,2);

INSERT INTO employees (first_name, last_name, pay, hours, days_off, address_id)
VALUES ('Nigel','Patterson',11.00,90,5,3);

INSERT INTO employees (first_name, last_name, pay, hours, days_off, address_id)
VALUES ('Emily','Smith',10.00,100,1,4);

/* 
INSERTING OUR DATA INTO THE CUSTOMERS TABLE
*/ 

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('John','Smith','M','01903765032','jsmith@gmail.com','20160416',5);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('John','Burrows','M','01903733211','jburrows@gmail.com','20170113',6);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('John','','M','','jburrows@gmail.com','20170113',NULL);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Susan','Andrews','F','01304333492','sandwoman@gmail.com','20140222',7);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Emily','Simmonds','F','01708454567','emilysimmonds@gmail.com','20170310',8);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('George','Simmonds','M','01708454567','gsimmonds@gmail.com','20170310',8);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Emily','Warburton','F','01903909009','ewarbs@gmail.com','20151109',9);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('David','Smith','M','01503665382','dsmith@gmail.com','20160510',10);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Jennifer','Jang','F','01944225042','jenjan@gmail.com','20160510',11);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Emma','Hand','F','01990375099','handemma@gmail.com','20170423',12);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Joseph','Small','M','01990375099','smallj@gmail.com','20161225',12);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Gill','Blake','F','01924123032','gblake@gmail.com','20150202',13);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('David','Richardson','M','01993910088','davrich@gmail.com','20160729',14);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Michael','Edward','M','01287435932','medwards@gmail.com','20160402',15);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Edward','Ball','M','01902765872','balle@gmail.com','20141020',16);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Emily','Edwards','F','01922665192','eemilye@gmail.com','20160416',17);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Paul','Chen','M','01903763042','chendog@gmail.com','20150416',18);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Pauline','Harris','F','01904964165','pharris@gmail.com','20170216',19);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Pheobe','Chang','F','02203743232','pchang@gmail.com','20160806',20);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Milly','West','F','01904785038','mwest@gmail.com','20141123',21);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Simon','West','M','01303195037','simonwest@gmail.com','20170401',22);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Shannon','West','F','01303195037','swest@gmail.com','20170401',22);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Olivia','Penny','F','01903765765','olipen@gmail.com','20160320',23);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Samantha','Fox','F','01903765765','samfox@gmail.com','20160920',23);

INSERT INTO customers (first_name, last_name, gender, telephone, email, date_joined, address_id)
VALUES ('Sam','Stevens','M','01993805044','sstevenss@gmail.com','20170128',24);

/*
INSERTING OUR DATA INTO ORDERS TABLE
*/ 

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,1,2,49.50,'20170102');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (9,2,1,49.50,'20170103');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (22,13,1,75.00,'20170105');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (7,3,1,49.50,'20170109');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (9,10,4,25.00,'20170111');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (NULL,10,3,25.00,'20170111');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (1,11,2,20.00,'20170111');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (13,8,2,69.00,'20170114');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,4,1,60.00,'20170116');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (20,6,3,65.00,'20170116');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (17,12,1,20.00,'20170117');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (8,2,2,49.50,'20170121');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (2,10,2,25.00,'20170122');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (16,1,2,49.50,'20170124');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (3,13,1,75.00,'20170128');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (4,11,2,20.00,'20170202');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (12,2,1,49.50,'20170202');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (18,3,2,49.50,'20170203');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (23,6,4,65.00,'20170204');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (1,13,2,75.00,'20170205');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (1,11,2,20.00,'20170209');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,1,2,49.50,'20170210');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (7,4,1,60.00,'20170211');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (10,10,3,25.00,'20170213');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (17,12,2,20.00,'20170215');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (6,1,1,49.50,'20170216');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (4,10,2,25.00,'20170216');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (21,3,1,49.50,'20170220');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (8,13,1,75.00,'20170220');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (12,11,5,20.00,'20170221');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (12,12,3,20.00,'20170225');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,8,2,69.00,'20170227');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (3,1,2,49.50,'20170301');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (2,10,1,25.00,'20170302');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (20,4,2,60.00,'20170302');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (22,2,2,49.50,'20170302');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (14,4,1,60.00,'20170302');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (3,3,3,49.50,'20170304');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (2,2,2,49.50,'20170305');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (13,10,2,25.00,'20170307');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (15,11,1,20.00,'20170308');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (16,1,2,49.50,'20170312');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (11,11,2,20.00,'20170312');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,11,2,20.00,'20170314');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (5,12,2,20.00,'20170314');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (7,1,1,49.50,'20170317');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (8,13,1,75.00,'20170318');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (19,6,1,65.00,'20170319');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (20,10,2,25.00,'20170321');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (15,8,1,69.00,'20170322');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (18,4,2,60.00,'20170323');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (1,1,2,49.50,'20170324');

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (2,3,1,49.50,'20170327'); 

INSERT INTO orders (customer_id, product_id, quantity, price, order_date)
VALUES (17,12,3,20.00,'20170330');