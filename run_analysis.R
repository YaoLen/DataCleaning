if(!file.exists("getdata-projectfiles-UCI HAR Dataset.zip"))
{
        download.file(
                "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
                "getdata-projectfiles-UCI HAR Dataset.zip", 
                mode="wb")
}
unzip("getdata-projectfiles-UCI HAR Dataset.zip")
setwd("UCI HAR Dataset")
library(dplyr)
features<-read.table("features.txt", col.name=c("id","name"))
        features<-features %>% 
        select(name) %>% 
        mutate(name=as.character(name)) %>% 
        mutate( colName=gsub("[()]","",name))
activities<-read.table("activity_labels.txt", col.name=c("id","name"))
activities<-select(activities,name)

loadData<-function(type, activities,features)
{
        #go to subfolder type (test or train)
        setwd(paste0(".\\",type))
        #load features matrix with appropriate names
        featureValues<-read.table(paste0("X_",type,".txt"), col.name=features$colName)
        
        #selecting only means and standard deviations
        featureValues<-select(featureValues,matches("[.]mean[.]|[.]mean$|std")) 
        
        #load subject ids
        subjects<-read.table(paste0("subject_",type,".txt"), col.names = "subject")
        
        #load activities
        activitiesValues<- read.table(paste0("y_",type,".txt"), col.name="activity")
        #convert activities to factors
        activitiesValues<- mutate(activitiesValues, activity = as.factor(activity))
        #set factor names
        levels(activitiesValues$activity)<-activities$name
        #bind everything together
        measurements<-cbind(subjects,activitiesValues,featureValues)
        #return back to original folder
        setwd("..")
        #return result
        measurements
}

#read the test data
testData<-loadData("test",activities, features)
#read the train data
trainData<-loadData("train",activities, features)

#combine test and train
combinedData<-rbind(trainData,testData)
#group data by subject and activity
averagesData<-group_by(combinedData, subject,activity)
#get means for all columns
measurementsMeans<-summarise_each(averagesData, funs(mean))
#return to initial directory
setwd("..")

#write tidy dataset with means
write.table(measurementsMeans, file="tidyDataSet.txt", row.names=FALSE)
measurementsMeans