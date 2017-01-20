# Code Book

### Naming convention
The CamelCase convention was used here due to the complicated nature of the variable names.

*The coumn names could have been split into separate variables (e.g. domain, instrument, etc.) to avoid long protracted names, but in this case the resulting data would be less tidy, with a multitude of NAs in the various columns*


###ID Fields

* **SubjectNumber**  
The participant ("subject") ID  
* **Activity**  
The label of the activity performed when the corresponding measurements were taken  


###Extracted Feature Fields

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
 
 
###Activity Labels

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