# Superstore Analysis

An end-to-end sales analytics project built around the Superstore dataset. The repository combines data cleaning, exploratory analysis, SQL-based business questions, customer segmentation, and dashboard mockups to tell a practical retail story.

## Project Goals

This project focuses on answering questions such as:

- Which product categories and sub-categories drive the most profit?
- Which regions perform best over time?
- How do orders, revenue, and profit change year over year?
- Which customers are the most valuable based on RFM behavior?

## What’s In The Repo

- `data/` contains the raw dataset and a cleaned version used for analysis.
- `notebooks/01_cleaning_eda.ipynb` covers data cleaning and exploratory analysis.
- `notebooks/Z0_RFM_analysis.ipynb` performs customer RFM analysis and segmentation.
- `sql/business_questions.sql` contains SQL queries used to answer core business questions.
- `dashboards/` includes exported dashboard images for the project.
- `visuals/bubblechart.py` provides a reusable bubble chart implementation for custom visuals.

## Dashboards

The `dashboards/` folder includes image exports of the main analysis views:

- Core Dashboard
- Customer RFM Dashboard
- Distribution Dashboard
- Profitability Analysis

These files are intended as presentation assets and references for future Tableau or BI work.

## Data

The project uses the following files in `data/`:

- `Superstore.csv` as the raw source data
- `superstore_cleaned.csv` as the cleaned analysis-ready dataset

## Setup

This project is primarily notebook-driven. A Python environment with the dependencies listed in `notebooks/requirements.txt` is enough to reproduce the analysis.

```bash
pip install -r notebooks/requirements.txt
```

## How To Use

1. Open `notebooks/01_cleaning_eda.ipynb` to review the cleaning workflow and exploratory analysis.
2. Open `notebooks/Z0_RFM_analysis.ipynb` to review the customer segmentation work.
3. Run the queries in `sql/business_questions.sql` against the orders table or your own SQL copy of the dataset.
4. Use the dashboard images in `dashboards/` as references when building or refining a Tableau dashboard.

## Analysis Highlights

The SQL file and notebooks are designed to support questions around:

- yearly revenue and profit trends
- top sub-categories by profit
- regional performance
- category-level product ranking
- year-over-year growth
- customer segmentation with RFM scoring

## Notes

- The notebooks were created in VS Code and may need the correct Python environment selected before running.
- The repository is structured as an analysis portfolio project, so the visual assets and notebooks are the primary outputs.

## License

No license has been specified yet.