CREATE DATABASE stock_analysis;
USE stock_analysis;

CREATE TABLE stocks (
    `Date` DATETIME,
    `Open` FLOAT,
    High FLOAT,
    Low FLOAT,
    `Close` FLOAT,
    Volume BIGINT,
    Dividends FLOAT,
    Stock_Splits FLOAT,
    Company VARCHAR(10),
    Price_Change FLOAT,
    MA_20 FLOAT,
    `Return` FLOAT,
    Volatility FLOAT,
    Volume_MA_20 FLOAT,
    Volume_Spike FLOAT,
    Pays_Dividend BOOLEAN,
    Dividend_Yield FLOAT
);
# 1. TOP PERFORMING STOCKS BY AVERAGE RETURN
# Reason: Identify consistently high-return stocks
# Insight: Helps in selecting strong growth investments
SELECT Company, AVG(`Return`) AS avg_return
FROM stocks
GROUP BY Company
ORDER BY avg_return DESC
LIMIT 10;


# 2. MOST VOLATILE STOCKS (HIGH RISK)
# Reason: Measure price fluctuation (risk level)
# Insight: Useful for traders (opportunity) and investors (risk avoidance)
SELECT Company, AVG(Volatility) AS avg_volatility
FROM stocks
GROUP BY Company
ORDER BY avg_volatility DESC
LIMIT 10;


# 3. HIGH RETURN + LOW RISK STOCKS (IDEAL PORTFOLIO)
# Reason: Filter stocks with strong returns (>1%) and controlled volatility (<2.5%)
# Range Logic:
# - Return > 0.01 → Represents meaningful positive performance (above market average)
# - Volatility < 0.025 → Allows moderate fluctuation while avoiding highly risky stocks
# Insight: Best candidates for balanced long-term investment portfolios
SELECT Company,
       AVG(`Return`) AS avg_return,
       AVG(Volatility) AS avg_risk
FROM stocks
GROUP BY Company
HAVING avg_return > 0.01 AND avg_risk < 0.025
ORDER BY avg_return DESC;


# 4. STRONG MARKET MOVEMENTS (VOLUME + RETURNS)
# Reason: Detect high conviction moves backed by strong trading activity
# Range Logic:
# - Volume_Spike > 1.5 → Indicates 50% higher than normal trading activity
# - Return > 0.02 → Significant daily movement (2%+ is strong in equities)
# Insight: Indicates institutional participation and reliable momentum signals
SELECT Company, COUNT(*) AS strong_moves
FROM stocks
WHERE Volume_Spike > 1.5 AND `Return` > 0.02
GROUP BY Company
ORDER BY strong_moves DESC;


# 5. RISK-ADJUSTED RETURN (CONSISTENCY ANALYSIS)
# Reason: Combine return with standard deviation to measure stability
# Range Logic:
# - Avg Return > 0 → Ensures positive performance
# - STDDEV < 0.02 → Low variability (stable returns)
# Insight: Identifies consistent performers suitable for long-term portfolios
SELECT Company,
       AVG(`Return`) AS Avg_Return,
       STDDEV(`Return`) AS Risk
FROM stocks
GROUP BY Company
HAVING AVG(`Return`) > 0 AND STDDEV(`Return`) < 0.02
ORDER BY Avg_Return DESC;


# 6. VOLUME VS RETURN RELATIONSHIP
# Reason: Analyze if higher trading activity leads to higher returns
# Insight: Helps validate the theory that volume precedes price movement
SELECT Company,
       AVG(Volume_Spike) AS Avg_Volume,
       AVG(`Return`) AS Avg_Return
FROM stocks
GROUP BY Company
ORDER BY Avg_Volume DESC;


# 7. STOCK CATEGORIZATION (BALANCED SEGMENTATION)
# Reason: Classify stocks based on relative performance and risk
# Range Logic (Adjusted for better distribution):
# - Return > 1% → Strong performer
# - Volatility threshold relaxed to 2.5% for realistic market spread
# Insight: Provides meaningful segmentation for different investor types
SELECT Company,
       AVG(`Return`) AS Avg_Return,
       AVG(Volatility) AS Volatility,
       CASE 
           WHEN AVG(`Return`) > 0.01 AND AVG(Volatility) < 0.025 THEN 'Ideal'
           WHEN AVG(`Return`) > 0.01 AND AVG(Volatility) >= 0.025 THEN 'Aggressive'
           WHEN AVG(`Return`) <= 0.01 AND AVG(Volatility) < 0.02 THEN 'Stable'
           ELSE 'Risky'
       END AS Category
FROM stocks
GROUP BY Company;


# 8. TREND STRENGTH USING MOVING AVERAGE
# Reason: Compare price with moving average to detect trend strength
# Range Logic:
# - Close / MA_20 > 1 → Price above trend (bullish)
# - Higher ratio → stronger upward momentum
# Insight: Identifies stocks with sustained bullish trends
SELECT Company,
       AVG(Close / MA_20) AS Trend_Strength
FROM stocks
GROUP BY Company
ORDER BY Trend_Strength DESC;


# 9. LOWEST PERFORMING STOCKS (WORST RETURNS)
# Reason: Identify stocks with consistently negative or low returns
# Insight: Helps in avoiding poor investments and detecting declining companies
SELECT Company, AVG(`Return`) AS avg_return
FROM stocks
GROUP BY Company
ORDER BY avg_return ASC
LIMIT 10;