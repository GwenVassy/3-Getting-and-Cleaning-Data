# Data-Science-Week-4-Assignment

This repository contains files for to the   
**Data Science - Getting and Cleaning Data - Week 4 peer-graded assessment**.  
The purpose of this project is to demonstrate ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

The script included will produce two text files

1. **tidy_data.txt** with the tidy data  
2. **means_by_groups.txt** with the average of each variable for each activity and each subject  

These files can then be read back into R using the **read.table** function  

*Please note that functions such as **fread** may not work due to the length of the variable names*

## How to install and run

1. Clone this repository to your local directory  
2. Download the UCI data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
3. Unzip the files into the same directory (this is important)  
5. Run the R script run_analysis.R with R or R Studio   
(all required packages will install and load if not already installed/loaded)

## How the Script works

#####Section 1:  
* Reads the test and training dataset, the corresponding subjects, features and activity labels from the raw dataset  
* Merges the subjects, test and training dataset

#####Section 2:  
* Extracts the measurements on the mean and standard deviation for each measurement
* Discards the rest of the data

#####Section 3:  
* Replaces activity numbers with the descriptive activity names in the data set (from activity labels file)       

#####Section 4:  
* Appropriately labels the data set with descriptive variable names using the names (from the features file)
* Names the result

#####Section 5:  
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
* Outputs the table into the *tidy_data_means_by_group* text file in the root folder.

## Acknowledgements

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.