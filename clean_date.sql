UPDATE survey_1
SET s_date = STR_TO_Date(Date, '%m/%d/%Y')
LIMIT 1