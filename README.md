# SQL-challenge

As a newly hired data engineer at Pewlett Hackard, a first task to complete is a research project on employees of the corporation from the 1980s and 1990s. Utilize a database of employees from that period of six CSV files. The analysis should contain tables to hold data in the CSVs. Next would be to import the CSVs into a SQL database, and answer specific questions about the data. The key procedures to higlight are **data modeling**, **data engineering**, and **data analysis**.

#### Data Modeling

Inspect the CSVs and sketch out an ERD of the tables. 
Specify data types, primary keys, foreign keys, and other constraints.
For the primary keys, verify that the column is unique. Otherwise, create a [composite key], which takes two primary keys to uniquely identify a row.
Create tables in the correct order to handle foreign keys.

![image](https://user-images.githubusercontent.com/99145651/168339591-c91d0d50-56d8-4704-ac1e-9d18f6d1bb03.png)

#### Data Engineering

- Utilize the provided information to create a table schema for each of the six CSV files. 
- Import each CSV file into the corresponding SQL table.
- Import the data in the same order that the tables were created and account for the headers when importing.
- 
![image](https://user-images.githubusercontent.com/99145651/168341511-d514efbb-f730-4df0-bcad-287d9337454c.png)
![image](https://user-images.githubusercontent.com/99145651/168342568-dc93be29-e2c1-4346-825d-f85ed652160f.png)
![image](https://user-images.githubusercontent.com/99145651/168342826-c4b61a95-fbc3-46b7-b075-256f45543f52.png)
![image](https://user-images.githubusercontent.com/99145651/168342948-435a6697-c84e-4c93-b203-e788f5b0b8cb.png)
![image](https://user-images.githubusercontent.com/99145651/168343226-487a5244-d8cc-4891-aeba-f0220c6f17e9.png)
![image](https://user-images.githubusercontent.com/99145651/168343345-22ae1fae-2267-4d42-9ebf-ec2c69c1cb22.png)



#### Data Analysis

After the information has been gather to complete database, the following steps were performed:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

![image](https://user-images.githubusercontent.com/99145651/168344126-933c9b8a-a2ea-4d9f-b63d-c52ebf063d6b.png)


2. List first name, last name, and hire date for employees who were hired in 1986.

![image](https://user-images.githubusercontent.com/99145651/168344394-b2709718-eb92-4096-aec4-1de613c1cbf9.png)


3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![image](https://user-images.githubusercontent.com/99145651/168344734-fd9aec18-024e-4ef0-a83a-31b29b65f67e.png)


4. List the department of each employee with the following information: employee number, last name, first name, and department name.

![image](https://user-images.githubusercontent.com/99145651/168344899-8aab2665-d7e4-43a7-ac31-0170c502fce6.png)


5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![image](https://user-images.githubusercontent.com/99145651/168345002-1befe4b2-71be-4401-9bc5-db1aa546c459.png)


6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

![image](https://user-images.githubusercontent.com/99145651/168345239-2a16d06f-fe81-40a2-9a58-e37a8fd380ab.png)


7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![image](https://user-images.githubusercontent.com/99145651/168345403-83d74d8c-17d4-4bb2-90ae-f3c58b8d7604.png)


8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.

![image](https://user-images.githubusercontent.com/99145651/168345603-ccd75a8f-9577-4efe-a2f7-3ba8ccd11ad6.png)


## Bonus (Optional)

As you examine the data, you begin to suspect that the dataset is fake. Maybe your boss gave you spurious data in order to test the data engineering skills of a new employee? To confirm your hunch, you decide to create a visualization of the data to present to your boss. Follow these steps:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the following code to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

   - Consult the [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

   - If you’re using a password, do not upload your password to your GitHub repository. Review this [video](https://www.youtube.com/watch?v=2uaTPmNvH0I) and the [GitHub website](https://help.github.com/en/github/using-git/ignoring-files) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

3. Create a bar chart of average salary by title.
