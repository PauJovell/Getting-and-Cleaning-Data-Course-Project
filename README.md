# Getting-and-Cleaning-Data-Course-Project
This is the course project for the Getting and Cleaning Data Course of Coursera that has to be done in its fourth and final week. This file has the instructions on how to conduct this study:
* [Dataset](#general-info)
* [Files](#Files)

##Dataset

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#


##Files
1. The file `run_analysis.R` does the following:

1. Download the dataset if it does not already exist in the working directory and unzip it.
2. Loads both the training and test datasets, merge them and keeps only those columns with the mean and standard deviation for each mesurement.







Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
Loads the activity and subject data for each dataset, and merges those columns with the dataset
Merges the two datasets
Converts the activity and subject columns into factors
Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.
The end result is shown in the file tidy.txt.****

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)

## General info
This project is simple Lorem ipsum dolor generator.
	
## Technologies
Project is created with:
* Lorem version: 12.3
* Ipsum version: 2.33
* Ament library version: 999
	
## Setup
To run this project, install it locally using npm:

```
$ cd ../lorem
$ npm install
$ npm start
