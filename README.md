# SQL CHALLENGE

## Introduction 

The purpose of this challenge is to apply and complement the knowledge and skills acquired **SQL**

The task involves:
- Data Cleaning 
- GitHub
- Data Modelling
- Data Engineering  
- Data Analysis
- Bonus
- Markdown 

### Data cleaning in the CSV files

1. Remove irrelevant data as the range date 
2. Change the format date 
2. Unify the columns name  

### GitHub

On GitHub the following task where required 

1. `Create` a new repository called *sql-challenge*
2. `Push` all the changes 
3. Ensure that the repository has regular commitments and a through `README.md` file.

### Data Modelling

#### Task

- Create a **table schema* for the six CSV files.

#### Process of creating an *ERD Diagram*

1. Read the documentation  from <http://www.quickdatabasediagrams.com>
2. Inspect the csv files for defining the parameters of the diagram 
3. Name the columns 
    - Defined the table fields (such as data type, primary key, foreign key)
	- For each field, the data type Varchar was limited to the maxim number of characters of each column to reduce the database size and improve performance in SQL

### Data Engineering using SQL
 
- Create a table for each of the six CSV files
- Import each CSV file 


#### Process using SQL

1. Analise the CSV files answering the following questions:

- Is the employee number id (emp_no) unique?
- What is the date of the data? is this the data that is required to answer the questions of the project
- How many rows each file has and take note so when the information is imported to SQL this will be a check point
- What is the format of the cells - (number, date, text, etc.)

2. Create a new **Database** in PostgreSQL called **Employees**

3. Create each table

- Specify the data types, primary keys and order constraints 

4. Create a file in PostgreSQL called **schemata ** with the code use to create the **Schema** for the employee database


5. Import each CSV file into the corresponding SQL table 

6. Check each table and make sure the files were importing correctly 

#### Data Analysis

1. Check each table and its information
2. Create a file called **queries**
3. Coding according with the instructions 


## Observations 

### Data

The data analysed is historical so there are some assumptions that should keep in mind 

1. One employee could have worked across multiple departments during the period of time analysed 
2. One employee could have earned more than one salary so this data should likely have included historical data
3. The data provided contains employee's information outside of the period. From my point of view the data should be clean from the csv files to avoid
having the filter the data further. This would be provided a cleaner and clear presentation. Avoiding filtering the information by date, but for the purpose of the exersice
I used the  **wHERE** clause for filtering.

### ERD diagram

1. One department can have many employees, but an employee belongs to one department at the time
2. One employee can have one salary, but one salary can be earned by an employee at the time
3. One department can have many managers, but one manager belongs to one department at the time

### SQL Query

1. Giving an **alias** to the tables the code looks clear and easy to read. 
2. Write the code **USING** gives a better presentation to the code
3. Data types used **INTEGER**, **DATE**, **VARCHAR**
4. The statements used on the project were **SELECT**, **JOIN**, **USING** and the clause **WHERE**

### Bonus


For the bonus it was necessary installed psycopg2. However, it did not work then I insalled by a terminal `$ pip install psycopg2-binary` and started coding in Jupyter.

#### Observations 
As expected, the distribution of 80s,90s salaries, show that the vast majority of salaries are in the lower bands, with the minimal numbers for higher bands (likely management or seniors).

For average salaries by title, it appears that the average salary is fairly even across most groups, with managers, staff and senior staff earning more, and it appears htat managers, and non-technical staff (not engineering) earning higher than technical staff.


### Markdown

For the project I used basic syntax as **Headings**, **Bold**, **Lists**, **Links**, etc.



	
