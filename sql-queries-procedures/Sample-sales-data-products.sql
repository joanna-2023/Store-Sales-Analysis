# Inserting sample data - 

TRUNCATE `retailsales`.`products`;

#Product line:
INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12344,"Multigrain bread","Wholemeal bread with grains",4.55,2,"lb");
INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12345,"White bread","White bread, gluten free",4.95,2,"lb");

INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12346,"Peanut butter","Crunchy peanut butter",6.95,250,"g");
INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12347,"Butter","Milky butter spread",4.95,250,"g");
INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12348,"Olive oil spread","Pure olive oil spread - vegeterian",5.95,250,"g");

INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12349,"Maxuel coffee","Medium roast maxuel house coffee",7.95,300,"g");
INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12350,"Black tea","Pure black tea",6.95,300,"g");

INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12351,"Orange juice","100% fruit orange juice",7.95,1,"l");
INSERT INTO retailsales.products (productId,name,description,cost,weight,weightMeasure) 
VALUES (12352,"Apple juice","100% fruit apple juice",7.95,1,"l");