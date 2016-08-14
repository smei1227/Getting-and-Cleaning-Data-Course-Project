#Getting and Cleaning Data Course Project

#set working directory
setwd("C:/Users/Mei/Documents/Data/UCI HAR Dataset")

# read data from the files

features <- read.table("features.txt")   #read Variable Names data
activities <- read.table("activity_labels.txt")   #read activity label data

Xtraining <- read.table("train/X_train.txt")   #read the training datasets
colnames(Xtraining) = features[,2]   #assign column names to the meaningful variable names

Xtesting <- read.table("test/X_test.txt")    #read the testing datasets
colnames(Xtesting) = features[,2]   #assign column names to the meaningful variable names

SubjectTraining <- read.table("train/subject_train.txt")   #read the training subject datasets
colnames(SubjectTraining) = "Subject"  #assign column names to the meaningful variable names

SubjectTesting <- read.table("test/subject_test.txt")   #read the testing subject datasets
colnames(SubjectTesting) = "Subject"    #assign column names to the meaningful variable names


Ytraining <- read.table("train/y_train.txt")  #read training activities datasets
colnames(Ytraining) = "Activity"  #assign column names to the meaningful variable names

Ytesting <- read.table("test/y_test.txt")   #read testing activities datasets
colnames(Ytesting) = "Activity"  #assign column names to the meaningful variable names

library(dplyr)   #Load dplyr package

#Merge training datasets, cbind to merge 3 training data and add one variable "Group" as "train" for all observations
training <- cbind(SubjectTraining, Group = "train", Ytraining, Xtraining)

#Merge testing datasets, cbind to merge 3 testing data and add one variable "Group" as "test" for all observations
testing <- cbind(SubjectTesting, Group = "test", Ytesting, Xtesting)

#Merges the training and the test sets to create one data set. 
#"Group" variable indicates the data is from taining dataset or testing dataset
alldata <- rbind(training, testing)

#Extracts only the measurements on the mean and standard deviation for each measurement
colnames <- colnames(alldata)   #create a vector containings all column name 
subcolnames <- grep(pattern = "Subject|Activity|Group|.*mean.*|.*std.*", x = colnames, value = TRUE) #extract columns only contains mean and standard deviation
suballdata <- alldata[,subcolnames]  #subtract dataset only has the measurements on the mean and std

#Uses descriptive activity names to name the activities in the dataset
suballdata$Activity <- factor(suballdata$Activity, levels = activities[,1], labels = activities[,2])
head(suballdata)

#Appropriately labels the dataset with descriptive variable names

colnamessub <- colnames(suballdata)
colnamessub <- gsub("-mean", "Mean", colnamessub)
colnamessub <- gsub("-std", "Std", colnamessub)
colnamessub <- gsub("-", "", colnamessub)
colnamessub <- gsub("[()]", "", colnamessub)
colnames(suballdata) <- colnamessub
suballdata <- suballdata[, colnamessub]
head(suballdata)

#create a second independent tidy dataset with the average of each variable for each activity and each subject
run_analysis <- (suballdata%>%
                  group_by(Subject,Group, Activity) %>%    #break up dataset into groups of rows based on too variables
                  summarise_each(funs(mean)))   #give the requested function(mean) for each group in the dataset
print(run_analysis)
write.table(run_analysis, "tidy.txt", row.names = FALSE, quote = FALSE)
