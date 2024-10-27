
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
  - **Sleep Duration Distribution**: Histogram to see the general sleep duration pattern.
  - **Relationship with Sleep Quality**: Analyzed sleep quality in relation to physical activity level, stress level, and other metrics.

#### 3.2 Correlation Analysis and Hypothesis Testing
- Created a correlation matrix heatmap to observe relationships between numeric variables.
- Performed a hypothesis test to determine if physical activity significantly affects sleep quality.

#### 3.3 Decision Tree Modeling
- **Model Training**: Trained a Decision Tree Regressor using key features like `sleep_duration`, `stress_level`, and `physical_activity_level`.
- **Hyperparameter Tuning**: Used `GridSearchCV` to optimize the Decision Tree model for `max_depth` and `min_samples_split`.
- **Evaluation**: Calculated Mean Squared Error (MSE) to assess model performance.

#### 3.4 Feature Importance Analysis
- Visualized feature importance to understand which factors most significantly impact sleep quality predictions.

**Python Notebook**: [Jupyter Notebook file](https://github.com/lunalee1802/sleep_quality/blob/main/sleep%20qulatiy.ipynb)

---

## 4. Results and Insights

### Key Findings
- **Sleep Duration and Stress Level**: Higher stress levels were negatively correlated with sleep quality, while adequate sleep duration showed a positive correlation.
- **Feature Importance**: The model identified `sleep_duration` and `stress_level` as key predictors of sleep quality.
- **Model Performance**: The optimized Decision Tree model achieved a low MSE, indicating effective predictive performance.

### Conclusion

This analysis highlights several important factors that contribute to optimal sleep quality. Using the dataset's insights, we can draw specific recommendations around sleep duration, physical activity, and stress management to improve sleep quality effectively.

1. **Optimal Sleep Duration**:
   - **Ideal Range**: Analysis results suggest that **7 to 8 hours of sleep** per night is associated with the highest sleep quality. Those sleeping within this range generally reported better sleep quality scores, compared to individuals who slept significantly more or less.
   - **Sleep Duration Impact**: Shorter sleep durations (<5 hours) and very long durations (>9 hours) tend to correlate with reduced sleep quality, potentially due to fragmented sleep or excessive time in bed without quality rest. Therefore, adults aiming for **7 to 8 hours of sleep** are more likely to experience restorative and high-quality sleep, aligning with widely recommended guidelines.

2. **Impact of Physical Activity**:
   - **Increased Activity Levels**: Higher levels of physical activity, as measured by both daily steps and overall activity scores, are positively associated with improved sleep quality. Engaging in regular physical exercise, whether through moderate daily steps or structured activities, can help regulate sleep cycles and promote deeper sleep stages.
   - **Recommendation**: Incorporating at least moderate physical activity into daily routines can positively impact sleep, enhancing overall sleep quality and duration.

3. **Stress Management**:
   - **Stress-Sleep Relationship**: There is a clear negative correlation between stress levels and sleep quality, meaning that higher stress levels tend to decrease sleep quality. Persistent stress can contribute to difficulty in falling asleep, frequent waking, and overall reduced sleep quality.
   - **Practical Steps**: Stress management techniques—such as mindfulness meditation, deep breathing exercises, or physical relaxation practices—can be beneficial. Reducing stress, especially in the hours leading up to bedtime, may help improve both the quality and consistency of sleep.

### Summary Recommendations
To optimize sleep quality based on these insights, it is recommended to:
- Aim for **7 to 8 hours of sleep per night**, aligning with the optimal range observed in this analysis.
- Include regular physical activity in daily routines, such as **walking or moderate exercise**, which supports sleep regularity and quality.
- Manage stress proactively using techniques like **relaxation exercises or mindfulness**, especially in the evening, to reduce sleep disturbances.

By incorporating these strategies, individuals can create a balanced lifestyle that supports both physical and mental well-being through improved sleep quality.



