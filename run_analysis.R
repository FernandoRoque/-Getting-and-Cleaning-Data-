library(dplyr)

#######################################################################################################
#      
#      This Code run with the assumption that the following data are loaded in the work directory
#      
#      features:  loaded from features.txt
#      sub_test:  loaded from subject_test.txt
#      sub_train: loaded from subject_train.txt
#      x_test:    loaded from x_test.txt
#      x_train:   loaded from x_train.txt
#      y_test:    loaded from y_test.txt
#      y_train:   loaded from y_train.txt
#      activity_labels: loaded from activity_labels.txt 
#
#######################################################################################################



#######################################################################################################
#                                                                                                     #
#             1.            Merges the training and the test sets to create one data set.             #
#                                                                                                     #
#             Append all tables with rbind(command) and names Activities and Subject columns          #
#                                                                                                     #
#                                                                                                     #
#######################################################################################################



sub <- rbind(sub_test,sub_train)
x   <- rbind(x_test,x_train)  
y   <- rbind(y_test,y_train)

names(y)   <- "Act"
names(sub) <- "Subject"

#######################################################################################################
#                                                                                                     #
#   2.      Extracts only the measurements on the mean and standard deviation for each measurement    #
#                                                                                                     #
#     Extract only mean and standard deviation measurements based on the feature variable name        #
#     using regular expresions.                                                                       #
#                                                                                                     #
#                                                                                                     #
#######################################################################################################

mname <- grep("mean",features$Var_Name)
mnamef <- grep("meanFreq",features$Var_Name)

only_mean <- setdiff(mname, mnamef)
only_std  <- grep("std",features$Var_Name)

nvar <- c(only_mean,only_std)
vars <- features$Var_Name[c(only_mean,only_std)]

x_meas <- x[,nvar]
names(x_meas) <- gsub("\\()","",gsub("-","",vars))

#######################################################################################################
#                                                                                                     #
#             3.            Uses descriptive activity names to name the activities in the data set    #

# This task was accomplished by merging 
#                                                                                                     #
#######################################################################################################

x_meas_1  <- data.frame(matrix(as.numeric(unlist(x_meas[1:66])), ncol = 66, nrow = 10299))
names(x_meas_1)<- names(x_meas)


x_y_meas <- cbind(y, x_meas_1)
x_y_meas_n <- merge(activity_labels,x_y_meas,by="Act")[,-1]


#######################################################################################################
#                                                                                                     #
#             4.            Uses descriptive activity names to name the activities in the data set    #
#                                                                                                     #
#             This step is implicit at the end of the step 2.                                         #
#                                                                                                     #
#                                                                                                     #
#######################################################################################################



#######################################################################################################
#                                                                                                     #
#             5.            From the data set in step 4, creates a second, independent tidy data set  #
#             with the average of each variable for each activity and each subject.                   #
#                                                                                                     #
#                                                                                                     #
#                                                                                                     #
#                                                                                                     #
#######################################################################################################

x_y_meas_n_sub <- cbind(sub,x_y_meas_n)
grouped <- group_by(x_y_meas_n_sub, Subject, Activities)

mean_meas <- x_y_meas_n_sub %>% 
  group_by(Subject, Activities) %>% 
  summarise_each(funs(mean))

