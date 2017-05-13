# Code Book run_analysis.R 
_Author - Arnab Khan_

## R script file 
#### run_analysis.R

## Input data Set file location
#### https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Output data Set files
#### mean_std_HAR_dataset.txt
* Merged sets for training and test with only the mean and standard deviation for each measurement along with descriptive activity and variable names

#### activity_subject_average.txt
* Second data set with the average of each variable for each activity and each subject

## Variable Column in data set
1. activity_group_label - numeric value indicating activity performed
2. activity_group_name  - text indicating activity performed
3. Subject_group - numeric value identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
4. Columns 4-69 - numeric value for average of each variable for each activity and each subject. 

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

Average of each variable for each activity and each subject is calculated for each column.

## Code variables used in R script run_analysis.R
* features - data table for file "UCI HAR Dataset/features.txt"
* y_test - data table for file "UCI HAR Dataset/test/y_test.txt"
* subject_test - data table for file "UCI HAR Dataset/test/subject_test.txt"
* X_test - data table for file "UCI HAR Dataset/test/X_test.txt" and also  column bind subject_test, y_test, X_test
* y_train - data table for file "UCI HAR Dataset/train/y_train.txt""
* subject_train - store data table for file "UCI HAR Dataset/train/subject_train.txt""
* X_train - data table for file "UCI HAR Dataset/train/X_train.txt" and also column bind subject_train, y_train, X_train
* X_merged - row bind merge the training and the test sets to create one data set.
* X_mean_std - derived from X_merged to extract only the measurements on the mean and standard deviation 
* activity_labels data table for file "UCI HAR Dataset/activity_labels.txt"
* X_aggregate - derived from X_mean_std for data set with average of each variable for each activity and each subject.

## R script does the following steps as per course project -
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
