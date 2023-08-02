# Successfully creates stored procedure: 
CREATE PROCEDURE UPDATE_SALARY_BASED_ON_RATING 
	(IN r INT, IN emplNum INT) 
    LANGUAGE SQL MODIFIES SQL DATA 
    UPDATE `retailsales`.`salesPeople`
		SET `salary` = 2000.0 * r / 10.0, `rating` = r
        WHERE `id` = emplNum

# Automatic - 
#CREATE PROCEDURE Update_Salary
	#(IN employeeId INT, IN rating INT)
	#LANGUAGE SQL MODIFIES SQL DATA
		#CASE rating
			#WHEN 1 THEN
				#UPDATE `retailsales`.`salesPeople` 
					#SET `salary` = (`3000`);
			#WHEN 2 THEN
			#UPDATE retailsales.salesPeople 
				#SET salary = (salary * 1.15);
			#ELSE
			#UPDATE retailsales.salesPeople 
				#SET salary = (salary * 1.0);
		#END CASE;