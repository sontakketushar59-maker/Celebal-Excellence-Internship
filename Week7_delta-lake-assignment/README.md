# Delta Lake Assignment – Week 7

## Project Overview
This project is about learning how to handle customer data in a real-world scenario using Azure Databricks and Delta Lake.
The focus is on three main objectives:
1. Loading and cleaning data.
2. Managing incremental updates with Slowly Changing Dimensions (SCD1 and SCD2).
3. Validating and analyzing the data to produce meaningful business insights.

The notebook used for this work is named **Delta_Assignment_Objectives.ipynb**.

---

## Folder Structure
The screenshots are organized into folders so that each step of the assignment is clearly documented:
screenshots/
│   ├── data_loading/
│   │   └── data_loading_preview.png
│   ├── data_cleaning/
│   │   └── data_cleaning_preview.png
│   ├── scd1/
│   │   └── scd1_merge.png
│   ├── scd2/
│   │   └── scd2_profile.png
│   ├── validation/
│   │   └── validation_counts.png
│   └── final_output/
│       ├── final_output_segmentation.png
│       ├── final_output_top_customers.png
│       └── final_output_joined.png



---

## Step-by-Step Explanation

### Data Loading
We started by loading two files: `cleaned_superstore.csv` and `customer_incremental.csv`.
This step is important because without loading the data properly, none of the later operations would work.
Extra: We also inferred schema automatically, which saved time compared to manually defining column types.

### Data Cleaning
We cleaned the dataset by dropping null values and removing duplicates.
This ensures that the data is trustworthy and avoids errors in later analysis.
Extra: We added a `total_amount` column to make calculations easier, which was not strictly required but adds value.

### SCD1
Slowly Changing Dimension Type 1 was used to update existing customer records in the transactional table.
This is useful when a customer’s details change and we want to overwrite the old values.
Extra: We also ran queries to check the top customers by profit, which goes beyond the basic requirement.

### SCD2
Slowly Changing Dimension Type 2 was used to extend the schema with new attributes like Email, Customer_Type, and Registration_Date.
This is important because in real-world systems, customer profiles evolve over time and we need to keep track of new information.
Extra: By joining transactional data with profile data, we created a richer dataset for analytics.

### Validation
We validated the dataset by checking row counts, ensuring uniqueness, and previewing sample rows.
This step confirms that the merges and schema changes did not introduce errors.
Extra: We compared counts before and after cleaning to show the impact of data preparation.

### Final Output
We ran analytics queries to answer business questions:
- Which segment generated the most sales and profit?
- Who are the top customers by profit?
- How does customer type affect sales and profit?

These insights demonstrate the value of clean, well-managed data.
Extra: We noticed that some customer types were null, which highlights the importance of schema evolution and data enrichment.

---

## Results and Insights
- The Consumer segment had the highest sales and profit.
- The Top 10 customers contributed significantly to overall profit.
- The Joined profile data revealed missing values, showing why schema evolution is necessary.
- Extra: Adding attributes like Email and Registration_Date made the dataset more realistic for CRM-style analytics.

---

## Conclusion
This assignment shows how Delta Lake can be used to:
- Handle incremental updates with SCD1.
- Manage schema evolution with SCD2.
- Validate data integrity.
- Produce meaningful business insights through analytics.

The extra steps we took, such as adding new columns and running additional queries, made the project more realistic and closer to what happens in real-world data engineering.
