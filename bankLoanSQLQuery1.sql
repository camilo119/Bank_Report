SELECT * FROM financial_loan

-- Total Loan application 
Select COUNT(id) as Total_application from  financial_loan

--MTD 
Select COUNT(id) as MTD_applications 
from  financial_loan
where MONTH(issue_date) = 12

--Total Funded Amount
Select SUM(loan_amount) as Total_funded_Amount from financial_loan

--MTD Funded Amount
Select SUM(loan_amount) as MTD_funded_Amount from financial_loan
where MONTH(issue_date) = 12

-- Total Amount Received
SELECT Sum(total_payment)  as Total_Payment from financial_loan

--MTD Amount Received
SELECT Sum(total_payment)  as MTD_Total_Payment from financial_loan
where MONTH(issue_date) = 12

--Interest Average rate
SELECT round(AVG(int_rate)*100,2 )as Average_interest_Rate from financial_loan

--MTD interest Rate
SELECT round(AVG(int_rate)*100,2 )as Average_interest_Rate from financial_loan
where MONTH(issue_date) = 12

--Average Debt-to-Income Ratio (DTI)
Select round (AVG (dti)*100, 2) as DTI_Average_Rate from financial_loan

--DTI MTD
Select round (AVG (dti)*100, 2) as MTD_DTI_Average_Rate from financial_loan
where MONTH(issue_date) = 12