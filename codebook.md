Code Book - Class project "Getting and Cleaning Data"
=====================================================

*NOTE* - Please read [README.md](https://github.com/mkanchan/GettingAndCleaningData/blob/master/README.md) for overall understanding of this project.   

Overview
-----------------------------------------------------
This codebook provides details of the 2 data files:
    
       
1. datafile1.txt - intermidiate data file generated after merging and subsetting the raw data (source: [Human Activity Recognition Using Smartphones Dataset](http://www.smartlab.ws))
2. tidydata.txt - tidy data created with average of all means and stds grouped by subject and activity label

   
   
datafile1.txt
-----------------------------------------------------

This file is generated after:

1. columnwise separately merging of X,Y and subject of train and test data
2. rowwise merging of train and test data
3. subsetting by picking only mean and standard deviation features
4. providing decriptive column names and replacing activity label code by names

It contains same fields as mentioned in next section (tidyData.txt)


tidyData.txt
-----------------------------------------------------

Data from datafile1.txt are grouped by Subject and Activity Labels to avegare each columns to generate the tidy data (tidyData.txt)



It contains following data fileds:

Column name                             |Data Type       |Description
----------------------------------------|----------------|-----------
 [1] tBodyAcc_mean_X                    |Numeric - Double|Mean  Body Acc X              
 [2] tBodyAcc_mean_Y                    |Numeric - Double|Mean  Body Acc Y             
 [3] tBodyAcc_mean_Z                    |Numeric - Double|Mean  Body Acc Z
 [4] tBodyAcc_std_X                     |Numeric - Double|Standard deviation  Body Acc X              
 [5] tBodyAcc_std_Y                     |Numeric - Double|Standard deviation  Body Acc Y               
 [6] tBodyAcc_std_Z                     |Numeric - Double|Standard deviation  Body Acc Z              
 [7] tGravityAcc_mean_X                 |Numeric - Double|Mean  Gravity Acc X            
 [8] tGravityAcc_mean_Y                 |Numeric - Double|Mean  Gravity Acc Y           
 [9] tGravityAcc_mean_Z                 |Numeric - Double|Mean  Gravity Acc Z            
[10] tGravityAcc_std_X                  |Numeric - Double|Standard deviation  Gravity Acc X           
[11] tGravityAcc_std_Y                  |Numeric - Double|Standard deviation  Gravity Acc Y            
[12] tGravityAcc_std_Z                  |Numeric - Double|Standard deviation  Gravity Acc Z           
[13] tBodyAccJerk_mean_X                |Numeric - Double|Mean  Body Jerk X            
[14] tBodyAccJerk_mean_Y                |Numeric - Double|Mean  Body Jerk Y          
[15] tBodyAccJerk_mean_Z                |Numeric - Double|Mean  Body Jerk Z           
[16] tBodyAccJerk_std_X                 |Numeric - Double|Standard deviation  Body Jerk X          
[17] tBodyAccJerk_std_Y                 |Numeric - Double|Standard deviation  Body Jerk Y           
[18] tBodyAccJerk_std_Z                 |Numeric - Double|Standard deviation  Body Jerk Z          
[19] tBodyGyro_mean_X                   |Numeric - Double|Mean  Body Gyro X           
[20] tBodyGyro_mean_Y                   |Numeric - Double|Mean  Body Gyro Y          
[21] tBodyGyro_mean_Z                   |Numeric - Double|Mean  Body Gyro Z           
[22] tBodyGyro_std_X                    |Numeric - Double|Standard deviation  Body Gyro X          
[23] tBodyGyro_std_Y                    |Numeric - Double|Standard deviation  Body Gyro Y           
[24] tBodyGyro_std_Z                    |Numeric - Double|Standard deviation  Body Gyro Z          
[25] tBodyGyroJerk_mean_X               |Numeric - Double|Mean  Body Gyro Jerk X           
[26] tBodyGyroJerk_mean_Y               |Numeric - Double|Mean  Body Gyro Jerk Y          
[27] tBodyGyroJerk_mean_Z               |Numeric - Double|Mean  Body Gyro Jerk Z           
[28] tBodyGyroJerk_std_X                |Numeric - Double|Standard deviation  Body Gyro Jerk X          
[29] tBodyGyroJerk_std_Y                |Numeric - Double|Standard deviation  Body Gyro Jerk Y           
[30] tBodyGyroJerk_std_Z                |Numeric - Double|Standard deviation  Body Gyro Jerk Z          
[31] tBodyAccMag_mean                   |Numeric - Double|Mean  Body Acc Mag           
[32] tBodyAccMag_std                    |Numeric - Double|Standard deviation  Body Acc Mag          
[33] tGravityAccMag_mean                |Numeric - Double|Mean  Gravity Acc Mag           
[34] tGravityAccMag_std                 |Numeric - Double|Standard deviation  Gravity Acc Mag          
[35] tBodyAccJerkMag_mean               |Numeric - Double|Mean  Body Acc Jerk Mag           
[36] tBodyAccJerkMag_std                |Numeric - Double|Standard deviation  Body Acc Jerk Mag          
[37] tBodyGyroMag_mean                  |Numeric - Double|Mean  Body Gyro Mag           
[38] tBodyGyroMag_std                   |Numeric - Double|Standard deviation  Body Gyro Mag          
[39] tBodyGyroJerkMag_mean              |Numeric - Double|Mean  Body Gyro Jerk Mag          
[40] tBodyGyroJerkMag_std               |Numeric - Double|Standard deviation  Body Gyro Jerk Mag         
[41] fBodyAcc_mean_X                    |Numeric - Double|Mean  Body Acc X             
[42] fBodyAcc_mean_Y                    |Numeric - Double|Mean  Body Acc Y            
[43] fBodyAcc_mean_Z                    |Numeric - Double|Mean  Body Acc Z             
[44] fBodyAcc_std_X                     |Numeric - Double|Standard deviation  Body Acc X            
[45] fBodyAcc_std_Y                     |Numeric - Double|Standard deviation  Body Acc Y             
[46] fBodyAcc_std_Z                     |Numeric - Double|Standard deviation  Body Acc Z            
[47] fBodyAcc_meanFreq_X                |Numeric - Double|Mean Freq  Body Acc X            
[48] fBodyAcc_meanFreq_Y                |Numeric - Double|Mean Freq  Body Acc Y           
[49] fBodyAcc_meanFreq_Z                |Numeric - Double|Mean  Freq Body Acc Z            
[50] fBodyAccJerk_mean_X                |Numeric - Double|Mean  Body Acc Jerk X           
[51] fBodyAccJerk_mean_Y                |Numeric - Double|Mean  Body Acc Jerk Y            
[52] fBodyAccJerk_mean_Z                |Numeric - Double|Mean  Body Acc Jerk Z          
[53] fBodyAccJerk_std_X                 |Numeric - Double|Standard deviation  Body Acc Jerk X           
[54] fBodyAccJerk_std_Y                 |Numeric - Double|Standard deviation  Body Acc Jerk Y          
[55] fBodyAccJerk_std_Z                 |Numeric - Double|Standard deviation  Body Acc Jerk Z           
[56] fBodyAccJerk_meanFreq_X            |Numeric - Double|Mean Freq  Body Acc Jerk X      
[57] fBodyAccJerk_meanFreq_Y            |Numeric - Double|Mean Freq Body Acc Jerk Y       
[58] fBodyAccJerk_meanFreq_Z            |Numeric - Double|Mean Freq Body Acc Jerk Z      
[59] fBodyGyro_mean_X                   |Numeric - Double|Mean  Body Gyro X       
[60] fBodyGyro_mean_Y                   |Numeric - Double|Mean  Body Gyro Y      
[61] fBodyGyro_mean_Z                   |Numeric - Double|Mean  Body Gyro Z       
[62] fBodyGyro_std_X                    |Numeric - Double|Mean  Standard deviation Gyro X      
[63] fBodyGyro_std_Y                    |Numeric - Double|Mean  Standard deviation Gyro Y       
[64] fBodyGyro_std_Z                    |Numeric - Double|Mean  Standard deviation Gyro Z      
[65] fBodyGyro_meanFreq_X               |Numeric - Double|Mean Freq Body Gyro X       
[66] fBodyGyro_meanFreq_Y               |Numeric - Double|Mean Freq Body Gyro Y      
[67] fBodyGyro_meanFreq_Z               |Numeric - Double|Mean Freq Body Gyro Z       
[68] fBodyAccMag_mean                   |Numeric - Double|Mean  Body Acc Mag      
[69] fBodyAccMag_std                    |Numeric - Double|Standard deviation  Body Mag       
[70] fBodyAccMag_meanFreq               |Numeric - Double|Mean Freq Body Mag      
[71] fBodyBodyAccJerkMag_mean           |Numeric - Double|Mean  Body Acc Jerk Mag       
[72] fBodyBodyAccJerkMag_std            |Numeric - Double|Standard deviation  Body Acc Jerk Mag     
[73] fBodyBodyAccJerkMag_meanFreq       |Numeric - Double|Mean Freq Body Acc Jerk Mag  
[74] fBodyBodyGyroMag_mean              |Numeric - Double|Mean  Body Gyro Mag 
[75] fBodyBodyGyroMag_std               |Numeric - Double|Standard deviation  Body Gyro Mag  
[76] fBodyBodyGyroMag_meanFreq          |Numeric - Double|Mean Freq Body Gyro Mag 
[77] fBodyBodyGyroJerkMag_mean          |Numeric - Double|Mean  Body Jerk Mag  
[78] fBodyBodyGyroJerkMag_std           |Numeric - Double|Standard deviation  Body Gyro Jerk Mag 
[79] fBodyBodyGyroJerkMag_meanFreq      |Numeric - Double|Mean Freq Body Gyro Jerk Mag
[80] activityLabel                      |String (1 of 6 values)         |Activity Label
[81] Subject                            |Numeric - int|Index of Subject (participant) 

