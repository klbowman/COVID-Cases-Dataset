# COVID-19, education, and unemployment dataset

## Proposal
For our project, we will set up a pipeline that will connect a United States COVID-19 case dataset, a United States education attainment level dataset, and a United States unemployment dataset. We will use county-level COVID case data provided by the New York Times public GitHub, along with county-level unemployment data from Kaggle.com and education data procured from the USDA Economic Research Service. The COVID-19 dataset (CSV) has 832,607 rows, we will clean by combining rows from 2020 and sorting by county. The education data set has 48 columns and 3284 rows, we will select only columns that compare % education standard by county. The unemployment dataset contains 3276 rows and 93 columns. The data included in this dataset is from 2000-2019, so we will have to drop a significant amount of columns from this dataset so that we only have relevant data from 2019.
We have chosen to load our final data into an SQL database.

## Data Sources
- COVID-19 
  - "The New York Times. (2021). Coronavirus (Covid-19) Data in the United States. Retrieved [Insert Date Here], from https://github.com/nytimes/covid-19-data." (CSV) 
- Education
  -  "County-level Data Sets." USDA Economic Research Service, US Department of Agriculture. Access date: Sept 8, 2021. URL: https://www.ers.usda.gov/data-products/county-level-data-sets/ (CSV file)
- Unemployment
  - "USA Unemployment & Education Level" Kaggle.com. Access date: October 30, 2021. https://www.kaggle.com/valbauman/student-engagement-online-learning-supplement/version/3?select=unemployment.csv

## Extract
Extracting the unemployment dataset was fairly simple. The data was in CSV format, so I created a Jupyter Notebook file and loaded the CSV into it in order to prepare the data for cleaning.

## Transform
As previously stated, the unemployment data included figures from 2000-2019. In order to prep the data for inclusion in our SQL database, I used the Jupyter Notebook interface to drop the majority of the columns from this dataset so that we only have relevant data from 2019. I removed 87 irrelevant columns from the dataset. The data was very clean, so there was minimal cleaning to do otherwise.

- COVID-19 data
  -	The “geoid” column, which contained “USA-#####” values, was split on the “-” and data was stored in two new columns. The column containing “USA” values was dropped and the column containing numerical values was stored as “FIPS_Code.” The FIPS_Code column was used to merge with the other two datasets. 
  -	The “FIPS_Code” column data type was converted from object to integer to prepare for merging. 
  -	The “county” and “state” columns were converted from object to string for the groupby function
  -	The DataFrame was grouped by “FIPS_Code” and the aggregate function was used to store the first county and state name of each group, and to calculate the sum of average cases and average depths per 100k (average deaths and average cases columns were dropped in this step)
  -	The index was reset before exporting the cleaned DataFrame as a csv file
 - Education data
    -	This dataset was transformed from 48 columns to 6 columns
    -	FIPS Code and state columns were kept for merging
    -	Columns with percent of adults with less than a high school diploma, only a high school diploma, comploeted some college, and completed a bachelor's degree or high from 2015-2019 were kept.

## Load
  
