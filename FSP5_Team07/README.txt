=========================================================================================================
==================================== FSP 5, TEAM 7 - THE|PATHFINDERS ====================================
============================================= DOCUMENTATION =============================================
=========================================================================================================


>>>> FSP5_Team07 Data Extraction & Exploratory Analysis.ipynb			|| JUPYTER NOTEBOOK
> The code in this notebook is used to extract data from the various files to form our datasets and visualise our datasets to gain insights.
> For data extraction, all bus stops and MRT stations are being grouped by subzones. The demographics data and public transportation traffic data are then being aggregated by subzones, and datasets are being created to aid in exploratory analysis, time series forecasting and regression.
> For exploratory analysis, the spreads of all the variables in the datasets the correlation among them are being inspected. Tableau (included in our submission) is also being employed to gain further insights on the data.

--------------------------------------------------------------------------------------------------------------------------------------------

>>>> FSP5_Team07 Machine Learning - Time Series Forecast (AR, ARIMA).ipynb	|| JUPYTER NOTEBOOK
> The code in this notebook is used to forecast demographics data for 2025 based on our dataset containing demographics data from 2011-2020.
> Autoregression and ARIMA are being assessed for their suitabilility on our dataset from Notebook #1.
> For autoregression, the existence of autocorrelation using a lag plot is being determined and stationarity is checked for by using a time-series plot and the Augmented Dickey-Fuller test. The ADF score is then used to decide whether to apply a transformation. Autoregression on the transformed data is then determined to have a higher R-squared.
> ARIMA is the being applied, but it was deemed to be a weaker model than autoregression even with optimal hyperparameters.
> Autoregression is then being used to forecast the demographics data for 2025.

--------------------------------------------------------------------------------------------------------------------------------------------

>>>> FSP5_Team07 Machine Learning - Regression (Linear, Random Forest).ipynb	|| JUPYTER NOTEBOOK
> The code in this notebook is used to predict public transportation demand by subzone in 2025 using datasets from Notebooks #1 and #2.
> Univariate regression is bering performed on each of the eight variables in the dataset and 6 of the variables with the highest explained variance and lowest mean squared error are being chosen to be used in the regression model.
> The suitability of multivariate linear regression, decision tree regression and random forest regression is being assessed for the dataset. Having have the highest R-squared, random forest regression is being deemed the most appropriate regression model.
> The random forest regression model is then applied onto the forecasted demographics data from Notebook #2 to predict ransportation traffic in 2025. The 20 subzones with the heaviest public transportation traffic in 2025 are subsequently being predicted.

--------------------------------------------------------------------------------------------------------------------------------------------

>>>> FSP5_Team07 Tableau_Dashboard - Full.twb					|| TABLEAU WORKBOOK FILE
> These Tableau visualisations were used to give us a better understanding of our datasets.
> Visualisations are being divided into 2 main categories, with one containg all subzones, and the other containing only the 20 subzones with the most public transportation traffic.
> Examples of visualisations included would be "Youngest Subzones", "Average Income" and "00 - 19"

--------------------------------------------------------------------------------------------------------------------------------------------

>>>> FSP5_Team07 Tableau_Dashboard - Scriptless (for publishing).twb		|| TABLEAU WORKBOOK FILE
> This is a duplicate of the above "FSP5_Team07 Tableau_Dashboard - Full.twb", with the following changes:
	1. The Python script for running ARIMA in Tableau has been removed.
	2. The workbook uses extracted .hyper files as data instead of a live connection to the .csv files on the computer.
> The above changes were made to prepare the Tableau workbook for publishing (viewable at bit.ly/FSP5-7).
	> Tableau does not allow external Python connections or live data connections for published dashboards.

--------------------------------------------------------------------------------------------------------------------------------------------

>>>> dT_data1.csv+ (Multiple Connections).hyper					|| TABLEAU DATA EXTRACT FILES
>>>> total_Singapore.hyper							|| TABLEAU DATA EXTRACT FILES
>>>> dT_data1_hierarchical_pivoted.hyper					|| TABLEAU DATA EXTRACT FILES
> There are lightweight data extraction files that are used as the data layer for "FSP5_Team07 Tableau_Dashboard - Scriptless (for publishing).twb".


--------------------------------------------------------------------------------------------------------------------------------------------

>>>> FSP5_Team07 Slides.pptx							|| POWERPOINT FILE
> There are lightweight data extraction files that are used as the data layer for "FSP5_Team07 Tableau_Dashboard - Scriptless (for publishing).twb".


=========================================================================================================
=========================================== END DOCUMENTATION ===========================================
=========================================================================================================




















