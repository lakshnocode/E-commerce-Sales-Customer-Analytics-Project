# E-commerce Sales Analytics Project

## Tools Used
- Python 3
- SQL
- SQLite
- Pandas
- Matplotlib

## How to Run
```bash
pip install -r requirements.txt
python main.py
```

## Dataset Description
This project uses the UCI **Online Retail** dataset (`Online Retail.xlsx`) as the primary source.
If download fails, the pipeline automatically generates a realistic synthetic fallback dataset with the same schema.

Expected columns:
- InvoiceNo
- StockCode
- Description
- Quantity
- InvoiceDate
- UnitPrice
- CustomerID
- Country

## Business Questions Answered
1. What is the monthly revenue trend?
2. Which are the top 10 products by revenue?
3. Which countries generate the most revenue?
4. What is the split between repeat and new customers?
5. What is the average order value?
6. Who are the top customers by lifetime value?

## Outputs Generated
- Cleaned dataset: `data/processed/cleaned.csv`
- SQLite database: `data/processed/ecommerce.db`
- SQL query outputs: `output/tables/*.csv`
- Charts: `output/charts/*.png`
- Insights summary: `output/insights.txt`

## Example Insights (Auto-Generated)
- Total revenue: `<auto-filled by main.py>`
- Best month: `<auto-filled by main.py>`
- Top country: `<auto-filled by main.py>`
- Repeat customer percentage: `<auto-filled by main.py>`
- Average order value: `<auto-filled by main.py>`
- Top product category: `<auto-filled by main.py>`
