Project 2 
# Crowdfunding ETL Project

## Project Description

This project involves building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform data. After transforming the data, we created four CSV files and used this data to create an Entity-Relationship Diagram (ERD) and a table schema. Finally, we loaded the CSV data into a Postgres database.

## Project Instructions

### 1. Create the Category and Subcategory DataFrames

#### Category DataFrame
- Extract and transform the data from the `crowdfunding.xlsx` file to create a DataFrame with the following columns:
  - `category_id`: Sequential identifiers from "cat1" to "catn".
  - `category`: Category titles.

- Export the category DataFrame as `category.csv` and save it to the repository.

#### Subcategory DataFrame
- Extract and transform the data from the `crowdfunding.xlsx` file to create a DataFrame with the following columns:
  - `subcategory_id`: Sequential identifiers from "subcat1" to "subcatn".
  - `subcategory`: Subcategory titles.

- Export the subcategory DataFrame as `subcategory.csv` and save it to the repository.

### 2. Create the Campaign DataFrame

- Extract and transform the data from the `crowdfunding.xlsx` file to create a DataFrame with the following columns:
  - `cf_id`
  - `contact_id`
  - `company_name`
  - `description` (previously `blurb`)
  - `goal` (converted to float)
  - `pledged` (converted to float)
  - `outcome`
  - `backers_count`
  - `country`
  - `currency`
  - `launch_date` (previously `launched_at`, converted to datetime)
  - `end_date` (previously `deadline`, converted to datetime)
  - `category_id` (unique IDs matching those in the `category_id` column of the category DataFrame)
  - `subcategory_id` (unique IDs matching those in the `subcategory_id` column of the subcategory DataFrame)

- Export the campaign DataFrame as `campaign.csv` and save it to the repository.

### 3. Create the Contacts DataFrame

#### Option 1: Using Python Dictionary Methods

- Import the `contacts.xlsx` file into a DataFrame.
- Iterate through the DataFrame, converting each row to a dictionary.
- Iterate through each dictionary to extract values using a list comprehension.
- Create a new DataFrame with the extracted data.
- Split each `name` column value into `first_name` and `last_name`.
- Clean and export the DataFrame as `contacts.csv` and save it to the repository.

#### Option 2: Using Regular Expressions

- Import the `contacts.xlsx` file into a DataFrame.
- Extract the `contact_id`, `name`, and `email` columns using regular expressions.
- Create a new DataFrame with the extracted data.
- Convert the `contact_id` column to an integer.
- Split each `name` column value into `first_name` and `last_name`.
- Clean and export the DataFrame as `contacts.csv` and save it to the repository.

### 4. Create the Crowdfunding Database

- Inspect the four CSV files and create an ERD using QuickDBD.
- Use the ERD to create a table schema for each CSV file.
- Save the database schema as a Postgres file named `crowdfunding_db_schema.sql` and save it to the repository.
- Create a new Postgres database named `crowdfunding_db`.
- Use the database schema to create the tables in the correct order.
- Verify table creation by running a SELECT statement for each table.
- Import each CSV file into its corresponding SQL table.
- Verify each table has the correct data by running a SELECT statement for each.



## Project Files

- `ETL_Mini_Project_[your_initial_and_lastname]_[partner_initial_and_lastname].ipynb`
- `category.csv`
- `subcategory.csv`
- `campaign.csv`
- `contacts.csv`
- `crowdfunding_db_schema.sql`

## Authors

- Marcos Rodriguez
- Daniel Bardan
