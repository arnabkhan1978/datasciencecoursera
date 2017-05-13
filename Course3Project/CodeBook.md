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

## Variables used
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
