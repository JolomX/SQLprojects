-- number of young adults females arrested with possession of marijuana
SELECT 
	sex,
    description,
    category,
    address,
    COUNT(sex) AS arrested_young_adults
FROM marijuana_arrests
WHERE sex = 'F' AND description = 'Ucsa possession marijuana'
GROUP BY sex, description, category, address
ORDER BY arrested_young_adults DESC;

-- number of young adult males arrested with possession of marijuana
SELECT 
	sex,
    description,
    category,
    address,
    COUNT(sex) AS arrested_young_adults
FROM marijuana_arrests
WHERE sex = 'M' AND description = 'Ucsa possession marijuana'
GROUP BY sex, description, category, address
ORDER BY arrested_young_adults DESC;

-- number of white female young adults arrested with possession of marijuana 

SELECT 
	sex,
    mp.age,
    mp.race,
    mp.type,
    ma.address,
    COUNT(sex) AS young_white_females_arrested
FROM marijuana_arrests ma
JOIN marijuana_possession mp
	USING (sex)
WHERE age < 35 AND race = 'W' AND sex = 'F'
GROUP BY sex, mp.age, mp.race, mp.type, ma.address
ORDER BY age DESC;

-- number of white male young adults arrested with possession of marijuana 

SELECT 
	sex,
    mp.age,
    mp.race,
    mp.type,
    ma.address,
    COUNT(sex) AS young_white_male_arrested
FROM marijuana_arrests ma
JOIN marijuana_possession mp
	USING (sex)
WHERE age < 35 AND race = 'W' AND sex = 'M'
GROUP BY sex, mp.age, mp.race, mp.type, ma.address
ORDER BY age DESC;

-- number of white males arrested with possession of marijuana 

SELECT 
	sex,
    mp.age,
    mp.race,
    mp.type,
    ma.address,
    COUNT(sex) AS white_male_arrested
FROM marijuana_arrests ma
JOIN marijuana_possession mp
	USING (sex)
WHERE race = 'W' AND sex = 'M'
GROUP BY sex, mp.age, mp.race, mp.type, ma.address
ORDER BY age DESC;


-- number of white females arrested with possession of marijuana 

SELECT 
	sex,
    mp.age,
    mp.race,
    mp.type,
    ma.address,
    COUNT(sex) AS white_female_arrested
FROM marijuana_arrests ma
JOIN marijuana_possession mp
	USING (sex)
WHERE race = 'W' AND sex = 'F'
GROUP BY sex, mp.age, mp.race, mp.type, ma.address
ORDER BY age DESC;

-- number arrested with possession of marijuana IN NEW YORK

SELECT 
	sex,
    mp.age,
    mp.race,
    mp.type,
    ma.address,
    COUNT(sex) AS black_arrested
FROM marijuana_arrests ma
JOIN marijuana_possession mp
	USING (sex)
WHERE address LIKE '%NEW YORK%'
GROUP BY sex, mp.age, mp.race, mp.type, ma.address
ORDER BY age DESC;

-- number of White arrested with possession of marijuana IN NEW YORK

SELECT 
	sex,
    mp.age,
    mp.race,
    mp.type,
    ma.address,
    COUNT(sex) AS white_arrested
FROM marijuana_arrests ma
JOIN marijuana_possession mp
	USING (sex)
WHERE address LIKE '%NEW YORK%' AND race = 'W'
GROUP BY sex, mp.age, mp.race, mp.type, ma.address
ORDER BY age DESC;

-- number of White Female arrested with possession of marijuana IN NEW YORK

SELECT 
	sex,
    mp.age,
    mp.race,
    mp.type,
    ma.address,
    COUNT(sex) AS white_arrested
FROM marijuana_arrests ma
JOIN marijuana_possession mp
	USING (sex)
WHERE address LIKE '%NEW YORK%' AND race = 'W' AND sex = 'F'
GROUP BY sex, mp.age, mp.race, mp.type, ma.address
ORDER BY age DESC;

-- number of Blacks arrested with possession of marijuana IN NEW YORK

SELECT 
	sex,
    mp.age,
    mp.race,
    mp.type,
    ma.address,
    COUNT(sex) AS white_arrested
FROM marijuana_arrests ma
JOIN marijuana_possession mp
	USING (sex)
WHERE address LIKE '%NEW YORK%' AND race = 'B'
GROUP BY sex, mp.age, mp.race, mp.type, ma.address
ORDER BY age DESC;
