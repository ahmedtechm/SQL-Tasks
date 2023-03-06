CREATE TABLE  department(
		dep_id int primary key,
		dep_name VARCHAR(20),
		dep_location VARCHAR(15));

select * from department;

CREATE TABLE  salary_grade(
      grade int,
      min_salary int,
      max_salary int);

select * from salary_grade;


CREATE TABLE employees (
    emp_id int primary key,
    emp_name  varchar(255),
    job_name   varchar(255),
	manager_id int,
	hire_date  date,
	salary  decimal(10, 2),
	commission decimal(7,2),
	dep_id int FOREIGN KEY  REFERENCES department(dep_id));

select * from employees;


INSERT INTO department	 (dep_id, dep_name,  dep_location)

VALUES ( 1001 ,'FINANCE'    , 'SYDNEY'   ),
       ( 2001 ,'AUDIT'      , 'MELBOURNE'),
       ( 3001 ,'MARKETING'  , 'PERTH'    ),
       ( 4001 ,'PRODUCTION' , 'BRISBANE' );

select * from department;


INSERT INTO salary_grade (grade,  min_salary,  max_salary)

 VALUES ( 1 ,  800  , 1300 ),
		( 2 ,  1301 , 1500 ),
		( 3 ,  1501 , 2100 ),
		( 4 ,  2101 , 3100 ),   
		( 5 ,  3101 , 9999 );

select * from salary_grade;


INSERT INTO employees ( emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)

VALUES (68319 , 'KAYLING'  , 'PRESIDENT' ,  NULL  , '1991-11-18', 6000.00 , NULL   , 1001),
	   (66928 , 'BLAZE'    , 'MANAGER'   , 68319  , '1991-05-01', 2750.00 , NULL   , 3001),
	   (67832 , 'CLARE'    , 'MANAGER'   , 68319  , '1991-06-09', 2550.00 , NULL   , 1001),
	   (65646 , 'JONAS'    , 'MANAGER'   , 68319  , '1991-04-02', 2957.00 , NULL   , 2001),
	   (67858 , 'SCARLET'  , 'ANALYST'   , 65646  , '1997-04-1' , 3100.00 , NULL   , 2001),
	   (69062 , 'FRANK'    , 'ANALYST'   , 65646  , '1991-12-03', 3100.00 , NULL   , 2001),
	   (63679 , 'SANDRINE' , 'CLERK'     , 69062  , '1990-12-18', 900.00  , NULL   , 2001),
	   (64989 , 'ADELYN'   , 'SALESMAN'  , 66928  , '1991-02-20', 1700.00 , 400.00 , 3001),
	   (65271 , 'WADE'     , 'SALESMAN'  , 66928  , '1991-02-22', 1350.00 , 600.00 , 3001),
	   (66564 , 'MADDEN'   , 'SALESMAN'  , 66928  , '1991-09-28', 1350.00 , 1500.00, 3001),
	   (68454 , 'TUCKER'   , 'SALESMAN'  , 66928  , '1991-09-08', 1600.00 , 0.00   , 3001),
	   (68736 , 'ADNRES'   , 'CLERK'     , 67858  , '1997-05-23', 1200.00 , NULL   , 3001),
	   (69324 , 'MARKER'   , 'CLERK'     , 67832  , '1992-01-23', 1400.00 , NULL   , 1001);


-->>> Natural join

select emp_name, job_name, dep_name
from employees
natural join department;

-->>> Cross join

SELECT e.emp_name, e.job_name, d.dep_name
FROM employees e
CROSS JOIN department d
ON e.dep_id = d.dep_id;

-->>> Self join

SELECT a.emp_name, a.job_name, b.dep_name
FROM employees a
JOIN department b
ON a.dep_id = b.dep_id;

-->>> Inner join

SELECT employees.emp_name, employees.job_name, department.dep_name
FROM employees
INNER JOIN department
ON employees.dep_id = department.dep_id;

select *
FROM employees
INNER JOIN department
ON employees.dep_id = department.dep_id;

--------------------->>> outer join  <<<----------------------------

-->>> LEFT OUTER JOIN

SELECT employees.emp_name, employees.job_name, department.dep_name
FROM employees
LEFT OUTER JOIN department
ON employees.dep_id = department.dep_id;


-->>>RIGHT OUTER JOIN

SELECT employees.emp_name, employees.job_name,  department.dep_name, department.dep_location
FROM employees
RIGHT OUTER JOIN department
ON employees.dep_id = department.dep_id;



-->>>FULL OUTER JOIN


SELECT employees.emp_name, employees.job_name, department.dep_name
FROM employees
FULL OUTER JOIN department
ON employees.dep_id = department.dep_id;


SELECT *
FROM employees
FULL OUTER JOIN department
ON employees.dep_id = department.dep_id;








--> 1) Return complete information about the employees

SELECT * FROM employees; 

--> 2) Write a SQL query to find the salaries of all employees. Return salary.--

SELECT salary FROM employees;

--> 3) Write a SQL query to find the unique designations of the employees. Return job name --

SELECT DISTINCT job_name FROM employees;

--> 4) Write a SQL query to list the employees’ name, increased their salary by 15% --

SELECT emp_name, salary * 1.15 as increased_salary FROM employees;

--> 5) Write a SQL query to list the employee's name and job name as a format of "Employee & Job" --

SELECT concat(emp_name, ' & ', job_name) AS "Employee & Job" FROM employees;

--> 6) Write a SQL query to find those employees with hire date in the format like February 22, 1991. Return employee ID, employee name, salary, hire date. --

SELECT emp_id, emp_name, salary, FORMAT(hire_date, 'MMM dd, yyyy') "hire_date" FROM employees;

--> 7) Write a SQL query to count the number of employees who have total income more than 2200 --

SELECT COUNT(*) FROM employees WHERE salary > 2200;

--> 8)Write a SQL query to find the unique jobs with their corresponding department id.

-----------------select distinct (dep_id),job_name from employees;

-----------------select distinct job_name from employees;

--> 9) Write a SQL query to find those employees who do not belong to the department 2001. Return complete information about the employees.

select * from employees where dep_id!=2001;

--> 10) Write a SQL query to find those employees who joined before 1991. Return complete information about the employees

select * from employees where hire_date < '1991-01-01';


--> 11) Write a SQL query to calculate the average salary of employees who work as analysts. Return average salary.

select  avg(salary)"Average salary" from employees where job_name='ANALYST';

--> 12) Write a SQL query to find the details of the employees who's name start start with B or end with E
 
select * from employees where emp_name like 'B%'  OR emp_name like '%E';

--> 13) Write a SQL query to find the details of the employees who's department name start start with B or end with E

select * from department where dep_name like 'B%'  OR dep_name like '%E';

--> 14) Write a SQL query to find the details of the employees who's department location start start with F or end with N

select * from department where dep_location like 'F%'  OR dep_location like '%N';

--> 15) Write a SQL query to identify employees whose commissions exceed their salaries. Return complete information about the employees, department location and department name

------------------------------- SELECT * FROM employees WHERE commission>salary;

--> 16) Write a SQL query to identify those employees whose salaries exceed 3000 after receiving a 25% salary increase

----------------------select emp_id ,emp_name,round(salary  *1.25,2) "Incremented Salary"from employees where salary  *1.25>3000;

----------------------SELECT *  FROM employees WHERE (1.25*salary) > 3000;

--> 17) Write a SQL query to find out which employees joined in the month of January. Return complete information about the employees.

SELECT * FROM employees WHERE DATENAME(MONTH, hire_date) = 'January';

--> 18) Write a SQL query to separate the names of employees and their managers by the string 'works for'.

------------------------------- select concat(emp_name ," works for ",manager_id) "Employees relation" from employees;

--> 19) Write a SQL query to find those employees whose designation is ‘CLERK’. Return complete information about the employees.

select * from employees where job_name  ='CLERK';

--> 20) Write a SQL query to identify employees with more than 27 years of experience. Return complete information about the employees.

----------------------------

--> 21) Write a SQL query to find those employees whose salaries are less than 3500. Return complete information about the employees.

select * from employees where salary <3500;


--> 22) Write a SQL query to find the employee whose designation is ‘ANALYST’. Return employee name, job name and salary.

select emp_name ,job_name  ,salary  from employees where job_name  ='ANALYST';


--> 23) Write a SQL query to identify those employees who joined the company in 1991. Return complete information about the employees.

select * from employees where hire_date   like '1991%';

SELECT * FROM employees WHERE YEAR(hire_date) = 1991;

--> 24) Write a SQL query to identify those employees who joined the company after 1991. Return complete information about the employees.

SELECT * FROM employees WHERE YEAR(hire_date) > 1991;


--> 25) Write a SQL query to find those employees who joined before 1st April 1991. Return employee ID, employee name, hire date and salary.

SELECT emp_id, emp_name, hire_date,salary FROM employees WHERE hire_date < '1991-04-01';

--> 26) Write a SQL query identify the employees who do not report to a manager. Return employee name, job name.

-----------------------------


--> 27) Write a SQL query to find the employees who joined on the 1st of May 1991. Return complete information about the employees.

select * from employees where hire_date in ('1991-05-01');

 
--> 28) Write a SQL query to identify the experience of the employees who work under the manager whose ID number is 68319. Return employee ID, employee name, salary, experience

select emp_id, emp_name,salary from employees where manager_id  in (68319);

 
--> 29) Write a SQL query to find out which employees earn more than 100 per day as a salary. Return employee ID, employee name, salary, and experience.

-----------------------------

 
--> 30) Write a SQL query to identify those employees who retired after 31-Dec-99, completing eight years of service. Return employee name.

-----------------------------

--> 31) Write a SQL query to identify the employees whose salaries are odd. Return complete information about the employee

select * from employees where salary%2 = 1;

--> 32) Write a SQL query to identify employees whose salaries contain only three digits. Return complete information about the employees.

select * from employees where salary<1000;

 
--> 33) Write a SQL query to find those employees who joined in the month of APRIL. Return complete information about the employees

select * from employees where  MONTH(hire_date) = 4;
 
--> 34) Write a SQL query to find out which employees joined the company before the 19th of the month. Return complete information about the employees

SELECT * FROM employees WHERE DAY(hire_date) < 19;

 
--> 35) Write a SQL query to identify those employees who have been working as a SALESMAN and month portion of the experience is more than 10. Return complete information about the employees.

-----------------------------

 
--> 36) Write a SQL query to find those employees of department id 3001 or 1001 and joined in the year 1991. Return complete information about the employees.

-----------------------------

 
--> 37) Write a SQL query to find the employees who are working for the department ID 1001 or 2001. Return complete information about the employees.

-----------------------------

 
--> 38) Write a SQL query to find those employees whose designation is ‘CLERK’ and work in the department ID 2001. Return complete information about the employees.

select * from employees where job_name='CLERK' and dep_id = 2001;

 
--> 39) Write a SQL query to find those employees who are either CLERK or MANAGER. Return complete information about the employees.

select * from employees where job_name='CLERK' or job_name='MANAGER';

 
--> 40) Write a SQL query to identify those employees who joined in any month other than February. Return complete information about the employees.

SELECT * FROM employees WHERE MONTH(hire_date) != 2;

 
--> 41) Write a SQL query to identify the employees who joined the company in June 1991. Return complete information about the employees.

SELECT * FROM employees WHERE YEAR(hire_date) = 1991 AND MONTH(hire_date) = 6;

 
--> 42) Write a SQL query to search for all employees with an annual salary between 24000 and 50000 (Begin and end values are included.). Return complete information about the employees.

select * from employees where salary*12 between 24000 and 50000;


--> 43) Write a SQL query to identify all employees who joined the company on 1st May, 20th February, and 3rd December 1991. Return complete information about the employees.

select * from employees  where hire_date in ('1991-05-01','1991-02-20','1991-12-03');

SELECT * FROM employees WHERE (hire_date = '1991-05-01') OR (hire_date = '1991-02-20') OR (hire_date = '1991-12-03');


--> 44) Write a SQL query to find out which employees are working under the managers 63679, 68319, 66564, or 69000. Return complete information about the employees.

SELECT * FROM employees WHERE manager_id IN (63679, 68319, 66564, 69000);


--> 45) Write a SQL query to find those employees who joined in 90's. Return complete information about the employees.

select * from employees where hire_date between '1990-01-01' and '1999-12-31';



 
--> 46) Write a SQL query to find those managers who are in the department 1001 or 2001. Return complete information about the employees.

select * from employees where dep_id in (1001, 2001) AND job_name = 'MANAGER';


--> 47) Write a SQL query to identify employees who joined in the month of FEBRUARY with a salary range of 1001 to 2000 (Begin and end values are included.). Return complete information about the employees.

-----------------------SELECT * FROM employees WHERE  MONTH(hire_date) = 2 AND salary BETWEEN 1001 AND 2000;
 
--> 48) Write a SQL query to find those employees who joined before or after the year 1991. Return complete information about the employees.

select * from employees where hire_date <'1991-01-01' or hire_date>'1991-12-31';

 
--> 49) Write a SQL query to find employees along with their department details. Return employee ID, employee name, job name, manager ID, hire date, salary, commission, department ID, and department name.

-------------------------------------
 
--> 50) Write a SQL query to identify those employees who earn 60000 or more per year or do not work as ANALYST. Return employee name, job name, (12*salary) as Annual Salary, department ID, and grade.



 
--> 51) Write a SQL query to identify employees whose salaries are higher than their managers' salaries. Return employee name, job name, manager ID, salary, manager name, manager's salary



 
--> 52) Write a SQL query to find those employees whose salary is between 2000 and 5000 (Begin and end values are included.) and location is PERTH. Return employee name, department ID, salary, and commission



 
--> 53) Write a SQL query to find the employees whose department ID is 1001 or 3001 and whose salary grade is not 4. They joined the company before 1992-12-31. Return grade, employee name.



 
--> 54) Write a SQL query to find those employees whose manager name is JONAS. Return employee id, employee name, job name, manager ID, hire date, salary, department ID, employee name.



 
--> 55) Write a SQL query to find the name and salary of the employee FRANK. Salary should be equal to the maximum salary within his or her salary group.
 



--> 56) Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with a salary between 2000 and 5000 (Begin and end values are included.) without commissions. Return complete information about the employees.




--> 57) Write a SQL query to search for employees who are working either as a MANAGER or an ANALYST with a salary between 2000 and 5000 (Begin and end values are included.) without commissions. Return complete information about the employees.



 
--> 58) From the following table, write a SQL query to find the employees who joined in 1991 and whose department location is SYDNEY or MELBOURNE with a salary range of 2000 to 5000. Return employee ID, employee name, department ID, salary, and department location.



 
--> 59) Write a SQL query to find the employees of MARKETING department come from MELBOURNE or PERTH, are in grades 3 ,4, and 5 and have at least 25 years of experience. Return department ID, employee ID, employee name, salary, department name, department location and grade.



 
--> 60) Write a SQL query to find those employees who are senior to their manager. Return complete information about the employees.



 
--> 61) Write a SQL query to determine which employees have a grade of 4 and a salary between the minimum and maximum. Return all information of each employees and their grade and salary related details



 
--> 62) Write a SQL query to find those employees who joined after 1991, excluding MARKER or ADELYN in the departments PRODUCTION or AUDIT. Return employee name.



 
--> 63) Write a SQL query to find the employees and their salaries. Sort the result-set in ascending order by salaries. Return complete information about the employees.



 
--> 64) Write a SQL query to list employees in ascending order on department ID and descending order on jobs. Return complete information about the employees.



 
--> 65) Write a SQL query to sort the unique jobs in descending order. Return job name.



 
--> 66) Write a SQL query to rank the employees according to their annual salary in ascending order. Return employee ID, employee name, monthly salary, salary/30 as Daily_Salary, and 12*salary as Anual_Salary.



 
--> 67) Write a SQL query to find those employees who are either 'CLERK' or 'ANALYST’. Sort the result set in descending order on job_name. Return complete information about the employees.



 
--> 68) Write a SQL query to find the department location of employee ‘CLARE’. Return department location.



 
--> 69) Write a SQL query to find those employees who joined on 1-MAY-91, or 3-DEC-91, or 19-JAN-90. Sort the result-set in ascending order by hire date. Return complete information about the employees.



 
--> 70) Write a SQL query to find those employees who earn less than 1000. Sort the result-set in ascending order by salary. Return complete information about the employees.



 
--> 71) Write a SQL query to list the employees in ascending order based on salary. Return complete information about the employees.



 
--> 72) Write a SQL query to list the employees in the ascending order by job title and in descending order by employee ID. Return complete information about the employees.



 
--> 73) Write a SQL query to list the unique jobs of department 2001 and 3001 in descending order. Return job name.



 
--> 74) Write a SQL query to list all the employees except the PRESIDENT and the MANAGER in ascending order of salaries. Return complete information about the employees.



 
--> 75) Write a SQL query to find the employees whose annual salary is less than $25,000 per year. Sort the result set in ascending order of the salary. Return complete information about the employees.



 
--> 76) Write a SQL query to list the employees who works as a SALESMAN. Sort the result set in ascending order of annual salary. Return employee id, name, annual salary, daily salary of all the employees.



 
--> 77) Write a SQL query to list the employee ID, name, hire date, current date and experience of the employees in ascending order on their experiences.



 
--> 78) Write a SQL query to list the employees in ascending order of designations of those joined after the second half of 1991.



 
--> 79) Write a SQL query to find the location of all the employees working in the FINANCE or AUDIT department. Sort the result-set in ascending order by department ID. Return complete information about the employees.



 
--> 80) Write a SQL query to find the employees along with grades in ascending order. Return complete information about the employees.



 
--> 81) Write a SQL query to find the employees according to the department in ascending order. Return name, job name, department, salary, and grade.



 
--> 82) Write a SQL query to select all employees except CLERK and sort the results in descending order by salary. Return employee name, job name, salary, grade and department name.



 
--> 83) Write a SQL query to find those employees who work in the department 1001 or 2001. Return employee ID, name, salary, department, grade, experience, and annual salary.



 
--> 84) Write a SQL query to list the details of the employees along with the details of their departments.



 
--> 85) Write a SQL query to list the employees who are senior to their MANAGERS. Return complete information about the employees.



 
--> 86) Write a SQL query to find those employees who work in the department 1001. Sort the result-set in ascending order by salary. Return employee ID, employee name, salary and department ID.


 
--> 87) Write a SQL query to find the second highest salary. Return second highest salary.



 
--> 88) Write a SQL query to calculate the average salary and average total remuneration (salary and commission) for each type of job. Return name, average salary and average total remuneration.



 
--> 89) Write a SQL query to calculate the total annual salary distributed across each job in 1991. Return job name, total annual salary.



 
--> 90) Write a SQL query to list the employee id, name, department id, location of all the employees.



 
--> 91) Write a SQL query to find those employees who work in the department ID 1001 or 2001. Return employee ID, employee name, department ID, department location, and department name.



 
--> 92) Write a SQL query to find those employees whose salary is in the range of minimum and maximum salary. Return employee ID, name, salary and grade.



 
--> 93) Write a SQL query to create a list of the managers and the number of employees they supervise. Sort the result set in ascending order on manager. Return manager ID and number of employees under them.



 
--> 94) Write a SQL query to count the number of employees in each designation of a department. Return department id, job name and number of employees.



 
--> 95) Write a SQL query to identify the departments in which at least two employees are employed. Return department id, number of employees.



 
--> 96) Write a SQL query to list the grade, number of employees, and maximum salary of each grade.



 
--> 97) Write a SQL query to identify departments with at least two SALESMEN in each grade. Return department name, grade and number of employees.



 
--> 98) Write a SQL query to identify departments with fewer than four employees. Return department ID, number of employees.




 
--> 99) Write a SQL query to find which departments have at least two employees. Return department name, number of employees.




 
--> 100) Write a SQL query to check whether the employees ID are unique or not. Return employee id, number of employees.




 
--> 101) Write a SQL query to find number of employees and average salary. Group the result set on department id and job name. Return number of employees, average salary, department ID, and job name.




 
--> 102) Write a SQL query to identify those employees whose names begin with 'A' and are six characters long. Return employee name.




 
--> 103) Write a SQL query to find those employees whose name is six characters in length and the third character must be 'R'. Return complete information about the employees.




 
--> 104) Write a SQL query to find those employees whose name is six characters in length, starting with 'A' and ending with 'N'. Return number of employees.




 
--> 105) Write a SQL query to find those employees who joined in the month of where the second letter is 'a'. Return number of employees.




 
--> 106) Write a SQL query to find those employees whose names contain the character set 'AR' together. Return complete information about the employees.




 
--> 107) Write a SQL query to find those employees who joined in 90's. Return complete information about the employees.





 
--> 108) Write a SQL query to find those employees whose ID not start with the digit 68. Return employee ID, employee ID using trim function.





 
--> 109) Write a SQL query to find those employees whose names contain the letter 'A’. Return complete information about the employees.






--> 110)  Write a SQL query to find those employees whose name ends with 'S' and six characters long. Return complete information about the employees.





--> 111) Write a SQL query to find those employees who joined in any month, but the month name contain the character ‘A’. Return complete information about the employees.





 
--> 112) Write a SQL query to find those employees who joined in any month, but the name of the month contain the character ‘A’ in second position. 



