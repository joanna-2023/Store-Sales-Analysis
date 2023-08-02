# Inserting sample data - 

TRUNCATE `retailsales`.`salesPeople`;
#Salespeople:
INSERT INTO retailsales.salesPeople (employeeId,name,address,city,region,country,storeId) 
VALUES (100,"Ann McCain","123 Forest St.","Calgary","West","Canada",110);
INSERT INTO retailsales.salesPeople (employeeId,name,address,city,region,country,storeId) 
VALUES (101,"Eliot Bain","123 Entry St.","Los Angeles","West","USA",111);
INSERT INTO retailsales.salesPeople (employeeId,name,address,city,region,country,storeId) 
VALUES (102,"Alice Newman","23 Somerstreet","Los Angeles","West","USA",111);