## Project for the course "Getting and Cleaning Data"

Running the run_analysis.R script reads the raw data of the course 
and makes a txt file called tidyData.txt which is the dataframe requested 
in the step 5.

Please note that the X-train, X_test, y_train, y_test, featrues, activity_labels, 
subjects_train, and subject_test files should be put in the working directory 
for the script to run correctly. 


### Structure of the code:

The code is structured into seven sections which are indicated by comments 
in the code file:

1. This section reads the X-train, X_test, y_train, y_test, featrues, activity_labels, 
subjects_train, and subject_test files from the raw data
 
2. This section creates two merged dataframes for train and test cases 
and merges them into a final dataframe called "mergedDF". 

3. Changes the names of columns to the real features they represent. 
This requires reading and transposing the values of the second column of 
features dataframe made in the section 1 and adding a name "activity" for the 
first column.

4. Subsetting "mergedDF" with only std and mean measurements available.

5. Changing the numbers in the activity column with their real name 
available in actlabel dataframe made in the section 1.

6. Making a new dataframe (DF) with integrating subject numbers into the 
previous dataframe (sub_mergedDF).

7. Finally making a new dataframe for the last part: average of measurements 
for each subject and activity:


