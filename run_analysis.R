
library(data.table)
library(dplyr)
library(tidyr)

getTidyData <- function(){
  
  #1.Merges the training and the test sets to create one data set.
  
  # load sensor data
  testDT <- read.table('data/UCI HAR Datasettest/X_test.txt', header = FALSE,stringsAsFactors = F, fill = T)
  trainDT <- read.table('data/train/X_train.txt', header = FALSE,stringsAsFactors = F, fill = T)
  
  allDT <- rbind_list(testDT,trainDT)
  
  # add names
  columnsDT <- read.table('data/features.txt',header=FALSE,stringsAsFactors=F,fill=T)
  names(allDT) <- columnsDT$V2
  
  # add activity type
  testAcDT<- read.table('data/test/y_test.txt', header = FALSE,stringsAsFactors = F, fill = T) 
  trainAcDT<- read.table('data/train/y_train.txt', header = FALSE,stringsAsFactors = F, fill = T) 
  
  allAcDT <- rbind_list(testAcDT,trainAcDT)
  allDT$activityId <- allAcDT$V1
  
  # add subject id's
  testSubjectDT<- read.table('data/test/subject_test.txt', header = FALSE,stringsAsFactors = F, fill = T) 
  trainSubjectDT<- read.table('data/train/subject_train.txt', header = FALSE,stringsAsFactors = F, fill = T) 
  allSubjectDT <- rbind_list(testSubjectDT,trainSubjectDT)
  allDT$subjectId <- allSubjectDT$V1
  
  
  
  #2.Extracts only the measurements on the mean and standard deviation for each measurement.
  # use columns which were created by mean() and std() functions
  allDT <- select(allDT, subjectId,activityId, contains("-mean\\("),contains("-std\\("))
  
  #3.Uses descriptive activity names to name the activities in the data set
  # load descriptive names data
  accLabels<- read.table('data/activity_labels.txt', header = FALSE,stringsAsFactors = F, fill = T) 
  names(accLabels) <- c("id","name")
  # add names to dataset
  allDT$activityName <- accLabels[allDT$activityId,"name"]
  
  #4.Appropriately labels the data set with descriptive variable names. 
  
  #change prefix f to fft
  names(allDT) <- gsub("^f","fft",names(allDT))
  #change prefix t to time
  names(allDT) <- gsub("^t","time",names(allDT))
  #change -mean() to Mean
  names(allDT) <- gsub("-mean\\()","Mean",names(allDT))
  #change -std() to Std
  names(allDT) <- gsub("-std\\()","Std",names(allDT))
  #remove remaining -
  names(allDT) <- gsub("-","",names(allDT))
  #remove BodyBody 
  names(allDT) <- gsub("BodyBody","Body",names(allDT))
  
  allDT
  
  
  
}

getGroupedTidyData <- function(){
  #5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  allDT <- getTidyData()
  groupedDT <- allDT %>%
    group_by(activityName,subjectId) %>%
    summarise_each(funs(mean))
  
  
  #prefix new variables with "meanOf"
  names(groupedDT) <- gsub("^fft","meanOfFft",names(groupedDT))
  names(groupedDT) <- gsub("^time","meanOfTime",names(groupedDT)) 

  groupedDT
}

writeToFile <- function(file="output.txt"){
  write.table(getGroupedTidyData(), file=file,row.names=F)
}