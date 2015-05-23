# cleanData

## Getting and Cleaning Data course project

### Read Me for R script "run_analysis.R"

#### Summary

The sript produces a tidy data set "averages.txt" from sensor measurements collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data source (including its own README):

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Specifically, the resulting "averages.txt" includes the averages of the mean and standard deviation variables of each of the sensor measurements per each of the activities (such as walking, standing, sitting) and for each of the subjects.

#### Specifics

The necessary source files (to be copied to the working directory from the above URL):
- "activity_labels.txt"        
- "features.txt"               
- "subject_test.txt"    
- "subject_train.txt"  
- "X_test.txt"          
- "X_train.txt"         
- "y_test.txt"          
- "y_train.txt"

The necessary libraries:
- dplyr
- the basic R packages

#### Script synopsis 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. See Note [1] below.
3. Uses descriptive activity names to name the activities in the data set. See Note [2] below.
4. Appropriately labels the data set with descriptive variable names. See Note [3] below.
5. From the data set in step 4, creates a second, independent tidy data set "averages.txt" with the average of each variable for each activity and each subject.

This section credit to Instructions at https://class.coursera.org/getdata-014/human_grading/view/courses/973501/assessments/3/submissions

#### Notes

[1] The present code forming the variables 'meanTable' and 'stdTable' seeks to select each column from the combined (train and test) table whose name has match with strings "mean" or "std". By reviewing the files features_info.txt and features.txt from the source data package, the user can modify the code in the lines of this R script to select the specific mean and standard deviation (or any other) variable variants of interest for a given purpose.

[2] For the activity names, see the first column "activity" in "averages.txt", read as read.table("averages.txt", header=TRUE), with naming matching with "activity_labels.txt" from the source data package.

[3] Besides the first two columns as explained in note [2] above, the remaining column names in "averages.txt" match corresponding the original variable names per the features_info.txt and features.txt from the source data package -- however, in the "averages.txt" output file, these column values are the averages of these variables for the activity and subject identified by the first two columns for a given row.


