CREATE DATABASE Cirrhosis ;
SELECT * FROM cirrhosis_data ;

-- 1.Retrieve all the columns for patients who were censored (Status = 'C').
SELECT * FROM cirrhosis_data 
WHERE Status ="C";               -- 147 rows 

-- 2.Calculate the average age of male patients.
SELECT avg(Age) as male_avg_age 
from cirrhosis_data
where Sex = "M";               -- 20652

-- 3. Count the number of patients with ascites and hepatomegaly.
SELECT count(*) AS patients_with_ascites__hepatomegaly
FROM cirrhosis_data 
WHERE Ascites = "Y" AND Hepatomegaly ="Y" ;    -- 15

-- 4. Find the maximum bilirubin level recorded in the dataset.
SELECT max(Bilirubin)  as max_bilirubin 
from cirrhosis_data ;                    -- 28
-- 5. Calculate the average cholesterol level for patients who received
  -- D-penicillamine.
SELECT avg(Cholesterol)  avg_cholesterol_level 
FROM cirrhosis_data 
WHERE Drug = "D-penicillamine";           -- 366.09
-- 6. Retrieve the ID and N_Days for patients with edema despite diuretic
     -- therapy (Edema = 'Y').
SELECT ID , N_Days      
FROM cirrhosis_data
WHERE Edema ="Y" ;  -- 17 ROWS 
-- 7. Find the number of male and female patients in each stage of the disease.
SELECT stage , COUNT(stage)  , Sex  
from cirrhosis_data
GROUP BY stage, Sex
order by stage desc;
-- 8. Calculate the average prothrombin time for patients who died (Status = 'D').
SELECT AVG(Prothrombin) , Status
FROM cirrhosis_data
WHERE Status = "D";
-- 9. Retrieve the ID and Status for patients who had spiders (Spiders = 'Y') and
     -- hepatomegaly (Hepatomegaly = 'Y').
SELECT ID , STATUS 
FROM cirrhosis_data 
WHERE Spiders = "Y" AND Hepatomegaly ="Y";  -- 59  
-- 10. Find the minimum and maximum platelet counts recorded in the dataset.
SELECT MIN(Platelets) ,MAX(Platelets) 
FROM cirrhosis_data ;                       -- 62 and 563 
-- 11. Retrieve the ID and N_Days for patients who died (Status = 'D').
SELECT ID , STATUS 
FROM cirrhosis_data 
WHERE Status ="D";                          -- 111 
-- 12. Calculate the maximum and minimum Triglycerides levels in the dataset.
SELECT MIN(Tryglicerides
) , max(Tryglicerides)
from cirrhosis_data;                     -- 33 , 598
-- 13. Find the average Albumin level for each histologic stage of the disease
select avg(Albumin) , stage 
from cirrhosis_data
group by stage ;


-- 14. Calculate the total number of male and female patients in the dataset.
select count(id) , sex 
from cirrhosis_data
group by sex ;                  -- f-242 , m-34
-- 15. Find the average Platelets count for patients with and without ascites.
select avg(platelets) , ascites
from cirrhosis_data
group by Ascites ;              -- y-189.57  , n - 267.10 
-- 16. Retrieve the ID, Age, and Status of patients whose age is greater than 50
   -- and have hepatomegaly.
   select id , age , status 
   from cirrhosis_data 
   where age >50  and Hepatomegaly = "Y" ;        -- 142 ROWS 
-- 17. Retrieve the ID and Drug of patients who were prescribed a drug
    -- containing the term "penicillamine" in its name.
SELECT  ID , DRUG 
FROM cirrhosis_data 
WHERE DRUG LIKE  "%penicillamine%"   ;   -- 136 RECORDS  
-- 18. Retrieve the ID, Age, and Bilirubin levels of patients, ordered by increasing
      -- age.
SELECT ID , AGE , Bilirubin
FROM cirrhosis_data
ORDER BY AGE ;      
-- 19. Retrieve the ID, N_Days, and Status of patients, ordered by descending
   -- N_Days.
select id , n_days , status 
from cirrhosis_data
order by N_Days desc;   
 -- 20. Retrieve the ID, Age, and Cholesterol levels of patients younger than 50
    -- years old, ordered by increasing Cholesterol levels.
select id , age , cholesterol 
from cirrhosis_data 
where age < 50 
order by Cholesterol ; -- 0     