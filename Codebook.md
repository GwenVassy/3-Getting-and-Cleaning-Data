# Code Book

## Source Data Description :

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

##### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.


## Naming convention
The CamelCase convention was used here due to the complicated nature of the variable names.

*The coumn names could have been split into separate variables (e.g. domain, instrument, etc.) to avoid long protracted names, but in this case the resulting data would be less tidy, with a multitude of NAs in the various columns*


##ID Fields

* **SubjectNumber**  
The participant ("subject") ID  
* **Activity**  
The label of the activity performed when the corresponding measurements were taken  


##Extracted Feature Fields

The column names for the final data (tidy_dta.txt) were extracted from the features.txt file but manipulated to be more descriptive by:  

1. Removing all parenthesis from *mean* and *std*
2. Removing all hyphens and replacing with a cap for the following word (e.g. AccMean to AccMean)

**The remaining variables are**  

* TimeBodyAccMeanX  
* TimeBodyAccMeanY  
* TimeBodyAccMeanZ  
* TimeBodyAccStdX  
* TimeBodyAccStdY  
* TimeBodyAccStdZ  
* TimeGravityAccMeanX  
* TimeGravityAccMeanY  
* TimeGravityAccMeanZ  
* TimeGravityAccStdX  
* TimeGravityAccStdY  
* TimeGravityAccStdZ  
* TimeBodyAccJerkMeanX  
* TimeBodyAccJerkMeanY  
* TimeBodyAccJerkMeanZ  
* TimeBodyAccJerkStdX  
* TimeBodyAccJerkStdY  
* TimeBodyAccJerkStdZ  
* TimeBodyGyroMeanX  
* TimeBodyGyroMeanY  
* TimeBodyGyroMeanZ  
* TimeBodyGyroStdX  
* TimeBodyGyroStdY  
* TimeBodyGyroStdZ  
* TimeBodyGyroJerkMeanX  
* TimeBodyGyroJerkMeanY  
* TimeBodyGyroJerkMeanZ  
* TimeBodyGyroJerkStdX  
* TimeBodyGyroJerkStdY  
* TimeBodyGyroJerkStdZ  
* TimeBodyAccMagMean  
* TimeBodyAccMagStd  
* TimeGravityAccMagMean  
* TimeGravityAccMagStd  
* TimeBodyAccJerkMagMean  
* TimeBodyAccJerkMagStd  
* TimeBodyGyroMagMean  
* TimeBodyGyroMagStd  
* TimeBodyGyroJerkMagMean  
* TimeBodyGyroJerkMagStd  
* FreqBodyAccMeanX  
* FreqBodyAccMeanY  
* FreqBodyAccMeanZ  
* FreqBodyAccStdX  
* FreqBodyAccStdY  
* FreqBodyAccStdZ  
* FreqBodyAccJerkMeanX  
* FreqBodyAccJerkMeanY  
* FreqBodyAccJerkMeanZ  
* FreqBodyAccJerkStdX  
* FreqBodyAccJerkStdY  
* FreqBodyAccJerkStdZ  
* FreqBodyGyroMeanX  
* FreqBodyGyroMeanY  
* FreqBodyGyroMeanZ  
* FreqBodyGyroStdX  
* FreqBodyGyroStdY  
* FreqBodyGyroStdZ  
* FreqBodyAccMagMean  
* FreqBodyAccMagStd  
* FreqBodyBodyAccJerkMagMean  
* FreqBodyBodyAccJerkMagStd  
* FreqBodyBodyGyroMagMean  
* FreqBodyBodyGyroMagStd  
* FreqBodyBodyGyroJerkMagMean  
* FreqBodyBodyGyroJerkMagStd  
 
 
##Activity Labels

The activity labels were extracted from the activity_labels.txt file.  

They have been manipulated to remove underscores (e.g. WALKING_DOWNSTAIRS to WALKINGDOWNSTAIRS)   

They have been converted to CamelCase for consistency  

The values used in the final data are:  

* Walking  
* WalkingUpstairs  
* WalkingDownstairs  
* Sitting  
* Standing  
* Laying  
