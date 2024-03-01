# <p align="center">Module 9 Challenge: SQL
## Data Analytics assignment to analyze fictitious employee .csv data using SQL
### Overview
1. Data modeling
2. Data engineering
3. Data analysis
### Features
1. Design tables to hold the data
2. Create the tables in a SQL database and import the .csv files into those tables
3. Answer assignment questions about the data by querying the tables
### Prerequisites
- Familiarity with and use of an entity relationship diagram (ERD)-making tool, such as [QuickDBD](https://www.quickdatabasediagrams.com/)
- Familiarity with and use of an application for opening and examining .csv files, such as [Microsoft Excel](https://www.microsoft.com/en-us/microsoft-365/excel)
- Familiarity with [PostgreSQL](https://www.postgresql.org/) and use of [pgAdmin](https://www.pgadmin.org/)
### Usage
- Download .csv files, inspect them, and generate an ERD to display the relationships between the files
  - (If interested in how the below ERD was generated, also download the .txt file, and copy & paste the text into the QuickDBD app's text pane)
<p align="center">
  <img width="900" src="https://github.com/cengelhart0120/sql-challenge/blob/main/ERD.png" alt="ERD of .csv data relationships">
</p>

- Download .sql files
- Open pgAdmin, create/connect to a "local" server, then create a new database to house the tables
- Open the query tool in the newly-created database, then open the table_schemata.sql file in the query window
- Run the code to drop, create, and alter the tables
- Import .csv data into the tables by matching names, but specifically in this order due to table contraints:
  1. **departments** and **titles** (order of these two is irrelevant)
  2. **employees** (this _must_ happen after step 1 above but before step 3 below)
  3. **dept_emp**, **dept_manager**, and **salaries** (order of these three is irrelevant)
- Run the "SELECT" queries for each table to ensure they were created and populated successfully
- Close **table_schemata.sql** and open **queries.sql** in the query tool
- Run each block of code to output the list of its requisite data (the assignment prompt is listed in the comment above each block of code)
### License
[MIT License](https://opensource.org/licenses/MIT)
### Contact
- [Email](mailto:cengelhart@gmail.com)
- [GitHub](https://github.com/cengelhart0120)
