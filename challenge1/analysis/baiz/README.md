# Overview of Challenge Results

This readme file provides a high level description of all the work performed during this 
challenge. The data science process starts by a traditional EDA (Exploratory Data
Analysis) using Pandas Profile and other traditional visualisation techniques. 
Then the work moves towards actual prediction of EnergyProduction for June 2013. 

## Short Files Description Overview

All files added were only added in the present directory, and these are:

- README.md (This file)

- requirements.txt (Python requirements file to reproduce venv)

- 001_ExploratoryDataAnalysis.ipynb (Notebook to Explore DataSet)

- 001_ExploratoryDataAnalysis.pdf (PDF of Notebook to Explore DataSet)

- data_profile_<dataset>.html (HTML with data profiling report)

- 002_VAR.ipynb (Notebook that performs predictions)

- 002_VAR.pdf (PDF of Notebook that performs predictions)

- predicted_energy_production.csv (Requested File)

- mape.txt (Requested File)

 
# Exploratory Data Analysis

The exploration process revealed a very good quality dataset with key features 
for a Machine Learning model, these were clearly: 'House', 'Temperature', 'Daylight', 'EnergyProduction' (and clearly the timestamp). 

Look at file 001_ExploratoryDataAnalysis for more details. 


# Predictions/Forecasting
 
When considering forecasting of multivariate timeseries, few techniques could come to mind, but officially 
one techniques is particularly used: Vector Autoregressions (https://www.statsmodels.org/dev/vector_ar.html).

More details about the exact implementation can be see in the file 002_VAR. 


# Future Work

An attempt was also made to perform some RNN LSTM as this type of NN are now demonstrating great performance 
for time series analysis. Unfortunately, not enough time was available to obtain results. In this regard one
aspects that was particularly considered was the use of not just RNN-LSTM but also their interpretation using 
SHAP. This is still an area of active research and hopefully in the near future this will be easily available. 

More on SHAP for RNN is available here: 
 
- https://github.com/slundberg/shap/issues/213
- https://towardsdatascience.com/interpreting-recurrent-neural-networks-on-multivariate-time-series-ebec0edb8f5a