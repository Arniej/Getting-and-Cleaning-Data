
##Getting and Cleaning Data Course Final Project

#by Arnie Jimenez

#See instructions file for specific project assignment

The project has the following requirements:

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Each of the 5 requirements are scripted on the run_analysis.R file. The tidy data set will output to tidy_data.txt

Your working directory must contain the directory UCI HAR Dataset with the associated files for the project.

This repository, contains the following files:

    readme.md, this file
    tidy_data.txt, which contains the tidy data set output
    run_analysis.R, which contains the source code for the project
    Codebook.md, which contains a description of the contents of the data
    
##Creating the data set

The R script run_analysis.R can be used to create the data set.


1. Read data.
2. Merge the training and the test sets to create one data set.
3. Extract only the measurements on the mean and standard deviation for each measurement.
4. Use descriptive activity names to name the activities in the data set.
5. Appropriately label the data set with descriptive variable names.
6. Create a second, independent tidy set with the average of each variable for each activity and each subject.
7. Write the data set to the tidy_data.txt file.