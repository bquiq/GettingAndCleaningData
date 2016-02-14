


# 0. Get the data and create the project repository
myDir<-"projectW4"
if (!file.exists(myDir)){
    dir.create(myDir)
}

if (!file.exists("rprog-data-ProgAssignment3-data.zip")){
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url,myDir)
}

if(!file.exists(paste0(myDir,"\\UCI HAR Dataset"))){
    unzip("getdata-projectfiles-UCI HAR Dataset.zip", exdir=myDir)
}

library(dplyr)
oldwd <- getwd()
setwd(paste0(myDir,"\\UCI HAR Dataset"))
#-----------------------------------------------------------------------------

# 1. Merges the training and the test sets to create one data set

## 1.1 Get the metadata (variables names and activity labels)
activityLabels <- read.table("activity_labels.txt")[[2]]
featuresNames <- read.table("features.txt")[[2]]

## 1.2 Read the training and test data
X_train <- read.table("train\\X_train.txt")
y_train <- read.table("train\\y_train.txt")
subject_train <- read.table("train\\subject_train.txt")

names(X_train)<- featuresNames
names(y_train)<- "activity"
names(subject_train)<- "subjectID"

X_test <- read.table("test\\X_test.txt")
y_test <- read.table("test\\y_test.txt")
subject_test <- read.table("test\\subject_test.txt")

names(X_test)<- featuresNames
names(y_test)<- "activity"
names(subject_test)<- "subjectID"

# 1.3 Merge all datasets in one dataset
train_data =cbind(subject_train,X_train,y_train)
test_data=cbind(subject_test,X_test, y_test)

alldata <- rbind(train_data,test_data)
#------------------------------------------------------------------------------

# 2. Extract only the measurements on the mean and standard deviation 
# for each measurement.

## 2.1 Select the features names to keep and make them readable
toKeep <- grep("(mean\\(\\))|(std\\(\\))",names(alldata), ignore.case = T)

## 2.2 Features selection
alldata <- alldata[,c(1,toKeep,length(alldata))]
names(alldata) <- gsub("\\(","",names(alldata))
names(alldata) <- gsub("\\)","",names(alldata))
names(alldata) <- gsub("-|,","_",names(alldata))
#------------------------------------------------------------------------------

# 3. Use descriptive activity names to name the activities in the data set
alldata$activity <- as.factor(alldata$activity)
levels(alldata$activity) <- tolower(activityLabels)
#------------------------------------------------------------------------------

# 4. Label the data set with descriptive variable names.
names(alldata) <- gsub("^t","Time_",names(alldata))
names(alldata) <- gsub("Acc","Acceleration",names(alldata))
names(alldata) <- gsub("mean","Mean",names(alldata))
names(alldata) <- gsub("std","STD",names(alldata))
names(alldata) <- gsub("Gyro","Gyroscope",names(alldata))
names(alldata) <- gsub("Mag","Magnitude",names(alldata))
names(alldata) <- gsub("Freq","Frequency",names(alldata))
names(alldata) <- gsub("^f","FastFourierTransform_",names(alldata))
#------------------------------------------------------------------------------

# 5. Creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.
tidydata <- alldata %>% group_by (activity,subjectID) %>% summarise_each(funs(mean(., na.rm=TRUE)))
#------------------------------------------------------------------------------

# 6. Write tidy data tables, generate metadata for code book and 
#set working directory to old value
#write.csv(alldata, "alldata.csv")
write.table(tidydata, "tidydata.txt", row.names=F)

var <- names(tidydata)
description <- character(length(var))
for (i in 1:length(var)){
    var[i]<-paste0("**",var[i],"**")
    
 if (identical(var[i],"**subjectID**")){
        description[i]<- "Subject identifier. Nominal. Values: [1-30]"
    } else if (identical(var[i],"**activity**")){
        description[i]<- paste0("Type of activiy. Nominal. Values: ",paste(activityLabels,collapse="; "))
    } else {
        description[i]<- "Measurement"
    }
}

codebook <- data.frame(var, description)
write.table(codebook,"..\\cb.txt",sep=" : ",quote=F, row.names = F)

setwd(oldwd)
#------------------------------------------------------------------------------