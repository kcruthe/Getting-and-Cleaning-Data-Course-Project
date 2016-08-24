---
title: "Codebook"
output: html_document
---

This code book describes the data and analysis performed on the source data which is available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A discription of the relavent data files is separately provided in the Readme.md file of this same repo.

The R script named run_analysis.R, also found in this same repo, performs the following operations on the data. These instructions are taken directly from the Coursera Getting and Cleaning Data course project web page
1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The R script run_analysis.R is well commented at each step of the analysis, which can be summarized at a high level as follows:
1. Prepare the R environment by clearing the global environment and setting the working directory*
2. Get the data and decompress it for analysis
3. Load the required R libraries for the analysis
4. Load the files that describe the features and observations
5. Load the training and test "x" data and merge them
6. Label the data set with descriptive variable names
7. Extract the mean and standard deviation for each measurement**
8. Load the training and test "y" data and merge them
9. Make the activity names descriptive
10. Merge the data tables
11. Create an independent, tidy data set with the average of each variable for each activity and each subject

* Note. Working directory may vary by user and system architecture and careful note should be made whether or not this line of code needs to be updated for the scipt to execute properly on the user's system.
The relavent line of code is line 5 in run_analysis.R:
setwd("~/Work/R/data")

** The data are pre-nomrmalized in the range [-1,1] and are dimensionless and unitless.


