
#Codebook for dataset creation based on run_analysis.R

The data set that this code book refers to is the tidy_data.txt file of this repository. It was
created by run_analysis.R which is in this repository.

See the readme.md file of this repository for information on this data set.

##tidy_data.txt

    tidy_data.txt contains a tidy data set where the first row is the name of the variable. The rest of the rows
    are the values.
    
##Variables

    The tidy data text files contains 180 observations of 69 variables
    *subjectid - identifies the subject (range 1-30)
    *activity_name - one of 6 activities measured (WALKING, WALKING_UPSTAIRS, LAYING, 
    STANDING, SITTING, WALKING_DOWNSTAIRS)
    * activity_number - number associated with the activity_name (1-6)
    * Variables 4-69 contain the average of each of the measured variables
    
###Measured Variables

    The variable names were cleaned up using gsub(). For example, tBodyAcc-mean()-X was renamed
    to TimeBodyAccelerometermeanX.
    The measured variables are averages of means and standard deviations expressed as integers.
    A call to desnamesCols will show a listing of all the variables.
    *TimeBodyAccelerometermeanX 
    *TimeBodyAccelerometermeanY 
    *TimeBodyAccelerometermeanZ 
    *TimeBodyAccelerometerstdX 
    *TimeBodyAccelerometerstdY 
    *TimeBodyAccelerometerstdZ 
    *TimeGravityAccelerometermeanX 
    *TimeGravityAccelerometermeanY 
    *TimeGravityAccelerometermeanZ 
    *TimeGravityAccelerometerstdX 
    *TimeGravityAccelerometerstdY 
    *TimeGravityAccelerometerstdZ 
    *TimeBodyAccelerometerJerkmeanX 
    *TimeBodyAccelerometerJerkmeanY 
    *TimeBodyAccelerometerJerkmeanZ 
    *TimeBodyAccelerometerJerkstdX 
    *TimeBodyAccelerometerJerkstdY 
    *TimeBodyAccelerometerJerkstdZ 
    *TimeBodyGyroscopemeanX 
    *TimeBodyGyroscopemeanY 
    *TimeBodyGyroscopemeanZ 
    *TimeBodyGyroscopestdX 
    *TimeBodyGyroscopestdY 
    *TimeBodyGyroscopestdZ 
    *TimeBodyGyroscopeJerkmeanX 
    *TimeBodyGyroscopeJerkmeanY 
    *TimeBodyGyroscopeJerkmeanZ 
    *TimeBodyGyroscopeJerkstdX 
    *TimeBodyGyroscopeJerkstdY 
    *TimeBodyGyroscopeJerkstdZ 
    *TimeBodyAccelerometerMagnitudemean 
    *TimeBodyAccelerometerMagnitudestd 
    *TimeGravityAccelerometerMagnitudemean 
    *TimeGravityAccelerometerMagnitudestd 
    *TimeBodyAccelerometerJerkMagnitudemean 
    *TimeBodyAccelerometerJerkMagnitudestd 
    *TimeBodyGyroscopeMagnitudemean 
    *TimeBodyGyroscopeMagnitudestd 
    *TimeBodyGyroscopeJerkMagnitudemean 
    *TimeBodyGyroscopeJerkMagnitudestd 
    *FrequencyBodyAccelerometermeanX 
    *FrequencyBodyAccelerometermeanY 
    *FrequencyBodyAccelerometermeanZ 
    *FrequencyBodyAccelerometerstdX 
    *FrequencyBodyAccelerometerstdY 
    *FrequencyBodyAccelerometerstdZ 
    *FrequencyBodyAccelerometerJerkmeanX 
    *FrequencyBodyAccelerometerJerkmeanY 
    *FrequencyBodyAccelerometerJerkmeanZ 
    *FrequencyBodyAccelerometerJerkstdX 
    *FrequencyBodyAccelerometerJerkstdY 
    *FrequencyBodyAccelerometerJerkstdZ 
    *FrequencyBodyGyroscopemeanX 
    *FrequencyBodyGyroscopemeanY 
    *FrequencyBodyGyroscopemeanZ 
    *FrequencyBodyGyroscopestdX 
    *FrequencyBodyGyroscopestdY 
    *FrequencyBodyGyroscopestdZ 
    *FrequencyBodyAccelerometerMagnitudemean 
    *FrequencyBodyAccelerometerMagnitudestd 
    *FrequencyBodyBodyAccelerometerJerkMagnitudemean 
    *FrequencyBodyBodyAccelerometerJerkMagnitudestd 
    *FrequencyBodyBodyGyroscopeMagnitudemean 
    *FrequencyBodyBodyGyroscopeMagnitudestd 
    *FrequencyBodyBodyGyroscopeJerkMagnitudemean 
    *FrequencyBodyBodyGyroscopeJerkMagnitudestd
    
###Structure of tidy data: str(tidydatafinal)

    Classes ‘grouped_df’, ‘tbl_df’, ‘tbl’ and 'data.frame':	180 obs. of  69 variables:
    $ subjectid                                      : int  1 1 1 1 1 1 2 2 2 2 ...
    $ activity_name                                  : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4     ...
    $ activity_number                                : num  6 4 5 1 3 2 6 4 5 1 ...
    $ TimeBodyAccelerometermeanX                     : num  0.222 0.261 0.279 0.277 0.289 ...
    



    
    




