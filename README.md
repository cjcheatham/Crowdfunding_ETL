# Crowdfunding_ETL Mini Project 

## Overview

This project consists of 2 folders, and the main jupyter notebook file used for data cleaning and analysis. The 2 folders consist of the following :

* DataBase

* Resources

The main notebook file is titled as ETL_Mini_Project_CCheatham.ipynb. All data cleaning and code to create each dataframe for this mini project can be found in this file.

### DataBase

The DataBase folder consists of files used to create the Crowdfunding DataBase (more info in the Crowdfunding DataBase section of this README) and the ERD diagram used to explain the primary and foreign keys for the differnt tables created in this database. The files in this folder consist of the following : 

* crowdfunding_db_schema.sql

* Crowdfunding_ETL_ERD_Diagram.png

* ERD.txt

Where crowdfunding_db_schema.sql is the schema used to create the data base in sql. Crowdfunding_ETL_ERD_Diagram.png is the ERD diagram for this database. And ERD.txt is the code used to create this ERD diagram on the quickdatabasediagrams website. Link will be probvided below. 

### Resources

The Resources folder consists or files used to start analysis and the end results for each data frame (more info in each data frames individual section of this README). The files in this folder consist of the following : 

* campaign.csv

* category.csv

* contacts.csv

* contacts.xlsx

* crowdfunding.xlsx

* subcategory.csv 

## Instructions

The instructions for this mini project are divided into the following subsections:

* Create the Category and Subcategory DataFrames

* Create the Campaign DataFrame

* Create the Contacts DataFrame

* Create the Crowdfunding Database

## Category and Subcategory DataFrames

Extracting the crowdfunding.xlsx from the *Resources* folder, we are able to create a category dataframe including the following:

* A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories

* A "category" column that contains only the category titles

This dataframe can be seen in the main notebook file or in the category.csv file located in the *Resources* folder.

We will also use the crowdfunding.xlsx to create a subcategory dataframe including the following:

* A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories

* A "subcategory" column that contains only the subcategory titles

This dataframe can be seen in the main notebook file or in the subcategory.csv file located in the *Resources* folder.

## Campaign DataFrame

Extracting the crowdfunding.xlsx from the *Resources* folder, we are able to create a campaign dataframe including the following:

* The "cf_id" column

* The "contact_id" column

* The "company_name" column

* The "blurb" column, renamed to "description"

* The "goal" column, converted to the float data type

* The "pledged" column, converted to the float data type

* The "outcome" column

* The "backers_count" column

* The "country" column

* The "currency" column

* The "launched_at" column, renamed to "launch_date" and with the UTC times converted to the datetime format

* The "deadline" column, renamed to "end_date" and with the UTC times converted to the datetime format

* The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame

* The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame

This dataframe can be seen in the main notebook file or in the campaign.csv file located in the *Resources* folder.

## Contacts DataFrame

Extracting the contacts.xlsx file from the *Resources* folder, we can create a contacts dataframe through python dictionary methods. This dataframe will include the following:

* contact_id

* first_name

* last_name

* email

This dataframe can be seen in the main notebook file or in the contacts.csv file located in the *Resources* folder.

## Crowdfunding DataBase

In SQL, we will create a schema to create another way to visualize the dataframes we have created. This schema will create tables for each dataframe which we can import their corresponding csv files into. This schema can be found as the crowdfunding_db_schema.sql file in the *DataBase* folder. The ERD diagram containing shows a visualization to how the contacts, category, and subcategory dataframes connect to the campaign dataframe through primary and foreign keys.

**Important Note:** When importing the data from the csv files, import them in the order the tables were created in the schema to avoid any errors with the primary and foreign key configurations.

## Links:

https://www.quickdatabasediagrams.com/ 

