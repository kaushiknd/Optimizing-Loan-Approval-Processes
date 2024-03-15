# Optimizing-Loan-Approval-Processes
### Domain: Banking
## Introduction:
The financial industry continually seeks ways to optimize loan approval processes, recognizing the pivotal role they play in ensuring a balance between risk management and financial inclusion. In this project, "Optimizing Loan Approval Processes: A Data-Driven Approach," we delve into the intricate dynamics of loan approval by leveraging a comprehensive dataset of loan applicants. Our goal is to unearth key factors influencing loan approval decisions, providing actionable insights to enhance the accuracy and efficiency of the approval process, while mitigating risks for both financial institutions and potential borrowers.

## Objectives:
1. __Identify Key Factors__: Uncover and analyze the primary factors influencing loan approval decisions, recognizing their impact on the overall process.
2. __Optimize Approval Process__: Deliver recommendations aimed at streamlining and improving the accuracy of the loan approval process, enhancing operational efficiency.
3. __Risk Assessment__: Evaluate the risk profiles associated with different applicant types, providing insights to inform better decision-making.
4. __Demographic Analysis__: Investigate how various demographic factors contribute to the nuances of loan approval decisions.
5. __Financial Health Indicators__: Assess the role of applicants' financial health in influencing the loan approval process.
6. __Asset Analysis__: Examine the impact of different types of assets on the likelihood of loan approval.

## Data Processing:¶
__Data__: capstone_cohort2_synthetic_loan_data.sql: This Dataset contains details of Loans Applied

__Data Dictionary__:

- __loan_id__: Unique identifier for the loan application.
- __gender__: Gender of the applicant ['Male', 'Female', 'Other'].
- __age__: Age of the applicant.
- __marital_status__: Marital status of the applicant ['Married', 'Single', 'Divorced', 'Widowed'].
- __no_of_dependents__: Number of people dependent on the applicant.
- __educational_level__: Highest level of education achieved by the applicant ['High School', 'Bachelor', 'Master', 'PhD', 'Other'].
- __employment_type__: Type of employment of the applicant ['Salaried', 'Self-employed', 'Government', 'Unemployed'].
- __geographical_location__: Geographical location of the applicant ['Urban', 'Rural'].
- __type_of_residence__: Type of residence the applicant lives in ['Owned', 'Rented', 'With Parents'].
- __income_annum__: Annual income of the applicant.
- __monthly_obligations__: Monthly financial obligations of the applicant.
- __savings_account_balance__: Balance in the savings account of the applicant.
- __investment_portfolio_value__: Value of the applicant’s investment portfolio.
- __insurance_policies__: Value of the applicant’s insurance policies.
- __loan_amount__: Amount of loan requested.
- __loan_term_yrs__: Term of the loan in years.
- __loan_purpose__: Purpose for which the loan is requested ['Home Loan', 'Car Loan', 'Education Loan', 'Personal Loan'].
- __approval_status__: Current status of the loan application ['Approved', 'Rejected'].
- __previous_loan_experience__: Applicant’s experience with previous loans ['Positive', 'Negative', 'None'].
- __credit_history__: Credit history of the applicant ['Good', 'Bad', 'No History'].
- __cibil_score__: Credit score of the applicant.
- __residential_assets_value__: Value of the residential assets owned by the applicant.
- __commercial_assets_value__: Value of the commercial assets owned by the applicant.
- __luxury_assets_value__: Value of the luxury assets owned by the applicant.
- __bank_asset_value__: Value of assets held at the bank by the applicant.
- __property_ownership__: Ownership status of property by the applicant ['Owned', 'Rented'].

Given dataset capstone_cohort2_synthetic_loan_data.sql was imported to MySQL Workbench and the below mentioned columns were added for further ease of Analysis using given SQL Script:

- __gender_range__: In this column given Age of the applicant was partitioned in groups of '18-30', '30-45', '45-55' & '> 55'.
- __income_range__: In this column given Annual Income of the applicant was partitioned in groups of '3-10 Lakh', '10-15 Lakh' & '> 15 Lakh'.
- __monthly_obligations_range__: In this column given monthly_obligations of the applicant was partitioned in groups of '10K-20K', '20K-30K', '30K-40K' & '> 40K'.
- __savings_account_balance_range__: In this column given savings_account_balance of the applicant was partitioned in groups of '10K-50K', '50K-1Lakh', '1-2Lakh', '2-3Lakh', '3-4Lakh' & '> 4Lakh'.
- __investment_portfolio_value_range__: In this column given investment_portfolio_value of the applicant was partitioned in groups of '<1 Lakh', '1- 5Lakh', '5-10Lakh' & '>10 Lakh'.
- __insurance_policies_range__: In this column given insurance_policies of the applicant was partitioned in groups of '<1 Lakh', '1-10Lakh', '10-20Lakh', '20-30Lakh', '30-40Lakh' & '>40 Lakh'.
- __loan_amount_range__: In this column given loan_amount of the applicant was partitioned in groups of '<10Lakh', '10-20Lakh', '20-50Lakh', '50-70Lakh', '70L-1 Crore', '1-2 Crore' & '>2 Crore'.
- __total_collateral__: New column was created by adding column's residential_assets_value, commercial_assets_value, luxury_assets_value, bank_asset_value, property_ownership: Owned

__SQL Script__: Capstone_SQL.sql

## Data Visualisation
All The data were imported to Power BI Desktop. Below Dashboard was created:

![image](https://github.com/kaushiknd/Optimizing-Loan-Approval-Processes/assets/115521614/328fda4b-bd62-4bdd-a9ad-83f78dd59567)


Based on the analysis and the identified correlations, here are some recommendations:

## Recommendations:
1. __Focus on Collateral and Assets__:

   __Positive Correlations__: Strengthen the focus on applicants with significant total collateral, commercial assets, and bank assets. These factors seem to be positively associated with loan approval.

2. __Demographic Considerations__:

   __Age Group 30-45__: Target applicants within the age group of 30-45, as this demographic appears to have a higher likelihood of loan approval.
   
   __Marital Status__: Consider providing tailored loan products or incentives for married individuals.
   
   __Dependents less than 1__: Applicants with fewer dependents (<=1) have a positive correlation with loan approval, suggesting a lower financial burden.

3. __Educational Background__:
   
    __Educational Level (Masters or Bachelor Degree)__: Applicants with higher education levels (Masters or Bachelor Degree) are more likely to receive loan approval.

4. __Employment Type__:
   
    __Salaried Employees__: Salaried employees seem to have a positive correlation with loan approval. Tailor loan products or incentives to cater to this employment category.

5. __Geographical Location and Residence Type__:

   __Urban Geography__: Applicants from urban areas have a higher likelihood of loan approval. Consider geographical targeting in marketing and product offerings.

   __Owned Residence__: Applicants with owned residences are more likely to be approved for loans.

6. __Income and Financial Health__:

    __Income Range 3-10 Lakhs__: Target applicants with an income in the range of 3-10 Lakhs, as this income bracket shows a positive correlation with loan approval.

    __Savings Account Balance less than 4 Lakh__: Applicants with savings account balances less than 4 Lakhs are more likely to receive loan approval.

7. __Risk Mitigation__:

    __Cautious Approaches for Negative Correlations__: Be cautious when dealing with applicants with characteristics negatively correlated with loan approval, such as higher loan amounts, longer loan terms, lower investment portfolios, lower CIBIL scores, and lower annual incomes.

8. __Further Analysis__:

    __Investigate No Significant Correlations__: Explore reasons why bank_asset_value and luxury_assets_value did not show significant correlations. Further analysis may provide insights into potential factors impacting these variables.

9. __Customer Engagement__:

    __Insurance Policies__: Engage with customers who have insurance policies greater than 1 Lakh, as this factor seems positively correlated with loan approval.

## Conclusion:
The above recommendations aim to enhance the accuracy of the loan approval process by targeting applicants with characteristics positively correlated with loan approval and avoiding potential risks associated with negatively correlated factors. Continuous monitoring and periodic updates to these recommendations based on changing trends and customer profiles are advisable.

# Thank You!!!
