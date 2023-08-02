# Inserting sample data - 

TRUNCATE retailsales.stores;

#Stores:
INSERT INTO retailsales.stores (name,storeId,address,city,region,country) 
VALUES ("Pantry Shops, Calgary",110,"123 Forest West St.","Calgary","West","Canada");
INSERT INTO retailsales.stores (name,storeId,address,city,region,country) 
VALUES ("Pantry Shops, SF",111,"123 Pantry St.","San Francisco","West","USA");