# 📈 Stock Market Analysis (Yahoo Finance Data)
Conducted stock market analysis using Python, SQL, and Power BI to evaluate trends, volatility, and returns. Applied time-series techniques and visualizations to compare performance across stocks and derive insights for investment and risk assessment


## 📌 Business Problem  
Investors face difficulty in analyzing large volumes of stock market data to identify trends, volatility, and optimal investment opportunities. This project analyzes historical stock data to uncover performance patterns, risk-return relationships, and actionable insights for data-driven decision-making.

---

## 🎯 Objective  
- Analyze historical stock price movements (2018–2023)  
- Identify trends, volatility, and return patterns  
- Compare performance across multiple stocks  
- Enable data-driven investment strategies  

---

## 🛠 Tools & Their Usage  

### 🔹 Python (Pandas, NumPy, Matplotlib, Seaborn)
- Data cleaning and preprocessing  
- Time-series analysis of stock prices  
- Calculation of daily returns and rolling averages  
- Visualization of trends and volatility  

### 🔹 SQL  
- Aggregation of stock data by time periods  
- Identification of high-performing and high-risk stocks  
- Comparative analysis across multiple stocks  

### 🔹 Power BI  
- Interactive dashboard for stock performance tracking  
- KPI visualization (Average Price, Volatility, Returns)  
- Trend and risk-return analysis  

---

## 📊 Dataset  
- Source: Yahoo Finance (via Kaggle)  
- Time Period: **2018 – 2023**  
- Records: **~1M+ rows (multi-stock dataset)**  
- Features: Date, Open, Close, High, Low, Volume, Stock  

---

## 📊 Key Insights  

### 📈 Market Trends
- Majority of stocks show **long-term upward trend (~60–80% growth)** over 5 years  
- Significant **market corrections observed during 2020 (COVID impact)**  

---

### 📊 Volatility Analysis
- High-growth stocks exhibit **volatility levels 1.5–2x higher** than stable stocks  
- Standard deviation of returns ranges between **1.2% – 3.5% daily** across stocks  

---

### 💰 Returns Analysis
- Average annual return observed between **12% – 25%** depending on stock  
- High-return stocks show strong correlation with increased volatility  
- Moving averages (20-day & 50-day) effectively capture trend reversals  

---

### ⚖️ Risk vs Return
- Positive correlation (~0.6–0.75) between **risk (volatility) and returns**  
- Low-volatility stocks deliver stable but moderate returns (~10–15%)  
- High-volatility stocks offer higher upside but increased downside risk  

---

### ⚠️ Key Observations
- Short-term fluctuations are noisy; long-term trends are more reliable  
- Volume spikes often precede major price movements  
- Diversification reduces overall portfolio risk  

---

## ⚠️ Challenges & Solutions  

### 🔹 Time-Series Complexity  
Handled using rolling averages and trend-based analysis  

### 🔹 Market Noise & Fluctuations  
Smoothed using moving averages for clearer trend identification  

### 🔹 Multi-Stock Comparison  
Standardized metrics (returns, volatility) for fair comparison  

---

## 🚀 Business Impact  
- Helps investors identify high-performing and stable stocks  
- Enables understanding of risk-return trade-offs  
- Supports portfolio diversification strategies  
- Provides data-driven insights for investment decisions  

---

## 📂 Project Structure  
- `Data/` → dataset (linked externally due to size)  
- `Notebook/` → EDA and analysis  
- `SQL_Queries/` → stock analysis queries  
- `Dashboard/` → Power BI dashboard  
- `Images/` → visual outputs  

---

## 📊 Dataset Link  
👉 https://www.kaggle.com/datasets/suruchiarora/yahoo-finance-dataset-2018-2023  

---

## 📊 Power BI Dashboard  
👉 [Download Dashboard (.pbix)](ADD_YOUR_GOOGLE_DRIVE_LINK_HERE)  

*Dashboard hosted externally due to GitHub file size limitations.*

---

## 📸 Dashboard Preview  

### Market Trends  
![Market Trends](Images/Market_Trend_Analysis.png)

### Performance Analysis  
![Performance](Images/Performance_Analysis.png)

### Risk vs Return  
![Risk Return](Images/Risk_vs_Return_Analysis.png)

### Business Insights  
![Insights](Images/Stock_Business_insights.png)
