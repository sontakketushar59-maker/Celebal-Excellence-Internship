# Celebal Project: Data Pipeline (Bronze → Silver → Gold)

## 📂 Project Structure
Sales_Summary_Project/
data/raw/
│
├── orders.csv
├── customers.csv
├── products.csv
├── regions.csv
├── transactions.csv
└── returns.csv
└── bronze_ingestion.ipynb
│
├── dashboard/
│   ├── Sales_Summary_Dashboard.pbix
│   └── dashboard_images/
│       ├── sales_summary_dashboard.png
│       ├
│       └── product_sales_table.png
│
├── docs/
│   ├── Sales_Summary_Report.pdf
│   └── README.md
│
└── references/
    ├
    └── azure_synapse_notes.txt


---

## Step 1–3: Bronze & Silver
- Ingested raw data into Bronze.
- Cleaned and standardized into Silver (products, inventory, suppliers, warehouses, transactions, shipments).

## Step 4–5: Gold Layer
- Built aggregated datasets:
  - Sales by Category
  - Supplier Performance
  - Inventory Stock Levels
  - Shipment Delays

## Step 6: Insights Generation
- Electronics category contributes 40% of sales → most profitable.
- Supplier A most reliable (rating 4.8, delay 1.2 days).
- Warehouse 3 holds 50% stock but highest damage.
- Warehouse 2 worst delays (avg 5 days).

## Step 7: Visualization
- Bar charts for sales, suppliers, inventory, delays.
- Clear interpretations under each chart.

## Step 8: Documentation
- This README file summarizes pipeline, insights, and visuals.
- Includes project folder structure for clarity.

## Step 9: Presentation
- Slides prepared for MCA/internship submission:
  - Pipeline diagram
  - Sample queries
  - Charts
  - Insights
  - Business recommendations


#Author
Prepared by Tushar  
MCA Student – Celebal Excellence Internship
August 2026