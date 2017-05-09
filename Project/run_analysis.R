##Merge "train" and "test" sets to create one dataset
##Inertial Signals Folder not used
##Focusing on "test" and "train" data
##Assuming files are loaded into UCI HAR Dataset directory

##Load required libraries

library(dplyr)   
library(data.table)  
library(reshape2)
library(knitr)

##Read Activity Names, label columns

activity_names <- read.table("./UCI HAR Dataset/activity_labels.txt")
setnames(activity_names, names(activity_names), c("activity_number", "activity_name"))


##Read "features" file which contain column names

features_data <- read.table("./UCI HAR Dataset/features.txt")
features_name <- features_data[,2]

##Read "test" subjects data and label columns with proper feature names

testdata <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(testdata) <- features_name
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test) <- "subjectid"
activity_testdata <- read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(activity_testdata) <- "activity_number"

##Read "train" data from UCI HAR Dataset Directory and label columns

traindata <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(traindata) <- features_name
activity_traindata <- read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(activity_traindata) <- "activity_number"
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train) <- "subjectid"



##Combine rows using rbind from the 2 data sets, including subject, activity and data

combined_subject <- rbind(subject_test, subject_train)
combined_activity <- rbind(activity_testdata, activity_traindata)

combined_main_data <- rbind(testdata, traindata)

##Merge Columns now to make one set, this answers Part 1

combined_col1 <- cbind(combined_subject, combined_activity)
combined_final <- cbind(combined_col1, combined_main_data)

##Part 2, Extract the observations with the mean and std deviation ONLY

features_data_extract <- grep("mean\\(\\)|std\\(\\)", names(combined_final), ignore.case = TRUE)
meanstdcol <- names(combined_final)[features_data_extract]  
meanstdtable <-combined_final[,c("subjectid","activity_number", meanstdcol )]


##Part 3. Use descriptive activity names, merge extracted data with activity names

desnames <- merge(activity_names, meanstdtable,by.x="activity_number",by.y="activity_number",all=TRUE)

##Part 4. Re label variables with descriptive names

desnamesCols <- colnames(desnames)

#Get rid of special characters with gsub

desnamesCols <- gsub("[\\(\\)-]", "", desnamesCols)

#replace "ambigous"f" and "t" variable name, expand a few others

desnamesCols <- gsub("^f", "Frequency", desnamesCols)
desnamesCols <- gsub("^t", "Time", desnamesCols)
desnamesCols <- gsub("Acc", "Accelerometer", desnamesCols)
desnamesCols <- gsub("Gyro", "Gyroscope", desnamesCols)
desnamesCols <- gsub("Mag", "Magnitude", desnamesCols)

colnames(desnames) <- desnamesCols

##Part 5. Create a tidy data set by averaging each variable for each activity and subject, use newly learned
## %>% operator

tidydatafinal <- desnames %>% 
    group_by(subjectid, activity_name) %>%
    summarize_each(funs(mean))



##Create tidy data .txt file and write table to directory

write.table(tidydatafinal,"./tidy_data.txt")

##Make Codebook

knit("makeCodebook.Rmd", output="codebook.md", encoding="ISO8859-1", quiet=TRUE)
markdownToHTML("codebook.md", "codebook.html")

