# Getting-and-Cleaning-Data-Course-Project
This is the course project for the Getting and Cleaning Data Course of Coursera that has to be done in its fourth and final week. This file has the instructions on how to conduct this study:
## Dataset

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#


## Files
  `run_analysis.R` does the following:
	1. Download the dataset if it does not already exist in the working directory and unzip it.
	2. Loads both the training and test datasets, merge them and keeps only those columns with the mean and standard deviation for each mesurement.
	3. Uses descriptive activity names to name the activities in the data set.
	4. Appropriately labels the data set with descriptive variable names. 
	5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject, that is:             `tidy.text`.
`CodeBook.md`: describes the variables, the data, and any transformations or work that was performed to clean up the data.
`tidy.text`: The end result as explained in point 5.






