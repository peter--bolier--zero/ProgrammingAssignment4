### Introduction

As part of an assignment the data from the given set https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip is used.

### input data
The train and test set are first merged

Details can be found in the original descriptions.

Original data is retrieved from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

and merged into one datafile (as per assignemnt).
Note that for the assignment only the mean and standard deviation had to be extracted, all other data was dropped.

Merged structure

In the merged dataset only the processed data is used; all raw measurements (data in the inertial signals) was dropped.

I.e. merged: subject_train, X_train, y_train and the test equivalents.


Resulting in one table with subject, activity, and features (79)

The dataset includes the following files:
=========================================

- 'README.md'
- 'activities.txt' : The tidy dataset as a results of clean up of the merged train en test sets. 
- 'features_info.txt': Shows information about the variables used on the feature vector.

### Cleaning steps
Removed all columns except for the subject,  activity and all features with a mean or standard deviation.
The tidy set only contains the average of the data for each variable for each activity and each subject.


mean(): Mean value
std(): Standard deviation



Each variable forms a column.
Each observation forms a row.
Each type of observational unit forms a table.



Codebook: features_info.txt

