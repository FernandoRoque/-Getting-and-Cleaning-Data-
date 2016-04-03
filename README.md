# Getting and Cleaning Data (Tidy Data)

The Case:Human Activity Recognition Using Smartphones Dataset
==================================================================
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The Proyect uses the following files:

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt' and 'train/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


Objetive:
========
Clean the Dara Set for further analiysis. The analysis results in a clean data set according to the next points:

1. Geat a data set containing train and test data.
2. Keep only variables that represents mean a standar deviation.
3. Get a new data set that contains the mean of echa o variables defined in pont 2 grouped by subjet and activities.

Results:
========
The run_analysis.R code accomplish all this task. This code contains a brief descriptions of each steps.

Above code results in a data set of 68 variables and 10299 observations. Variables names are the following:

"Subject"
"Activities"
"tBodyAccmeanX"
"tBodyAccmeanY"
"tBodyAccmeanZ"
"tGravityAccmeanX"
"tGravityAccmeanY"
"tGravityAccmeanZ"
"tBodyAccJerkmeanX"
"tBodyAccJerkmeanY"
"tBodyAccJerkmeanZ"
"tBodyGyromeanX", "tBodyGyromeanY", "tBodyGyromeanZ", "tBodyGyroJerkmeanX", 
"tBodyGyroJerkmeanY", "tBodyGyroJerkmeanZ", "tBodyAccMagmean", 
"tGravityAccMagmean", "tBodyAccJerkMagmean", "tBodyGyroMagmean", 
"tBodyGyroJerkMagmean", "fBodyAccmeanX", "fBodyAccmeanY", "fBodyAccmeanZ", 
"fBodyAccJerkmeanX", "fBodyAccJerkmeanY", "fBodyAccJerkmeanZ", 
"fBodyGyromeanX", "fBodyGyromeanY", "fBodyGyromeanZ", "fBodyAccMagmean", 
"fBodyBodyAccJerkMagmean", "fBodyBodyGyroMagmean", "fBodyBodyGyroJerkMagmean", 
"tBodyAccstdX", "tBodyAccstdY", "tBodyAccstdZ", "tGravityAccstdX", 
"tGravityAccstdY", "tGravityAccstdZ", "tBodyAccJerkstdX", "tBodyAccJerkstdY", 
"tBodyAccJerkstdZ", "tBodyGyrostdX", "tBodyGyrostdY", "tBodyGyrostdZ", 
"tBodyGyroJerkstdX", "tBodyGyroJerkstdY", "tBodyGyroJerkstdZ", 
"tBodyAccMagstd", "tGravityAccMagstd", "tBodyAccJerkMagstd", 
"tBodyGyroMagstd", "tBodyGyroJerkMagstd", "fBodyAccstdX", "fBodyAccstdY", 
"fBodyAccstdZ", "fBodyAccJerkstdX", "fBodyAccJerkstdY", "fBodyAccJerkstdZ", 
"fBodyGyrostdX", "fBodyGyrostdY", "fBodyGyrostdZ", "fBodyAccMagstd", 
"fBodyBodyAccJerkMagstd", "fBodyBodyGyroMagstd", "fBodyBodyGyroJerkMagstd"
)



License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
