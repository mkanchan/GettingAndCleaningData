## step 0 - download  and extact data files
setwd("./data")
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              temp,
              mode="wb")
unzip(temp)
unlink(temp)
setwd("./UCI HAR Dataset")

## step 1 - prepare raw data
# read test data
testXData <-  read.table("test/X_test.txt")
testYData <-  read.table("test/Y_test.txt")
testSData <-  read.table("test/subject_test.txt")
# read train data
trainXData <-  read.table("train/X_train.txt")
trainYData <-  read.table("train/Y_train.txt")
trainSData <-  read.table("train/subject_train.txt")
# column wise bind test and train data separately
testData <- cbind(testXData,testYData,testSData)
trainData <- cbind(trainXData,trainYData,trainSData)
# now merge both test and tain data row wise 
data <- rbind(testData,trainData)

# read the feature names from feature.txt
cnames <- read.table("features.txt",stringsAsFactors=FALSE,colClasses="character")
# add 2 additional variables for label and subject
cnames <- rbind(cnames,
                c(562,"activityLabel"),
                c(563,"Subject"))
# remove braces and change dash to underscore 
# from the variable names and make them column name
colnames(data) <- gsub("\\-","\\_",gsub("\\(\\)","",cnames[,2]))

# subset data for columns having mean and std in column names
subdata <- data[,c(grep('+mean|std|activityLabel|Subject+',names(data)))]

# convert label codes to string 
labelData <-  read.table("activity_labels.txt")
subdata$activityLabel <- labelData$V2[
        match(subdata$activityLabel,labelData$V1)]
# store the data
write.table(subdata,"datafile1.txt",row.names=FALSE,col.names=TRUE,sep = " ",eol = "\n")

## step 2- create the tidy data file
# read data generated from previous steps
rawdata <- read.table("datafile1.txt",header=TRUE,sep=" ")
library(plyr)
# craete tidy data with mean of each column grouped by Subject and Activity Labels
groupColumns = c("activityLabel","Subject")
dataColumns = c(1:79)
tidydata <- ddply(rawdata,groupColumns, function(x) colMeans(x[dataColumns]))
# store data
write.table(tidydata,"tidyData.txt",row.names=FALSE,col.names=TRUE,sep = " ",eol = "\n")



