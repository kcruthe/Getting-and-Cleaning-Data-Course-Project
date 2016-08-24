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
mean_std <- grep(("-mean|-std"), x_label[,2])                        # Indices of x_label which contain mean & standard deviation
x_label <- as.character(x_label[mean_std,2])
activity_label <- read.table("~/Work/R/data/UCI HAR Dataset/activity_labels.txt")

# Assemble the training data
x_train <- read.table("~/Work/R/data/UCI HAR Dataset/train/X_train.txt")
x_train <- x_train[,mean_std]                                           # Extract the mean and standard deviation for each measurement
y_train <- read.table("~/Work/R/data/UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("~/Work/R/data/UCI HAR Dataset/train/subject_train.txt")
train <- cbind(x_train, y_train, subject_train)

# Assemble the test data
x_test <- read.table("~/Work/R/data/UCI HAR Dataset/test/X_test.txt")
x_test <- x_test[,mean_std]                                             # Extract the mean and standard deviation for each measurement
y_test <- read.table("~/Work/R/data/UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("~/Work/R/data/UCI HAR Dataset/test/subject_test.txt")
test <- cbind(x_test, y_test, subject_test)

# Merge the data tables
data <- rbind(train, test)

# Label the data set with descriptive variable names
colnames(data) <- c(x_label, "Activity", "Subject")              

# Create an independent, tidy data set with the average of each variable for each activity and each subject

# Make Subject and Activity into factors for summarization
data$Subject <- as.factor(data$Subject)
data$Activity <- factor(data$Activity, levels = activity_label[,1], labels = activity_label[,2])

# Summarize the data set
tidy_data <- data %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))
