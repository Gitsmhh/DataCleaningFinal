## Getting and cleaning data's course project

## The X-train, X_test, Y_train, Y_test, featrues, activity_labels, subjects_train, and subject_test files 
## are put in the working directory and the repo as well.

## 1) This section reads the above files from the raw data
Xtrain <- read.table("X_train.txt")
Xtest <- read.table("X_test.txt")
Ytrain <- read.table("Y_train.txt")
Ytest <- read.table("Y_test.txt")
features <-read.table("features.txt")
actlabel <- read.table("activity_labels.txt")
subjtrain <- read.table("subject_train.txt")
subjtest <- read.table("subject_test.txt")

## 2) This section creates two merged dataframes for train and test cases and merges them into a final mergedDF dataframe. 
mergedtrain <- cbind(Ytrain, Xtrain)
mergedtest <- cbind(Ytest, Xtest)
mergedDF <- rbind(mergedtrain, mergedtest)

## 3) Change the names of columns to the real features they indicate:
##This requires reading and transposing the values of the second column of features dataframe made above 
##and adding a name "activity" for the first column.
featuresT <- t(features)
var_names <- rbind(c("activity", featuresT[2,]))
names(mergedDF) <- var_names

## 4) Subsetting mergedDF with only std and mean measurements available:
sub_mergedDF <- subset(mergedDF, select = grep("activity|std|mean",var_names))

## 5) Changing the numbers in the activity column with their real name available in actlabel dataframe made above:
actlabel$V1 <- as.factor(actlabel$V1)
levels(actlabel$V1) <-actlabel$V2
levels(sub_mergedDF$activity) <- levels(actlabel$V1)

## 6) Making a new dataframe (DF) with integrating subject numbers into the previous dataframe (sub_mergedDF):
names(subjtrain) <- "subject"
names(subjtest) <- "subject"
subjects <- rbind(subjtrain, subjtest)
DF <- cbind(subjects, sub_mergedDF)

## 7)Finally making a new dataframe for the last part: average of measurements for each subject and activity:
newDF <- aggregate(DF[,3:length(DF)], FUN=mean, by=list(subject=DF$subject, activity=DF$activity))
write.table(newDF, file = "tidyData.txt", row.names = FALSE)
    