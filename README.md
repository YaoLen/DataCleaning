#run_analysis.R Description

run_analysis.R script checks if file with name "getdata-projectfiles-UCI HAR Dataset.zip" exists in the local directory.
If not it attempts to download it from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Script executes the following steps:
* unzip file "getdata-projectfiles-UCI HAR Dataset.zip" to the local directory
* read activities labels from activity_label.txt
* read feature labels from features.txt
* read test data and train data from appropriate subfolders, selecting only features contatining  mean and std in their names
* combine the test and train data
* group combined data by subject and activity
* calculate means of all features
* print the resulting dataset to the file tidyDataSet.txt