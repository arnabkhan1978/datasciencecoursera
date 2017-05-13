# Download HAR data set file and unzip it
if (!file.exists("./HAR.zip")) {
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                "./HAR.zip", method = "curl")
}
unzip("./HAR.zip")

# Read features file and rename columns
features <- read.table("./UCI HAR Dataset/features.txt")
names(features) <- c("num", "feature")

# Read Test activity labels file and rename column
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
names(y_test) <- c("activity_num")

# Read Test set file 
## 4. Appropriately labels the data set with descriptive variable names.

X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
names(X_test) <- features$feature

# Read Test subject data for test set and rename column
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
names(subject_test) <- c("subject")

# Create Test set data along with subject and activity data
X_test <- cbind(subject_test, y_test, X_test)

# Read Train activity labels file and rename column
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
names(y_train) <- c("activity_num")

# Read Train set file 
## 4. Appropriately labels the data set with descriptive variable names.

X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
names(X_train) <- features$feature

# Read Train subject data for test set and rename column
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
names(subject_train) <- c("subject")

# Create Train set data along with subject and activity data
X_train <- cbind(subject_train, y_train, X_train)

## 1. Merges the training and the test sets to create one data set.
X_merged <- rbind(X_train, X_test)

## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.
X_mean_std <- X_merged[,c("subject", "activity_num", colnames(X_merged)
                          [grep("[Mm]ean\\(|[Ss]td\\(",colnames(X_merged))])]

## 3. Uses descriptive activity names to name the activities in the data set
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("activity_label", "activity_name")
X_mean_std <- merge(activity_labels, X_mean_std, by.x = "activity_label", 
                by.y = "activity_num", all.x = TRUE)

## write data set to a file
write.table(X_mean_std, file="./mean_std_HAR_dataset.txt", row.names=F)

## 5. From the data set in step 4, creates a second, 
##    independent tidy data set with the average of each variable 
##    for each activity and each subject.
X_aggregate <- aggregate(X_mean_std[, 4:69], list(X_mean_std$activity_label, 
                                   X_mean_std$activity_name,
                                   X_mean_std$subject), mean)

# rename column names
names(X_aggregate)[1:3] <- c("activity_group_label", 
                             "activity_group_name", "subject_group")

# order by first 3 columns
X_aggregate <- X_aggregate[with(X_aggregate, order(activity_group_label, 
                                                   activity_group_name, 
                                                   subject_group)), ]

## write data set to a file
write.table(X_aggregate, file="./activity_subject_average.txt", row.names=F)
