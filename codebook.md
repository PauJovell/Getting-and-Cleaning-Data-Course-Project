# Codebook

## Transformations of `tidy.txt`:
1. Download the dataset: We download and extract the dataset: `UCI HAR Dataset.
2. Read the .txt files and assign it to variables:

subject_test <- test/subject_test.txt : 2947 rows, 1 column

x_test <- test/X_test.txt : 2947 rows, 561 columns

y_test <- test/y_test.txt : 2947 rows, 1 columns

subject_train <- test/subject_train.txt : 7352 rows, 1 column

x_train <- test/X_train.txt : 7352 rows, 561 columns

y_train <- test/y_train.txt : 7352 rows, 1 columns

activities <- activity_labels.txt : 6 rows, 2 columns

features <- features.txt : 561 rows, 2 columns

3. Merge both the training set and the set one using rbind() and cbind(). The resulting file:

Merged_training_test (10299 rows, 563 column) 

4. Uses descriptive activity names to name the activities in the data set using `activity_labels`.

5.  Appropriately labels the data set with descriptive variable names.
6.  Extracts only the measurements on the mean and standard deviation for each measurement and export it to a .txt. The resulting file:
7.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject:

tidy.txt(10299 rows, 88 columns)



## Variables of `tidy.txt`:

This file summarize `tidy.txt`, the end result of this project.

The file contains two different type of variables deppending of its information:
## Identifiers: 
`subject`: The identificator of the test subject. It range from 1 to 30, since 30 people took part in the experiment.
`activity`: The type of activity that was being performed by the subject when each measurement was taken. A related variable,`num_activity`, match a natural number from 1 to 6 to the activity in the following way:
  1. Walking
  2. Walking upstairs
  3. Walking downstairs
  4. Sitting
  5. Standing
  6. Laying

## Measurements: 

The mean of the different measurements that were conducted during the activities performed by the subjects:

 TimeBodyAccelerometer.mean...X
 
 TimeBodyAccelerometer.mean...Y
 
 TimeBodyAccelerometer.mean...Z  
 
 TimeGravityAccelerometer.mean...X     
 
 TimeGravityAccelerometer.mean...Y    
 
 TimeGravityAccelerometer.mean...Z                
 
 TimeBodyAccelerometerJerk.mean...X  
 
 TimeBodyAccelerometerJerk.mean...Y  
 
 TimeBodyAccelerometerJerk.mean...Z                
 
 TimeBodyGyroscope.mean...X         
 
 TimeBodyGyroscope.mean...Y          
 
 TimeBodyGyroscope.mean...Z 
 
 TimeBodyGyroscopeJerk.mean...X    
 
 TimeBodyGyroscopeJerk.mean...Y  
 
 TimeBodyGyroscopeJerk.mean...Z     
 
 TimeBodyAccelerometerMagnitude.mean..   
 
 TimeGravityAccelerometerMagnitude.mean..     
 
 TimeBodyAccelerometerJerkMagnitude.mean..    
 
 TimeBodyGyroscopeMagnitude.mean..         
 
 TimeBodyGyroscopeJerkMagnitude.mean..    
 
 FrequencyBodyAccelerometer.mean...X       
 
 FrequencyBodyAccelerometer.mean...Y       
 
 FrequencyBodyAccelerometer.mean...Z      
 
 FrequencyBodyAccelerometer.meanFreq...X   
 
 FrequencyBodyAccelerometer.meanFreq...Y     
 
 FrequencyBodyAccelerometer.meanFreq...Z     
 
 FrequencyBodyAccelerometerJerk.mean...X    
 
 FrequencyBodyAccelerometerJerk.mean...Y     
 
 FrequencyBodyAccelerometerJerk.mean...Z      
 
 FrequencyBodyAccelerometerJerk.meanFreq...X   
 
 FrequencyBodyAccelerometerJerk.meanFreq...Y    
 
 FrequencyBodyAccelerometerJerk.meanFreq...Z    
 
 FrequencyBodyGyroscope.mean...X                
 
 FrequencyBodyGyroscope.mean...Y              
 
 FrequencyBodyGyroscope.mean...Z              
 
 FrequencyBodyGyroscope.meanFreq...X           
 
FrequencyBodyGyroscope.meanFreq...Y              

FrequencyBodyGyroscope.meanFreq...Z             

FrequencyBodyAccelerometerMagnitude.mean..        

FrequencyBodyAccelerometerMagnitude.meanFreq..  

FrequencyBodyAccelerometerJerkMagnitude.mean.. 

FrequencyBodyAccelerometerJerkMagnitude.meanFreq..

FrequencyBodyGyroscopeMagnitude.mean..      

FrequencyBodyGyroscopeMagnitude.meanFreq..        

FrequencyBodyGyroscopeJerkMagnitude.mean..        

FrequencyBodyGyroscopeJerkMagnitude.meanFreq..    

Angle.TimeBodyAccelerometerMean.Gravity.         

Angle.TimeBodyAccelerometerJerkMean..GravityMean.

Angle.TimeBodyGyroscopeMean.GravityMean.      

Angle.TimeBodyGyroscopeJerkMean.GravityMean.    

Angle.X.GravityMean.                           

Angle.Y.GravityMean.            

Angle.Z.GravityMean.         

TimeBodyAccelerometer.std...X    

TimeBodyAccelerometer.std...Y    

TimeBodyAccelerometer.std...Z    

TimeGravityAccelerometer.std...X  

TimeGravityAccelerometer.std...Y  

TimeGravityAccelerometer.std...Z    

TimeBodyAccelerometerJerk.std...X    

TimeBodyAccelerometerJerk.std...Y      

TimeBodyAccelerometerJerk.std...Z    

TimeBodyGyroscope.std...X           

TimeBodyGyroscope.std...Y         

TimeBodyGyroscope.std...Z          

TimeBodyGyroscopeJerk.std...X          

TimeBodyGyroscopeJerk.std...Y          

TimeBodyGyroscopeJerk.std...Z         

TimeBodyAccelerometerMagnitude.std..     

TimeGravityAccelerometerMagnitude.std..    

TimeBodyAccelerometerJerkMagnitude.std..   

TimeBodyGyroscopeMagnitude.std..          

TimeBodyGyroscopeJerkMagnitude.std..       

FrequencyBodyAccelerometer.std...X        

FrequencyBodyAccelerometer.std...Y    

FrequencyBodyAccelerometer.std...Z    

FrequencyBodyAccelerometerJerk.std...X      

FrequencyBodyAccelerometerJerk.std...Y        

FrequencyBodyAccelerometerJerk.std...Z       

FrequencyBodyGyroscope.std...X        

FrequencyBodyGyroscope.std...Y       

FrequencyBodyGyroscope.std...Z         

FrequencyBodyAccelerometerMagnitude.std..  

FrequencyBodyAccelerometerJerkMagnitude.std..    

FrequencyBodyGyroscopeMagnitude.std..        

FrequencyBodyGyroscopeJerkMagnitude.std..         
