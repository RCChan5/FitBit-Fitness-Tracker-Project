
# Fitbit Fitness Tracker Project
 
[Data Source](https://www.kaggle.com/datasets/arashnic/fitbit)


## Introduction

In this project, we aim to leverage publicly available Fitbit fitness data sourced from Kaggle to build a comprehensive SQL database for data analysis and predictive modeling. The dataset includes various metrics related to physical activity, sleep patterns, and heart rate, providing an excellent foundation for exploring health and fitness trends.

## Project Phases

### 1. Database Creation and Management
- Import and preprocess the Fitbit dataset to ensure data quality and consistency.
- Design and implement a relational SQL database schema tailored to the dataset, ensuring efficient storage and retrieval of the data.
- Populate the database with the cleaned data and set up indexing for optimized query performance.

### 2. Exploratory Data Analysis through SQL Queries
- Perform a series of SQL queries to extract meaningful insights, such as:
  - Average daily step count.
  - Trends in sleep duration.
  - Correlations between activity levels and heart rate.
- Design and execute complex SQL queries to address intricate analytical questions and uncover deeper relationships within the data.
- Analyze the data for patterns and anomalies that could inform the modeling phase.

### 3. Predictive Modeling
- Export relevant subsets of the data for machine learning purposes.
- Develop and train a predictive model to address a specific fitness-related goal, such as:
  - Forecasting activity levels.
  - Identifying factors influencing sleep quality.
- Evaluate the model's performance and interpret its results to provide actionable insights.


## Business Rules:

The goal of this database is to provide users with access to data of the larger population to allow them to see where they stand amongst other healthy individuals. It also is used to help determine whether an individual is healthy or not based on certain parameters. 

●	A user can only have 1 address and 1 address may only have one user connected to it

●	Each daily activity can have one to many UserInfo

●	Each daily activity can have one to many active times

●	Each daily activity can have one to many active distances

●	Each daily activity can have one to many sleep times

## Conclusion

This project showcases the integration of database management, query optimization, and data science techniques to derive value from fitness data. By combining SQL and machine learning, we aim to uncover trends and build predictive tools that enhance our understanding of personal health metrics.

