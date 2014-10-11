#This code does the following:
#Merges the training and the test sets to create one data set so that 
#1.each variable is in one column and 
#2.each observation of that variable is in a diferent row
#3.creates a tidy_data dataset with the average of each variable for each activity and each subject
#code assumes that "UCI HAR Dataset" is parent folder of folder where R project is 
require("data.table")
require("reshape2")

#read in features data
features<-read.table("./UCI HAR Dataset/features.txt")[,2]

#create logical vector, TRUE, if feature contains mean/std, else false
features_needed <- grepl("mean|std", features)

#read in X_train and y_train dataset
x_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")

#add features as column names in x_train
names(x_train) <- features

#extract columns that are needed (mean, standard deviation) in x_train
x_train <- x_train[,features_needed]

#load activity labels
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")[,2]

#add activity labels as factors to y_train
y_train[,2] <- activity_labels[y_train[,1]]
#add activity labels to y_train
names(y_train) = c("Activity.ID", "Activity.Label")
#add subject label to subject_train
names(subject_train) = "Subject"

#bind y_train and x_train together as data.table
data_train<-data.table(cbind(subject_train,y_train, x_train))

#lets do the same thing as previous with test data
#read in X_test and y_test dataset
x_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")

#add features as column names in x_test
names(x_test) <- features

#extract colums that are needed (mean, standard deviation) in x_test
x_test <- x_test[,features_needed]

#add labels as factors to y_test
y_test[,2] <- activity_labels[y_test[,1]]
#add activity labels to y_test
names(y_test) = c("Activity.ID", "Activity.Label")
#add label to subject_test
names(subject_test) = "Subject"

#cbind y_test and x_test together as data.table
data_test<-data.table(subject_test,cbind(y_test, x_test))

#rbind data_test and data_train together
data<-rbind(data_test, data_train)

#vector which contains variables to keep not to split apart on 
labels <- c("Subject", "Activity.ID", "Activity.Label")

#melt the data to make a tidy dataset
tidy_data <- melt(data, id = labels)
write.table(tidy_data, file = "./UCI HAR Dataset/tidy_data.txt", row.name=FALSE)

#make tidy_mean_data which with the average of each variable for each activity and each subject
tidy_mean_data<- dcast(tidy_data, Subject + Activity.Label ~ variable, mean)
write.table(tidy_mean_data, file = "./UCI HAR Dataset/tidy_mean_data.txt", row.name=FALSE)

