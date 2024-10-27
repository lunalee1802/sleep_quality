# Sleep Quality Analysis Project

This project analyzes factors affecting sleep quality using SQL for data preparation and Python for in-depth analysis and modeling. The goal is to identify key lifestyle and health metrics that influence sleep quality and build a predictive model.

---

## 1. Project Overview

- **Dataset**: The dataset contains information on sleep duration, physical activity, stress level, and other health metrics.
- **Objective**: Understand the key factors that impact sleep quality and build a model to predict sleep quality based on these factors.
- **Tools Used**: 
  - **SQL**: Data cleaning, aggregation, and exporting for further analysis.
  - **Python**: Data visualization, correlation analysis, and machine learning modeling using `DecisionTreeRegressor`.

---

## 2. SQL Workflow

The SQL process was primarily focused on data preparation and cleaning to ensure that the data was suitable for analysis and modeling.

### SQL Steps:
1. **Database and Table Creation**:
   - A database named `sleep_analysis` was created, and a table (`sleep_data`) was structured based on dataset attributes such as `sleep_duration`, `stress_level`, `physical_activity_level`, etc.
   
2. **Data Cleaning**:
   - Checked for missing values in essential columns (e.g., `sleep_duration`, `quality_of_sleep`).
   - Removed rows with outliers (e.g., extremely high or low `sleep_duration` values).

3. **Data Aggregation**:
   - Created views for average sleep quality based on physical activity level and sleep duration range.
   - This helped in understanding the relationship between lifestyle factors and sleep quality through SQL queries.

4. **Data Export**:
   - Exported the cleaned data from SQL to a CSV file to facilitate further analysis and modeling in Python.

**SQL File**: [SQL code file](https://github.com/lunalee1802/sleep_quality/blob/main/sleep%20quality%20project.sql)

---

## 3. Python Workflow

After the initial SQL preparation, Python was used to perform data visualization, correlation analysis, and modeling using a Decision Tree.

### Python Steps:

#### 3.1 Data Loading and Exploration
- Loaded the cleaned CSV file and conducted exploratory data analysis (EDA) to understand the distribution and relationships between variables.
- Generated visualizations for key variables:
  
  - **Distribution of Sleep**:
  
    ![Distribution of Sleep Duration](https://github.com/lunalee1802/sleep_quality/blob/main/images/Distribution%20of%20Sleep%20Duration.PNG)
  
  - **Average Quality of Sleep by Physical Activity Level**:
  
    ![Average Quality of Sleep by Physical Activity Level](https://github.com/lunalee1802/sleep_quality/blob/main/images/Average%20Quality%20of%20Sleep%20by%20Physical%20Activity%20Level.PNG)

#### 3.2 Correlation Analysis and Hypothesis Testing
- Created a correlation matrix heatmap to observe relationships between numeric variables.

  - **Correlation Matrix**:
  
    ![Correlation Matrix](https://github.com/lunalee1802/sleep_quality/blob/main/images/Correlation%20Matrix.PNG)

#### 3.3 Decision Tree Modeling
- **Model Training**: Trained a Decision Tree Regressor using key features like `sleep_duration`, `stress_level`, and `physical_activity_level`.
- **Hyperparameter Tuning**: Used `GridSearchCV` to optimize the Decision Tree model for `max_depth` and `min_samples_split`.
- **Evaluation**: Calculated Mean Squared Error (MSE) to assess model performance.

#### 3.4 Feature Importance Analysis
- Visualized feature importance to understand which factors most significantly impact sleep quality predictions.

  - **Feature Importance in Predicting Sleep Quality**:
  
    ![Feature Importance in Predicting Sleep Quality](https://github.com/lunalee1802/sleep_quality/blob/main/images/Feature%20Importance%20in%20Predicting%20Sleep%20Quality.PNG)

---

## 4. Results and Insights

### Key Findings

1. **Sleep Duration and Quality**:
   - **Sleep Duration Distribution**: Most individuals reported sleeping between 6 and 8 hours, which aligns with higher sleep quality.
   - ![Quality of Sleep by Sleep Duration](https://github.com/lunalee1802/sleep_quality/blob/main/images/Quality%20of%20Sleep%20by%20Sleep%20Duration.PNG)

2. **Stress Level and Sleep Quality**:
   - High stress levels were associated with lower sleep quality.
   - ![Quality of Sleep by Stress Level](https://github.com/lunalee1802/sleep_quality/blob/main/images/Quality%20of%20Sleep%20by%20Stress%20Level.PNG)

3. **Correlation and Feature Importance**:
   - Stress level showed a strong negative correlation with sleep quality.
   - Physical activity and sleep duration positively influenced sleep quality.

### Conclusion
- **Optimal Sleep Duration**: Aim for 7-8 hours per night for optimal sleep quality.
- **Lifestyle Recommendations**: Engage in regular physical activity and practice stress management techniques for better sleep quality.

---

## 5. How to Run

1. **Clone the repository**:
   ```bash
   git clone https://github.com/lunalee1802/sleep_quality.git
