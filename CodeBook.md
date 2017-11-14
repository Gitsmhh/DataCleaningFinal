Script File:

run_analysis.R

Data Location:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip


Input Files:

1) Y_test.txt (contains accelerometer activity code info):

	1 column, 2,947 rows
	V1 - Column contains the accelerometer activity code
	Activity codes:
	Walking
	Walking_upstairs
	Walking_downstairs
	Siting
	Standing
	Laying

2) Y_train.txt (contains accelerometer activity code info):

	1 column, 7,352 rows
	V1 - Column contains the accelerometer activity code
	Activity codes:
	Walking
	Walking_upstairs
	Walking_downstairs
	Siting
	Standing
	Laying

3) subject_test.txt  (contains accelerometer subject/user ID info):

	1 column, 2,947 rows
	V1 - Column contains the accelerometer subject ID code

4) subject_train.txt  (contains accelerometer subject/user ID info):

	1 column, 7,352 rows
	V1 - Column contains the accelerometer subject ID code

5) X_test.txt  (contains accelerometer measurements/ observations info):

	561 columns, 2,947 rows
	V1 to V561 - Columns contains the accelerometer measurements

6) subject_train.txt  (contains accelerometer measurements/observations info):

	561 columns, 7,352 rows
	V1 to V561 - Columns contains the accelerometer measurements

7) features.txt  (contains the accelerometer column names)

	2 columns, 561 rows
	V1 - Feature Code
	V2 - Feature Name
	
8) activity_labels.txt (contains the activity codes and descriptions)

	2 columns, 6 rows
	V1 - Activity Code
	V2 - Activity Name
	Processing Approach:

Download the data files using the above link

Load the required data files

Ytest will load the Y_test.txt data
Ytrain will load the Y_train.txt data
subjtest will load the subject_test.txt data
subjtrain will load the subject_train.txt data
Xtest will load the x_test.txt data
Xtrain will load the x_train.txt data

Bind the Activity, Subject and Features (measurements) data

Use the features.txt file to lable the column names for the Features data frame
Columns too numerous to list
Label the Subject data frame V1 column to subject
Label the Activity data frames V1 column to activity

Merge all data into the data frame

Extract only the columns with std() and mean() measurements/ observations

Here is the selected/extracted column list:

tBodyAcc-mean()-X: Number - measurement
tBodyAcc-mean()-Y: Number - measurement
tBodyAcc-mean()-Z: Number - measurement
tBodyAcc-std()-X: Number - measurement
tBodyAcc-std()-Y: Number - measurement
tBodyAcc-std()-Z: Number - measurement
tGravityAcc-mean()-X: Number - measurement
tGravityAcc-mean()-Y: Number - measurement
tGravityAcc-mean()-Z: Number - measurement
tGravityAcc-std()-X: Number - measurement
tGravityAcc-std()-Y: Number - measurement
tGravityAcc-std()-Z: Number - measurement
tBodyAccJerk-mean()-X: Number - measurement
tBodyAccJerk-mean()-Y: Number - measurement
tBodyAccJerk-mean()-Z: Number - measurement
tBodyAccJerk-std()-X: Number - measurement
tBodyAccJerk-std()-Y: Number - measurement
tBodyAccJerk-std()-Z: Number - measurement
tBodyGyro-mean()-X: Number - measurement
tBodyGyro-mean()-Y: Number - measurement
tBodyGyro-mean()-Z: Number - measurement
tBodyGyro-std()-X: Number - measurement
tBodyGyro-std()-Y: Number - measurement
tBodyGyro-std()-Z: Number - measurement
tBodyGyroJerk-mean()-X: Number - measurement
tBodyGyroJerk-mean()-Y: Number - measurement
tBodyGyroJerk-mean()-Z: Number - measurement
tBodyGyroJerk-std()-X: Number - measurement
tBodyGyroJerk-std()-Y: Number - measurement
tBodyGyroJerk-std()-Z: Number - measurement
tBodyAccMag-mean(): Number - measurement
tBodyAccMag-std(): Number - measurement
tGravityAccMag-mean(): Number - measurement
tGravityAccMag-std(): Number - measurement
tBodyAccJerkMag-mean(): Number - measurement
tBodyAccJerkMag-std(): Number - measurement
tBodyGyroMag-mean(): Number - measurement
tBodyGyroMag-std(): Number - measurement
tBodyGyroJerkMag-mean(): Number - measurement
tBodyGyroJerkMag-std(): Number - measurement
fBodyAcc-mean()-X: Number - measurement
fBodyAcc-mean()-Y: Number - measurement
fBodyAcc-mean()-Z: Number - measurement
fBodyAcc-std()-X: Number - measurement
fBodyAcc-std()-Y: Number - measurement
fBodyAcc-std()-Z: Number - measurement
fBodyAccJerk-mean()-X: Number - measurement
fBodyAccJerk-mean()-Y: Number - measurement
fBodyAccJerk-mean()-Z: Number - measurement
fBodyAccJerk-std()-X: Number - measurement
fBodyAccJerk-std()-Y: Number - measurement
fBodyAccJerk-std()-Z: Number - measurement
fBodyGyro-mean()-X: Number - measurement
fBodyGyro-mean()-Y: Number - measurement
fBodyGyro-mean()-Z: Number - measurement
fBodyGyro-std()-X: Number - measurement
fBodyGyro-std()-Y: Number - measurement
fBodyGyro-std()-Z: Number - measurement
fBodyAccMag-mean(): Number - measurement
fBodyAccMag-std(): Number - measurement
fBodyBodyAccJerkMag-mean(): Number - measurement
fBodyBodyAccJerkMag-std(): Number - measurement
fBodyBodyGyroMag-mean(): Number - measurement
fBodyBodyGyroMag-std(): Number - measurement
fBodyBodyGyroJerkMag-mean(): Number - measurement
fBodyBodyGyroJerkMag-std(): Number - measurement
subject: Number - subject ID
activity: Number - activity code

Convert activity codes to decriptive activities in the data frame

Activity description and codes:
Walking = 1
Walking_upstairs = 2
Walking_downstairs = 3
Siting = 4
Standing = 5
Laying = 6

Relable column names in the data frame with better descriptions

Aggregate data from from data frame with the average of all variables 
into a new tidy data frame.

Write the new dataframe to a text file called tidyData.txt

Output File:

	tidyData.txt -- contains tidy accelerometer information