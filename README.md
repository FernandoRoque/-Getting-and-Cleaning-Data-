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

Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

Notes: 
======
- Features are normalized and bounded within [-1,1].

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

The first table results is x_y_meas_n data set object that consistcontains 68 variables and 10299 observations. Variables names are the following:

"Subject", "Activities", "tBodyAccmeanX", "tBodyAccmeanY", 
"tBodyAccmeanZ", "tGravityAccmeanX", "tGravityAccmeanY", "tGravityAccmeanZ", 
"tBodyAccJerkmeanX", "tBodyAccJerkmeanY", "tBodyAccJerkmeanZ", 
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

The second resulty is mean_meas data set object that consistcontains the mean of the 66 numeric variables grouped by subject an activitie.


License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
