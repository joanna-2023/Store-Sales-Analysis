# Inserting sample data - 

TRUNCATE retailsales.customers;

#Stores:
INSERT INTO retailsales.customers (customerId, name,address,city,region,country) 
VALUES (200,"Alan Due","123 Handson West St.","Calgary","West","Canada");
INSERT INTO retailsales.customers (customerId, name,address,city,region,country) 
VALUES (201,"Amy Foster","12 Lowels St.","Calgary","West","Canada");
INSERT INTO retailsales.customers (customerId, name,address,city,region,country) 
VALUES (202,"Kyle Samuels","3 Chirston St.","Calgary","West","Canada");

INSERT INTO retailsales.customers (customerId, name,address,city,region,country) 
VALUES (302,"Andy Claus","12 Cheiming St.","San Francisco","West","USA");
INSERT INTO retailsales.customers (customerId, name,address,city,region,country) 
VALUES (302,"Sam Avens","1 Sait St.","San Francisco","West","USA");
INSERT INTO retailsales.customers (customerId, name,address,city,region,country) 
VALUES (302,"James Damian","34 Durlson St.","San Francisco","West","USA");
