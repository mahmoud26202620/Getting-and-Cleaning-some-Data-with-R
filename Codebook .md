# Abstract

Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
## The original dataset
the original dataset available at

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

the description of the original dataset available at 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Feature Selection
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
## The variable in the final data

**features**   10299 rows, 1 columns
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

**activities_labels**   6 rows, 2 columns
List of activities performed when the corresponding measurements were taken and its codes.

**subject_test**    2947 rows, 1 column
contains test data of 9/30 volunteer test subjects being observed.

**x_test**    2947 rows, 561 columns
contains recorded features test data.

**y_test**   2947 rows, 1 columns
contains test data of activities’code labels.

**subject_train**   7352 rows, 1 column
contains train data of 21/30 volunteer subjects being observed.

**x_train**   7352 rows, 561 columns
contains recorded features train data.

**y_train**   7352 rows, 1 columns
contains train data of activities’code labels.

**X**   10299 rows, 561 columns
is created by merging x_train and x_test .

**Y**    10299 rows, 1 column
is created by merging y_train and y_test.

**Subject**   10299 rows, 1 column
This is the numeric ID that denotes the subject (person) whose activity was measured. Values are from 1 to 30.
is created by merging subject_train and subject_test.

**The_merged_Data**   10299 rows, 563 column
is created by merging Subject, Y and X .

**TidyData**   10299 rows, 88 columns
is created by subsetting Merged_Data, selecting only columns: subject, code and the measurements on the mean and standard deviation (std) for each measurement.

**The_final_data**   180 rows, 88 columns
is created by sumarizing TidyData taking the means of each variable for each activity and each subject, after groupped by subject and activity.


## The set of variables that were estimated from these signals are: 

**mean()**: Mean value

**std()**: Standard deviation

**mad()**: Median absolute deviation 

**max()**: Largest value in array

**min()**: Smallest value in array

**sma()**: Signal magnitude area

**energy()**: Energy measure. Sum of the squares divided by the number of values

**iqr():** Interquartile range 

**entropy()**: Signal entropy

**arCoeff()**: Autorregresion coefficients with Burg order equal to 4

**correlation()**: correlation coefficient between two signals

**maxInds()**: index of the frequency component with largest magnitude

**meanFreq()**: Weighted average of the frequency components to obtain a mean frequency

**skewness()**: skewness of the frequency domain signal 

**kurtosis()**: kurtosis of the frequency domain signal 

**bandsEnergy()**: Energy of a frequency interval within the 64 bins of the FFT of each window

**angle()**: Angle between to vectors.
