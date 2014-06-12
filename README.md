Course Project : Getting And Cleaning Data 
========================================================
Version 1.0
  
    
Created by: Mukesh Kanchan


Data provided by: 
------------------------------------------------------------------
Human Activity Recognition Using Smartphones Dataset: Version 1.0  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Università degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  
  
Overview:
------------------------------------------------------------------
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. A  R script called run_analysis.R is created to achieve following goal:  

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

Github Repository
------------------------------------------------------------------
Github repository: [github-mkanchan](https://github.com/mkanchan/GettingAndCleaningData) 

Contains 
- README.md - describing how script works, 
- run_analysis.R - R script for getting and cleaning data, 
- codebook.md, - details of data and script 
- tidyData.txt  - final output "tidy data"
- datafile1.txt - intermediate data file

R script (run_analysis.R)
------------------------------------------------------------------
*run_analysis.R* does following steps:


1. download data files from [Raw Data URL](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) and extacts all files in local working directory
2. reads all relevent test and tain data files
3. first binds test and train data files (X, Y and subject) column wise separately, them binds row wise to make a single data file having all rows and columns
4. reads the column names from 'feature.txt', removes special charecters (pranthesis are removed and dashes are replaced by underscore). This is necessary to avoid error during subsequent function calls involving column names as parameter
5. columns names are now applied to merged data
6. data is now subset to just have columns with 'mean', 'std', 'Subject' and 'activityLabel'
7. activityLabel code (1:6) are replaced with string read from 'activity_label.txt'
8. this partially processed data now saved as intemidiate data file 'datafile.txt'
9. with a new start, intermidiate data file is read it rawdata data frame   
10. a tidy data frame with mean of each column grouped by Subject and Activity Labels is created
10. a tidy data frame with mean of each column grouped by Subject and Activity Labels is created
11. tidy data frame is stored as space separated file and with header information in to 'tidyDaya.txt'



Data files
------------------------------------------------------------------
Following files are used as input by this process:


- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'test/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
  
  
   
   
Following files were created by this process:


- 'datafile1.txt': intermidiate file created after merging, subsetting the data from  above files

- 'tidyData.txt': final output file, with average of all means and stds grouped by subject and activity label

Deatils of data in these files are available in 'codebook.md'

**NOTE:** These files are speace (' ')  separated data file, and has header informtion in the same file itself. Use following code to read them.


        read.table("datafile1.txt",header=TRUE,sep=" ")