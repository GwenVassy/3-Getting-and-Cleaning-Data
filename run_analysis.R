rm(list=ls())
# Set working directory
setwd("/Users/Gwen/Data-Science-Week-4-Assignment")

# Load relevant packages
if(!require(tidyr)) install.packages("tidyr")
library(tidyr)
if(!require(data.table)) install.packages("data.table")
library(data.table)
if(!require(dplyr)) install.packages("dplyr") 
library(dplyr)

# 1. Merge the training and the test sets to create one data set

        # 1.1 Set training and test directory
        UCI_dir <- "./UCI HAR Dataset"
        test_dir <- "./test" 
        train_dir <- "./train" 
        
        # 1.2 Load files in root folder
        setwd(UCI_dir)
        features <- read.table("features.txt")
        activity_labels <- read.table("activity_labels.txt")
        names(activity_labels) <- c("activity_number", "Activity")
        
        # 1.3 Load files in test folder
        setwd(test_dir)
        X_test <- fread("X_test.txt")
        Y_test <- fread("Y_test.txt")
        subject_test <- fread("subject_test.txt")
        names(Y_test) <- "activity_number"
        names(subject_test) <- "SubjectNumber" 
        
        # 1.4 Combine test files
        data_test <- cbind(subject_test, Y_test, X_test) 
        rm(X_test, Y_test, subject_test)
        
        # 1.5 Load files in train folder
        setwd("..")
        setwd(train_dir)
        X_train <- fread("X_train.txt")
        Y_train <- fread("Y_train.txt")
        subject_train <- fread("subject_train.txt") 
        names(Y_train) <- "activity_number"
        names(subject_train) <- "SubjectNumber"
        setwd("..")
        setwd("..")
        
        # 1.6 Combine train files
        data_train <- cbind(subject_train, Y_train, X_train) 
        rm(X_train, Y_train, subject_train)
        
        # 1.7 Merge files
        data_full <- rbind(data_test, data_train)
        rm(data_test, data_train)
      
          
# 2. Extract only the measurements on the mean and standard deviation for each measurement
        
        # 2.1 Find relevant column names
        mean_cols <- grep("*mean*", features[,2]) + 2  # Find all column names that contain the word "mean"
        std_cols <- grep("*std*", features[,2]) + 2  # Find all column names that contain the word "std"
        rel_cols <- sort(c(mean_cols, std_cols))  # Merge and sort the vectors (to preserve column order)
        
        # 2.2 Create subset of data_full with only those columns
        data_relevant <- select(data_full,c(1:2, rel_cols))
        rm(data_full, mean_cols, std_cols)

        
# 3. Use descriptive activity names to name the activities in the data set        
        
        activity_labels$Activity <- tolower(activity_labels$Activity) # Make all lower case
        activity_labels$Activity <- sub("^(\\w?)", "\\U\\1", activity_labels$Activity, perl=T) # Capitalize first letter
        activity_labels$Activity <- gsub("\\_(\\w?)", "\\U\\1", activity_labels$Activity, perl=T) # Remove _ and capitalize following letter
        
        data_activity <- merge(data_relevant, activity_labels) %>% # Merge to add activity text
                         select(-activity_number) # Remove activity_number as no longer needed
        data_activity <- select(data_activity, c(1, Activity, 2:ncol(data_activity)-1)) # Bring activity name forward
        rm(activity_labels, data_relevant)
        
        
# 4. Appropriately label the data set with descriptive variable names
        
        names_activity <- names(data_activity[,1:2]) # Keep names of first 2 columns
        names_X <- as.character(features[rel_cols-2, 2]) # Get activity names from features dataframe
        names_X <- gsub("*\\()*","",names_X) # Remove all brackets "()" within names
        names_X <- gsub("*\\-m","M",names_X) # Replace all "-m" with "M" within names
        names_X <- gsub("*\\-s","S",names_X) # Replace all "-s" with "S" within names
        names_X <- gsub("*\\-","",names_X) # Replace all "-s" with "S" within names
        names_X <- gsub("^t", "Time", names_X) # Replace all "t" at beginning with "Time" within names
        names_X <- gsub("^f", "Freq", names_X) # Replace all "f" at beginning with "Freq" within names
        
        names_activity <- c(names_activity, names_X) # Append names of relevant columns from features list
        names(data_activity) <- names_activity
        rm(features)

        
# 5. From the data set in step 4, create a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
        
        groups <- group_by(data_activity, SubjectNumber, Activity)
        groups <- summarise_each(groups, funs(mean(., na.rm = TRUE))) 
        write.table(groups, file = "tidy_data_means_by_group.txt", row.name=FALSE)

        