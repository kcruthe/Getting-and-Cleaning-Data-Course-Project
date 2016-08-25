# Codebook for Getting and Cleaning Data Course Project

## Introduction

The data set represents experimental measurements of body movements taken from an accelerometer and gyroscope embedded in a smart phone worn by a group of 30 volunteers while performing six different activities - walking, walking upstairs, walking downstairs, sitting, standing, and laying. The triaxial linear acceleration and triaxial angular velocity of the sensors was recorded. For the purposes of statistical inference, the data were randomly partitioned into 70% for training data and 30% for test data. The analysis performed is on the aggregate data set.

## Identifiers

The key identifiers are
* Subject: An integer value ranging from 1 to 30 which identifies the participant
* Activity: An integer value ranging from 1 to 6 which idenfies the activity according to the activity labels described below. File:  train/subject_train.txt

## Features

The complete list of features is given in the source data 'features.txt'. In this analysis, only features representing the means and standard deviations were of interest. The partitioned list of features used in this analysis are as follows:

*	tBodyAcc-mean()-X
*	tBodyAcc-mean()-Y
*	tBodyAcc-mean()-Z
*	tBodyAcc-std()-X
*	tBodyAcc-std()-Y
*	tBodyAcc-std()-Z
*	tGravityAcc-mean()-X
*	tGravityAcc-mean()-Y
*	tGravityAcc-mean()-Z
*	tGravityAcc-std()-X
*	tGravityAcc-std()-Y
*	tGravityAcc-std()-Z
*	tBodyAccJerk-mean()-X
*	tBodyAccJerk-mean()-Y
*	tBodyAccJerk-mean()-Z
*	tBodyAccJerk-std()-X
*	tBodyAccJerk-std()-Y
*	tBodyAccJerk-std()-Z
*	tBodyGyro-mean()-X
*	tBodyGyro-mean()-Y
*	tBodyGyro-mean()-Z
*	tBodyGyro-std()-X
*	tBodyGyro-std()-Y
*	tBodyGyro-std()-Z
*	tBodyGyroJerk-mean()-X
*	tBodyGyroJerk-mean()-Y
*	tBodyGyroJerk-mean()-Z
*	tBodyGyroJerk-std()-X
*	tBodyGyroJerk-std()-Y
*	tBodyGyroJerk-std()-Z
*	tBodyAccMag-mean()
*	tBodyAccMag-std()
*	tGravityAccMag-mean()
*	tGravityAccMag-std()
*	tBodyAccJerkMag-mean()
*	tBodyAccJerkMag-std()
*	tBodyGyroMag-mean()
*	tBodyGyroMag-std()
*	tBodyGyroJerkMag-mean()
*	tBodyGyroJerkMag-std()
*	fBodyAcc-mean()-X
*	fBodyAcc-mean()-Y
*	fBodyAcc-mean()-Z
*	fBodyAcc-std()-X
*	fBodyAcc-std()-Y
*	fBodyAcc-std()-Z
*	fBodyAcc-meanFreq()-X
*	fBodyAcc-meanFreq()-Y
*	fBodyAcc-meanFreq()-Z
*	fBodyAccJerk-mean()-X
*	fBodyAccJerk-mean()-Y
*	fBodyAccJerk-mean()-Z
*	fBodyAccJerk-std()-X
*	fBodyAccJerk-std()-Y
*	fBodyAccJerk-std()-Z
*	fBodyAccJerk-meanFreq()-X
*	fBodyAccJerk-meanFreq()-Y
*	fBodyAccJerk-meanFreq()-Z
*	fBodyGyro-mean()-X
*	fBodyGyro-mean()-Y
*	fBodyGyro-mean()-Z
*	fBodyGyro-std()-X
*	fBodyGyro-std()-Y
*	fBodyGyro-std()-Z
*	fBodyGyro-meanFreq()-X
*	fBodyGyro-meanFreq()-Y
*	fBodyGyro-meanFreq()-Z
*	fBodyAccMag-mean()
*	fBodyAccMag-std()
*	fBodyAccMag-meanFreq()
*	fBodyBodyAccJerkMag-mean()
*	fBodyBodyAccJerkMag-std()
*	fBodyBodyAccJerkMag-meanFreq()
*	fBodyBodyGyroMag-mean()
*	fBodyBodyGyroMag-std()
*	fBodyBodyGyroMag-meanFreq()
*	fBodyBodyGyroJerkMag-mean()
*	fBodyBodyGyroJerkMag-std()
*	fBodyBodyGyroJerkMag-meanFreq()

Each feature is normalized in the range [-1,1] and dimensionless

## Activity Labels
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING