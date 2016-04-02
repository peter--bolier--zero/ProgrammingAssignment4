####
#
# Assignment: Getting and Cleaning Data Course Project
#
# Assume the assigned dataset is downloaded and extracted in the cuurent working directory"
#
# Note: codebook is : ....txt
#

# part one of the assigment: Merges the training and the test sets to create one data set.
require(plyr)

# Load the training set
train.subject <- read.table("./train/subject_train.txt")
train.labels  <- read.table("./train/y_train.txt")
train.dataset <- read.table("./train/X_train.txt")

# load the test set
test.subject <- read.table("./test/subject_test.txt")
test.labels  <- read.table("./test/y_test.txt")
test.dataset <- read.table("./test/X_test.txt")

# merge the sets
# Lets put the subject in the first column, followed by the activity, then the data
train.merged <- cbind(train.subject, train.labels, train.dataset)
test.merged  <- cbind(test.subject, test.labels, test.dataset)
activities   <- rbind(train.merged, test.merged)

# read the list of features so we can add a descriptive header to our table
features <- read.table("./features.txt", stringsAsFactors = FALSE)

# Label the columns / Appropriately labels the data set with descriptive variable names.
colnames(activities) <- c("subject", "activity", features[,2])

# part 2 Extracts only the measurements on the mean and standard deviation for each measurement.
activities <- activities[, grep("subject|activity|mean|std", colnames(activities))]

# rename activity
activity.map <- read.table("./activity_labels.txt")
activities[,"activity"] <- mapvalues(activities[,"activity"], from=activity.map[,1], to=as.character(activity.map[,2]))

# Tidy up
# From the data set in step 4, 
# creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# So we need to determine the average for all clumns grouped by subject, activity.
tidyset<-aggregate(a, by=list(activities$subject, activities$activity), FUN=mean)

# drop grouping columns (wich are (eaxtly the same as the subject/activity columns))
tidyset<-tidyset[,3:83]

# Append mean to the names so we know what kind of data e have, except for the firts two columns
colnames(tidyset) <- c(colnames(tidyset)[1:2], paste((colnames(tidyset)[3:81]), "mean", sep="-"))

# and save the data
write.table(tidyset,"activities.txt", row.name=FALSE)
