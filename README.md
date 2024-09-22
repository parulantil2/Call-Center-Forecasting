# Call Center Forecasting

This project aims to predict the call volumes for the next 14 days using historical data from the past 3 months. The forecasting will help optimize call center operations, ensuring efficient resource allocation and improving customer service.

## Overview

We utilize time series forecasting techniques, specifically SARIMA (Seasonal ARIMA), to predict call volumes for a 14-day horizon. This project involves data preprocessing, model building, evaluation, and visualization of the forecasting results.

## Dataset

The dataset consists of **3 months of call center data**, with features such as:
- **Call ID:** Unique id of each user
- **Agent:** Name of the person called
- **Date:** Date of the call
- **Time:** Time for the duration of the call (in minutes)
- **Topic:** Topic for which the agent called
- **Answered(Y/N):** Wheather the call was answered or not 
- **Resolved:** Wheather the issue was resolved or not 
- **Speed of Answer:** Time taken to answer the call (in seconds)
- **Average Talk Duration:** Average duration of each call (in minutes)
- **Satisfaction Rating:** Customer satisfaction rating after the call


The dataset is used to train the SARIMA model and predict call volumes for the upcoming 14 days.

## Features

- **Data Cleaning:** Handle missing values and outliers for accurate forecasting.
- **Time Series Analysis:** Use SARIMA model to account for trend and seasonality.
- **14-Day Forecast:** Predict future call volumes for two weeks based on historical data.
- **Model Evaluation:** Calculate model performance using Mean Absolute Error (MAE).
- **Visualization:** Plot historical data and forecasted values to visualize trends.


## Model Evaluation

The model's performance is evaluated using **Mean Absolute Error (MAE)**.
This metric helps ensure the accuracy and reliability of the forecasted values.
The lower the MAE, the better the model is at predicting future call volumes.
Our goal is to minimize the MAE for improved forecasting performance, providing more precise predictions to help optimize call center operations.



## Installation

To run this project locally, follow the steps below:

1.  **Clone the repository:**
  
     git clone https://github.com/parulantil2/Call-Center-Forecasting.git<br>
     cd Call-Center-Forecasting
   
2.  **Create Virtual Environment:**
     python -m venv venv<br>
     On Linux: source venv/bin/activate<br>
     On Windows: venv\Scripts\activate<br>

3.  **Install the dependencies:**
     pip install -r requirements.txt
