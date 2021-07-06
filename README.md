# sql-challenge
Data Engineering

1.	Follow the instructions of the homework for the first part of the challenge.
2.	Inspected the csv files to become familiar with the database information. 
  	Data modelling 
3.	Use the website http://www.quickdatabasediagrams.com to code the employee schema. 
Process 
a.	Read the documentation from quick database website.
b.	Name the columns and defined the table fields (such as data type, primary key, foreign key). All the tables are defined as NOT NULL by default 
c.	The data type Varchar was limited to the maxim number of characters of each column to reduce the database size and improve performance in SQL.
Observations 
	Historical data 
	Employee number is not duplicated in the files. For example the relationship between salaries and employees is that an employee has a salary but a salary could be earned by many employees. 
One department can have many employees, but an employee belongs to one department.
One employee can have one salary, but one salary can be earned by an employee (this is according with the data set as the emp-no in the salaries table do not have duplicates) 
  

Data engineering
		Create a new database called Employees into pgAdmin4.
		Create the tables and create a .sql file of the  table schemata.
Import CSV files. On this stage I have got an error importing the employees’ table as the format date from the CSV file did not match with the pgAdmin file. So, I change the format in the csv file.
I noted that the table titles were imported as the title VARCHAR was (14) but the lent for this should be 18. So, I have to update the employee imagen and the schemata.sql file 
After the files were importing then I checked that the data was complete
Push all the files into GitHub again 
