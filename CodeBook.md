INTRODUCTION

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

DATA FILES

The data for analysis was available in 8 different text files

activity_labels: Links the class labels with their activity name.
features : List of all features.

subject_test: Test Data - Each row identifies the subject who performed the activity for each window sample. It’s range is from 1 to 30.

X_test: Test set.

y_test: Test labels.

subject_train: Training Data - Each row identifies the subject who performed the activity for each window sample. It’s range is from 1 to 30.

X_train: Training set.

y_train: Training labels.


ANALYSIS STEPS

1. Read data from input files into datasets.
2. Training and Test data for X, Y, and subject datasets were merged using rbind function. 
a. Three datasets were created X.All, Y.All, Subject.All.  
b. Each of these datasets contained 10299 observations. X.All contains 561 variables whereas both Y.All and Subject.All contained 1 variable each.
3. Descriptive names were assigned to variables in X.All dataset. This is done by reading the features.txt file and calling names function.
4. Using grep command, only the variables whose name contained std and mean were retained in the dataset and the rest of columns were eliminated. After this filtering, 66 variables remained in the X.All dataset.
5. Using the activity_labels.txt file, descriptive names were given to data in Y.All dataset. The integer values were converted to descriptive names like WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
6. After all the cleaning these three datasets were merged into a single dataset – Merged.All. This dataset contained 10299 observations of 68 variables.
7. Installed and loaded plyr library to calculate the average of columns grouped by Subject and Activity variables. Ddply method was used to calculate this average. The output dataset – Tidy.Average contained 180 observations of 68 variables.
8. The output data was written to a text file – Tidy_Average_Data.txt – file using write.table function.

VARIABLES IN OUTPUT FILE

The columns included in the output file are listed below:
* Subject - The id of the experiment participant.
* Activity - The name of the activity that the measurements correspond to, like WALKING, SITTING, STANDING, etc.
All of the following fields represent the mean of recorded data points for the given subject and activity. 

* tBodyAcc_mean_X
* tBodyAcc_mean_Y
* tBodyAcc_mean_Z
* tGravityAcc_mean_X
* tGravityAcc_mean_Y
* tGravityAcc_mean_Z
* tBodyAccJerk_mean_X
* tBodyAccJerk_mean_Y
* tBodyAccJerk_mean_Z
* tBodyGyro_mean_X
* tBodyGyro_mean_Y
* tBodyGyro_mean_Z
* tBodyGyroJerk_mean_X
* tBodyGyroJerk_mean_Y
* tBodyGyroJerk_mean_Z
* tBodyAccMag_mean
* tGravityAccMag_mean
* tBodyAccJerkMag_mean
* tBodyGyroMag_mean
* tBodyGyroJerkMag_mean
* fBodyAcc_mean_X
* fBodyAcc_mean_Y
* fBodyAcc_mean_Z
* fBodyAccJerk_mean_X
* fBodyAccJerk_mean_Y
* fBodyAccJerk_mean_Z
* fBodyGyro_mean_X
* fBodyGyro_mean_Y
* fBodyGyro_mean_Z
* fBodyAccMag_mean
* fBodyAccJerkMag_mean
* fBodyGyroMag_mean
* fBodyGyroJerkMag_mean
* tBodyAcc_std_X
* tBodyAcc_std_Y
* tBodyAcc_std_Z
* tGravityAcc_std_X
* tGravityAcc_std_Y
* tGravityAcc_std_Z
* tBodyAccJerk_std_X
* tBodyAccJerk_std_Y
* tBodyAccJerk_std_Z
* tBodyGyro_std_X
* tBodyGyro_std_Y
* tBodyGyro_std_Z
* tBodyGyroJerk_std_X
* tBodyGyroJerk_std_Y
* tBodyGyroJerk_std_Z
* tBodyAccMag_std
* tGravityAccMag_std
* tBodyAccJerkMag_std
* tBodyGyroMag_std
* tBodyGyroJerkMag_std
* fBodyAcc_std_X
* fBodyAcc_std_Y
* fBodyAcc_std_Z
* fBodyAccJerk_std_X
* fBodyAccJerk_std_Y
* fBodyAccJerk_std_Z
* fBodyGyro_std_X
* fBodyGyro_std_Y
* fBodyGyro_std_Z
* fBodyAccMag_std
* fBodyAccJerkMag_std
* fBodyGyroMag_std
* fBodyGyroJerkMag_std

