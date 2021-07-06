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
  

