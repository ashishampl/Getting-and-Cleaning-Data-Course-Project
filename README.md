This analysis is done to understand the science of wearable computing by studying the data collected from the accelerometers from the Samsung Galaxy S smartphone. Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

Contents

CodeBook.md - describes the variables, the data, and any transformations or work that was performed to clean up the data.
 
run_analysis.R - R script which reads the data from text files, merges the datasets, cleans the datasets by selecting relevant features, names the columns with descriptive text, and then calculates the average grouped by subject and activity. The result dataset is then saved as a text file.
 
Tidy_Average_Data.txt � This is the output file generated by executing the run_analysis.R file. This file contains 180 rows of data for 66 columns.

