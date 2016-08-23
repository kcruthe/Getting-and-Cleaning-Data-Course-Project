# Clear the Global Environment
rm(list=ls())

# Set the working directory for data
setwd("~/Work/R/data")

# Download the data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "UCI HAR Dataset.zip")

# Unzip the .zip archive
unzip("UCI HAR Dataset.zip")

# Load libraries for manipulating and tidying data
library(dplyr)
library(plyr)
library(tidyr)

# Load the files that describe the features and observations
x_label <- read.table("~/Work/R/data/UCI HAR Dataset/features.txt")
activity_label <- read.table("~/Work/R/data/UCI HAR Dataset/activity_labels.txt")
subject_train <- read.table("~/Work/R/data/UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("~/Work/R/data/UCI HAR Dataset/test/subject_test.txt")
subject <- rbind(subject_train,subject_test)
colnames(subject) <- "Subject"

# Load the training and test "x" data and merge them
x_train <- read.table("~/Work/R/data/UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("~/Work/R/data/UCI HAR Dataset/test/X_test.txt")
x_data <- rbind(x_train, x_test)

# Label the data set with descriptive variable names
colnames(x_data) <- x_label[,2]              

# Extract the mean and standard deviation for each measurement
mean_Freq <- c(grep("meanFreq", x_label[,2]))           # Indices of x_label which contain meanFreq
x_data <- x_data[,-mean_Freq]                           # Remove meanFreq from x_data
x_label <- x_label[-mean_Freq,]                         # Remove meanFreq from x_label
colnames(x_data) <- x_label[,2]                         # Update x_data column names
mean_std <- c(grep(("-mean|-std"), x_label[,2]))        # Indices of x_label which contain remaining mean & standard deviation
x_data <- x_data[,mean_std]                             # Subset x_label by mean_std
x_data <- cbind(x_data,subject)                         # Attach "Subject" data

# Load the training and test "y" data and merge them
y_train <- read.table("~/Work/R/data/UCI HAR Dataset/train/Y_train.txt")
y_test <- read.table("~/Work/R/data/UCI HAR Dataset/test/Y_test.txt")
y_data <- rbind(y_train, y_test)

# Make the activity names descriptive
y_data <- arrange(join(y_data,activity_label),V1)
colnames(y_data) <- c("Activity_ID", "Activity")

# Merge the data tables
data <- cbind(x_data, y_data)

# Create an independent, tidy data set with the average of each variable for each activity and each subject
tidy_data <- data %>% group_by(Activity_ID, Activity, Subject) %>% summarise_each(funs(mean))

