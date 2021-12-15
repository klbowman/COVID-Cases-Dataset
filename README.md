# ETL Pipeline: COVID-19, education, and unemployment dataset

ETL pipeline to clean, merge, and export data into a SQL database. 

## Description
Datasets on COVID-19 positivity and death rates, education levels, and unemployment rates in the United States can be found as CSV files in the Resources folder. Data was cleaned and merged using Juptyer Notebook (ETL.ipynb).
  -	Undesired columns of data were dropped from each dataset.
  -	In the COVID-19 dataset:
    -	The “geoid” column in the COVID-19 dataset, which contained “USA-#####” values, was split on the “-” and data was stored in two new columns. The column containing “USA” values was dropped and the column containing numerical values was stored as “FIPS_Code.” The FIPS_Code column was used to merge with the other two datasets. 
    -	The “FIPS_Code” column data type was converted from object to integer to prepare for merging. 
    -	The “county” and “state” columns were converted from object to string for the groupby function.
    -	The DataFrame was grouped by “FIPS_Code” and the aggregate function was used to store the first county and state name of each group, and to calculate the sum of average cases and average depths per 100k (average deaths and average cases columns were dropped in this step).
    -	The index was reset before exporting the cleaned DataFrame as a csv file.

Cleaned and merged data was exported into three tables in a SQL database, shown in the entity relationship diagram below.
<p align="center">
  <img src="https://user-images.githubusercontent.com/74067302/140006516-782eb396-fc9a-480e-99ad-94799a18912b.png" alt="Dashboard Image"/>
</p>

## Getting Started

### Technologies Used 

* Jupyter Notebook
* Pandas
* PostgreSQL
* SQL Alchemy 

### Installing

* Clone this repository to your desktop.
* Run the ETL.ipynb file.

### Data Sources
* "The New York Times. (2021). Coronavirus (Covid-19) Data in the United States. Retrieved from https://github.com/nytimes/covid-19-data."
* "County-level Data Sets." USDA Economic Research Service, US Department of Agriculture. Access date: Sept 8, 2021. URL: https://www.ers.usda.gov/data-products/county-level-data-sets/
* "USA Unemployment & Education Level" Kaggle.com. Access date: October 30, 2021. https://www.kaggle.com/valbauman/student-engagement-online-learning-supplement/version/3?select=unemployment.csv

## Authors

Katlin Bowman, PhD  
E: klbowman@ucsc.edu  
[LinkedIn](https://www.linkedin.com/in/katlin-bowman/)

Andrew Wilson

Michael Bradberry
