# README file for run_analysis.R 
_Author - Arnab Khan_

## R script file 
#### run_analysis.R

## Code Book 
#### CodeBook.md
* Describes the variables, the data, and work performed to clean up the data

## Input data Set file location
#### https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Output data Set files
#### mean_std_HAR_dataset.txt
* Merged sets for training and test with only the mean and standard deviation for each measurement along with descriptive activity and variable names

#### activity_subject_average.txt
* Second data set with the average of each variable for each activity and each subject

#### A full description of data is available at the site where the data was obtained:
* http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Details of work done in code R script file run_analysis.R
* Download HAR data set file and Save it as "HAR.zip"
* Unzip it 
* Read features file and rename columns
* Read Test set file and 
* **Project Step-4. Appropriately labels the data set with descriptive variable names** (Test set)
* Read Test subject data for test set and rename column
* Create Test set data along with subject and activity data
* Read Train activity labels file and rename column
* Read Train set file 
* **Project Step-4. Appropriately labels the data set with descriptive variable names.** (Train set)
* Read Train subject data for test set and rename column
* Create Train set data along with subject and activity data
* **Project Step-1. Merges the training and the test sets to create one data set.**
* **Project Step-2. Extracts only the measurements on the mean and standard deviation for each measurement**
* **Project Step-3. Uses descriptive activity names to name the activities in the data set**
* Write data set to a file **mean_std_HAR_dataset.txt**
* **Project Step-5 From the data set in step 4, creates a second independent tidy data set with the average of each variable for each activity and each subject.**
* rename column names
* order by first 3 columns
* write data set to a file **activity_subject_average.txt**
