-- Creating a new table loan_data in schema sql_cohort_2
CREATE TABLE loan_data AS (SELECT
	loan_id,
    gender,
    CASE
		WHEN age>=18 and age<30 THEN '18-30'
        WHEN age>=30 and age<45 THEN '30-45'
        WHEN age>=45 and age<55 THEN '45-55'
        ELSE '> 55'
	END AS gender_range, -- new column for ease of Analysis
    marital_status,
    no_of_dependents,
    educational_level,
    employment_type,
    geographical_location,
    type_of_residence,
    income_annum,
    CASE
		WHEN income_annum >=300000 and income_annum<1000000 THEN '3-10 Lakh'
        WHEN income_annum>=1000000 and income_annum<1500000 THEN '10-15 Lakh'
        ELSE '> 15 Lakh'
	END AS income_range, -- new column for ease of Analysis
    monthly_obligations,
    CASE
		WHEN monthly_obligations<10000 THEN '<10000'
        WHEN monthly_obligations>=10000 and monthly_obligations<20000 THEN '10K-20K'
        WHEN monthly_obligations>=20000 and monthly_obligations<30000 THEN '20K-30K'
        WHEN monthly_obligations>=30000 and monthly_obligations<40000 THEN '30K-40K'
        ELSE '> 40K'
	END as monthly_obligations_range, -- new column for ease of Analysis
    savings_account_balance,
    CASE 
		WHEN savings_account_balance >=10000 and savings_account_balance<50000 THEN '10K-50K'
        WHEN savings_account_balance >=50000 and savings_account_balance<100000 THEN '50K-1Lakh'
        WHEN savings_account_balance >=100000 and savings_account_balance<200000 THEN '1-2Lakh'
        WHEN savings_account_balance >=200000 and savings_account_balance<300000 THEN '2-3Lakh'
        WHEN savings_account_balance >=300000 and savings_account_balance<400000 THEN '3-4Lakh'
        ELSE '> 4Lakh'
	END AS savings_account_balance_range, -- new column for ease of Analysis
    investment_portfolio_value,
    CASE 
		WHEN investment_portfolio_value<100000 THEN '<1 Lakh'
        WHEN investment_portfolio_value>=100000 and investment_portfolio_value<500000 THEN '1- 5Lakh'
        WHEN investment_portfolio_value>=500000 and investment_portfolio_value<=1000000 THEN '5-10Lakh'
        ELSE '>10 Lakh'
	END as investment_portfolio_value_range, -- new column for ease of Analysis
    insurance_policies,
    CASE 
		WHEN insurance_policies<100000 THEN '< 1 Lakh'
        WHEN insurance_policies>=100000 and insurance_policies<1000000 THEN '1-10Lakh'
        WHEN insurance_policies>=1000000 and insurance_policies<2000000 THEN '10-20Lakh'
        WHEN insurance_policies>=200000 and insurance_policies<3000000 THEN '20-30Lakh'
        WHEN insurance_policies>=300000 and insurance_policies<4000000 THEN '30-40Lakh'
        ELSE '>40 Lakh'
	END As insurance_policies_range, -- new column for ease of Analysis
	loan_amount,
    CASE
		WHEN loan_amount>=50000 and loan_amount<1000000 THEN '<10Lakh'
        WHEN loan_amount>=1000000 and loan_amount<2000000 THEN '10-20Lakh'
        WHEN loan_amount>=2000000 and loan_amount<5000000 THEN '20-50Lakh'
        WHEN loan_amount>=5000000 and loan_amount<7000000 THEN '50-70Lakh'
        WHEN loan_amount>=7000000 and loan_amount<10000000 THEN '70L-1 Crore'
        WHEN loan_amount>=10000000 and loan_amount<20000000 THEN '1-2 Crore'
        ELSE '>2 Crore'
	END as loan_amount_range, -- new column for ease of Analysis
	loan_term_yrs,
    loan_purpose,
    approval_status,
    previous_loan_experience,
    credit_history,
    cibil_score,
    property_ownership,
    residential_assets_value,
    commercial_assets_value,
    luxury_assets_value,
    bank_asset_value
FROM capstone_cohort.synthetic_loan_data)

ALTER TABLE sql_cohort_2.loan_data
ADD COLUMN total_collateral DECIMAL(50,2); -- new column for ease of Analysis

UPDATE sql_cohort_2.loan_data
SET total_collateral = COALESCE(residential_assets_value, 0) +
                      COALESCE(commercial_assets_value, 0) +
                      COALESCE(luxury_assets_value, 0) +
                      COALESCE(bank_asset_value, 0) +
                      CASE
                          WHEN property_ownership = 'Owned' THEN COALESCE(residential_assets_value, 0)
                          ELSE 0
                      END;
