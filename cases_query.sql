WITH total_cases AS 
	(SELECT group_name as name, count(*) as all_test_cases, 
	sum(CASE 
		WHEN status = 'OK' THEN 1
		ELSE 0
		END) as passed_test_cases
 	FROM test_cases GROUP BY group_name)

SELECT total_cases.name, passed_test_cases, passed_test_cases*test_groups.test_value as total_value FROM total_cases JOIN test_groups ON total_cases.name = test_groups.name;
