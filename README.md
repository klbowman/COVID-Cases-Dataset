# COVID-19, education, and unemployment dataset

## Proposal
For our project, we will set up a pipeline that will connect a United States COVID-19 case dataset, a United States education attainment level dataset, and a United States unemployment dataset. We will use county-level COVID case data provided by the New York Times public GitHub, along with county-level unemployment data from Kaggle.com and education data procured from the USDA Economic Research Service. The COVID-19 dataset (CSV) has 88,557 rows, we will clean by combining rows from 2020 and sorting by county. The education data set has 48 columns and 3284 rows, we will select only columns that compare % education standard by county. The unemployment dataset contains 3276 rows and 93 columns. The format of the county names in all 3 datasets are slightly different, so we will need to clean the data in order to make sure that we can manipulate it effectively.

We have chosen to load our final data into an SQL database.

## Data Sources
- COVID-19 
  - "The New York Times. (2021). Coronavirus (Covid-19) Data in the United States. Retrieved [Insert Date Here], from https://github.com/nytimes/covid-19-data." (CSV) 
- Education
  -  "County-level Data Sets." USDA Economic Research Service, US Department of Agriculture. Access date: Sept 8, 2021. URL: https://www.ers.usda.gov/data-products/county-level-data-sets/ (CSV file)
- Unemployment
  - "USA Unemployment & Education Level" Kaggle.com. Access date: October 30, 2021. https://www.kaggle.com/valbauman/student-engagement-online-learning-supplement/version/3?select=unemployment.csv

## Extract

## Transform

## Load
  
