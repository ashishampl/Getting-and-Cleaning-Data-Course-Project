
## Read all the data text files
X.Train <- read.table("train/X_train.txt")
Y.Train <- read.table("train/y_train.txt")
X.Test <- read.table("test/X_test.txt")
Y.Test <- read.table("test/y_test.txt")
Subject.Test <- read.table("test/subject_test.txt")
Subject.Train <- read.table("train/subject_train.txt")

## 1. Merges the training and the test sets to create one data set.
X.All <- rbind(X.Train, X.Test)
Y.All <- rbind(Y.Train, Y.Test)
Subject.All <- rbind(Subject.Train, Subject.Test)


## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
X.ColNames <- read.table("features.txt")
names(X.All) <- X.ColNames$V2
X.ColNames.Filtered <- grep("std|mean\\(\\)", X.ColNames$V2)
X.All.Filtered <- X.All[,X.ColNames.Filtered]


## 3. Uses descriptive activity names to name the activities in the data set
names(Y.All) <- "Activity"
Activity.Labels <- read.table("activity_labels.txt")
Y.All[,1] <- Activity.Labels[Y.All[,1], 2]

## 4.Appropriately labels the data set with descriptive variable names.
names(Subject.All) <- "Subject"

Merged.All <- cbind(Subject.All, Y.All, X.All.Filtered)


## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
library(plyr)
Tidy.Average <- ddply(.data = Merged.All, .variables = c("Subject", "Activity"), .fun = numcolwise(mean))
write.table(Tidy.Average, "Tidy_Average_Data.txt", row.name=FALSE)
