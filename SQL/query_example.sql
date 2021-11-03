select covid.county, education."With_HSD", covid.cases_avg_per_100k
from education
INNER JOIN covid
ON covid."FIPS_Code" = education."FIPS_Code";

