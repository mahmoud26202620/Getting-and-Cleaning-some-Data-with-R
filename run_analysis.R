##cleaning some data 
##first: loading the packages we will used through the project

library(tidyverse)

##downloading the data set

##here is the data link of the project

##https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##reading the data

activity_labels<-read.table("activity_labels.txt",col.names = c("code","activities"))
features<-read.table("features.txt",col.names = c("n","functions"))
subject_test<-read.table("subject_test.txt",col.names =c("subject"))
subject_train<-read.table("subject_train.txt",col.names =c("subject"))
X_test<-read.table("X_test.txt",col.names =features$functions)
X_train<-read.table("X_train.txt",col.names =features$functions)
y_test<-read.table("y_test.txt",col.names=c("code"))
y_train<-read.table("y_train.txt",col.names = c("code"))

##Merges the training and the test sets to create one data set

X<-rbind(X_test,X_train)
Y<-rbind(y_test,y_train)
subject<-rbind(subject_test,subject_train)
The_merged_data<-cbind(subject,Y,X)

##Extracts only the measurements on the mean and standard deviation for each measurement. 


TidyData <-  select(The_merged_data,subject, code, contains("mean"), contains("std"))

##Uses descriptive activity names to name the activities in the data set

TidyData$code <- activity_labels[TidyData$code, 2]

##Appropriately labels the data set with descriptive variable names.

TidyData%>%
  rename(
    code=activity
  )
names(TidyData)<-gsub("^f", "Frequency", names(TidyData))

##From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The_final_data <- TidyData %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
