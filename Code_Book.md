#Code Book for TidyDataSet.txt

## Data source for TidyDataSet
The file TidyDataSet.txt was produced based on data obtained from research on "Human Activity Recognition Using Smartphones Data Set".
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source data itself is available at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
It contains a number of measurements performed on 30 individuals who performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).
The measurements were taken from accelerometer and gyroscope sensors of smartphone (Samsung Galaxy S II) mounted on the waist of individuals. 
The detailed explanation of each feature derived from measurements is available in file "features_info.txt" in the archive referenced above.

## TidyDataSet description
The current data set represents the summarized data of features available in the source data set.
The train and test data sets from the source are combined into one and aggregated by person and activity.
The means of 66 features (out of 561 feautres in the source) are provided in the current data set.
Those means are taken from features representing mean and standard derivation of the following features:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

### Columns mapping
Column subject in the TidyDataSet.txt represents the id of individual (ranging from 1 to 30).
Column activity represents one of 6 activities: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Below you can find the mapping of the features mentioned in the original research to the names of columns containing their means aggregated by subject and activity.  
tBodyAcc-std()-X	->	tBodyAcc-std-X  
tBodyAcc-std()-Y	->	tBodyAcc-std-Y  
tBodyAcc-std()-Z	->	tBodyAcc-std-Z  
tGravityAcc-std()-X	->	tGravityAcc-std-X  
tGravityAcc-std()-Y	->	tGravityAcc-std-Y  
tGravityAcc-std()-Z	->	tGravityAcc-std-Z  
tBodyAccJerk-std()-X	->	tBodyAccJerk-std-X  
tBodyAccJerk-std()-Y	->	tBodyAccJerk-std-Y  
tBodyAccJerk-std()-Z	->	tBodyAccJerk-std-Z  
tBodyGyro-std()-X	->	tBodyGyro-std-X  
tBodyGyro-std()-Y	->	tBodyGyro-std-Y  
tBodyGyro-std()-Z	->	tBodyGyro-std-Z  
tBodyGyroJerk-std()-X	->	tBodyGyroJerk-std-X  
tBodyGyroJerk-std()-Y	->	tBodyGyroJerk-std-Y  
tBodyGyroJerk-std()-Z	->	tBodyGyroJerk-std-Z  
tBodyAccMag-std()	->	tBodyAccMag-std  
tGravityAccMag-std()	->	tGravityAccMag-std  
tBodyAccJerkMag-std()	->	tBodyAccJerkMag-std  
tBodyGyroMag-std()	->	tBodyGyroMag-std  
tBodyGyroJerkMag-std()	->	tBodyGyroJerkMag-std  
fBodyAcc-std()-X	->	fBodyAcc-std-X  
fBodyAcc-std()-Y	->	fBodyAcc-std-Y  
fBodyAcc-std()-Z	->	fBodyAcc-std-Z  
fBodyAccJerk-std()-X	->	fBodyAccJerk-std-X  
fBodyAccJerk-std()-Y	->	fBodyAccJerk-std-Y  
fBodyAccJerk-std()-Z	->	fBodyAccJerk-std-Z  
fBodyGyro-std()-X	->	fBodyGyro-std-X  
fBodyGyro-std()-Y	->	fBodyGyro-std-Y  
fBodyGyro-std()-Z	->	fBodyGyro-std-Z  
fBodyAccMag-std()	->	fBodyAccMag-std  
fBodyBodyAccJerkMag-std()	->	fBodyBodyAccJerkMag-std  
fBodyBodyGyroMag-std()	->	fBodyBodyGyroMag-std  
fBodyBodyGyroJerkMag-std()	->	fBodyBodyGyroJerkMag-std  
