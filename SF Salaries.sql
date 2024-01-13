Create Database data_new;
USE data_new;
-- 2 show only the EmployeeName and Jobtitle columns-- 
SELECT EmployeeName,JobTitle FROM salaries;
-- 3 Show the number of the employees in the table.-- 
SELECT COUNT(*) FROM salaries;
-- 4  show unique job title in the table-- 
Select distinct JobTitle FROM salaries;
-- 5. Show the Job title and overtime pay for all employees with overtimepay grater than 50000.--  
Select JobTitle,Overtimepay From Salaries Where Overtimepay >50000;
-- 6 show the average base pay of all Employees.-- 
Select AVG(Basepay) as "AVG BasepPay"From salaries;
-- 7 Show the top 10 highest paid employee.-- 
select EmployeeName,Totalpay From salaries 
order by Totalpay desc 
limit 10;
-- 8 Show the average of basepay, Overtimepay, and other pay of each employee ;-- 
Select EmployeeName, (BasePay+OvertimePay+TotalPay)/3 From salaries;
-- 9 Show the employees who have the word "Manager" in their job title.-- 
Select EmployeeName,JobTitle From Salaries Where JobTitle LIKE '%MANAGER%';
-- 10 Show the employees with a job title not equal to Manager --
Select EmployeeName,JobTitle FROM salaries
Where JobTitle !='%Manager%'; 
-- 11 Show all employees with a total pay between 500000 and 75000.-- 
Select * FROM salaries Where TotalPay>=50000 and TotalPay <=75000;
-- 12  show all employee with a basepay less than 50000 or total pay is greater than 100000--
 Select * FROM salaries
 where BasePay<=50000 and TotalPay>100000;  
 -- 13 show all employee with a total pay benifits value between 1250000 and 150,000 
 -- and a job title containing the word "Director"
 Select * FROM salaries
 Where TotalPayBenefits between 125000 and 150000 
 and JobTitle LIKE "%Director%";
 -- 14 show all employees order by their total pay benifits in decending order.
 Select * FROM salaries
 order by TotalPayBenifits ;
 -- 15 1t Show all the job titles with an average basepay of at least 100000 and order by  them
 -- the average basepay on descending order -- 
 Select JobTitle,AVG(BasePay) as "avgbasepay" FROM salaries
 group by JobTitle
 having avg(BasePay) >=100000
 Order by avgbasepay desc;
 -- 16  Delete column Note-- 
 Select * FROM salaries;
 alter table salaries
 drop column Notes;
 -- 17











