

####################Getting and Cleaning Data Course Project####################

library(dplyr) #We need it for Step 2

##STEP 1: Merges the training and the test sets to create one data set.

#Checking if the archive exists and download the zip
if(!file.exists("./R_data")){dir.create("./R_data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./R_data/UCI HAR Dataset.zip")

#set Working Dirtectory
setwd("./R_data")

#Setting the Working Directory

# Checking if folder exists and unzip
if (!file.exists("UCI HAR Dataset")) {unzip("UCI HAR Dataset.zip") }

#set Working Dirtectory
setwd("./UCI HAR Dataset")

#First, we read all the files from WD:
subject_test <- read.table("./test/subject_test.txt", col.names = "subject")
x_test <- read.table("./test/X_test.txt", col.names = features$functions)
y_test <- read.table("./test/y_test.txt", col.names = "num_activity")
subject_train <- read.table("./train/subject_train.txt", col.names = "subject")
x_train <- read.table("./train/X_train.txt", col.names = features$functions)
y_train <- read.table("./train/y_train.txt", col.names = "num_activity")
activities <- read.table("./activity_labels.txt", col.names = c("num_activity", "activity"))
features <- read.table("./features.txt", col.names = c("n","functions"))

#Second, we merge the training and the test sets:
X <- rbind(x_train, x_test)
Y <- rbind(y_train, y_test)
Subject <- rbind(subject_train, subject_test)
Merged_training_test <- cbind(Subject, Y, X)

##STEP 2: Extracts only the measurements on the mean and standard deviation for each measurement. 

library(dplyr)
Tidy_data <- Merged_training_test %>% select(subject, num_activity, contains("mean"), contains("std"))

##STEP 3: Uses descriptive activity names to name the activities in the data set

Tidy_data$activity <- activities[Tidy_data$num_activity, 2]

##Step 4: Appropriately labels the data set with descriptive variable names. 
#We use the info. in features_info.
names(Tidy_data)<-gsub("tBody", "TimeBody", names(Tidy_data))
names(Tidy_data)<-gsub("Acc", "Accelerometer", names(Tidy_data))
names(Tidy_data)<-gsub("-mean()", "Mean", names(Tidy_data), ignore.case = TRUE)
names(Tidy_data)<-gsub("gravity", "Gravity", names(Tidy_data))
names(Tidy_data)<-gsub("Gyro", "Gyroscope", names(Tidy_data))
names(Tidy_data)<-gsub("Mag", "Magnitude", names(Tidy_data))
names(Tidy_data)<-gsub("BodyBody", "Body", names(Tidy_data))
names(Tidy_data)<-gsub("^t", "Time", names(Tidy_data))
names(Tidy_data)<-gsub("^f", "Frequency", names(Tidy_data))
names(Tidy_data)<-gsub("-freq()", "Frequency", names(Tidy_data), ignore.case = TRUE)
names(Tidy_data)<-gsub("angle", "Angle", names(Tidy_data))
names(Tidy_data)<-gsub("-std()", "STD", names(Tidy_data), ignore.case = TRUE)

## Step 5: From the data set in step 4, creates a second, independent tidy data 
#  set with the average of each variable for each activity and each subject.

tidy <- Tidy_data %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(tidy, "Tidy.txt", row.name=FALSE)
