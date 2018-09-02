# Code Book

generated 2018-08-31 22:25:30 during sourcing of `run_analysis.R`

## Actions performed on data:
* set dir `./getting and cleaning data`
* downloading zip file: [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) to `./data`
* extracting zip file: `./getting and cleaning data/UCI HAR Dataset.zip` to `./getting and cleaning data/UCI HAR Dataset`
* merging all *data_train* and *data_test* files into one dataset: `data_all`
* `data_all` loaded in memory, dimensions: 10299 x 563
* subsetted `data_all` into `data_sub` keeping only the key columns and features containing `std` or `mean`, dimensions : 10299 x 68
* name the activities in the `data_sub`
* appropriately labels the data set with descriptive variable names.
* writes data to `./getting and cleaning data` dir as the result file `tidy_data.txt`.

## `tidyData` variable




### key columns



Variable name       | Description

--------------------|------------

`subject`           | ID of subject
`activity`          | ID of activity



### non-key columns

Variable name       | Description

--------------------|------------

TimeDomain_BodyAccelerometer_Mean _X | the average value for this feature
TimeDomain_BodyAccelerometer_Mean _Y | the average value for this feature
TimeDomain_BodyAccelerometer_Mean _Z | the average value for this feature
TimeDomain_BodyAccelerometer_StandardDeviation _X | the average value for this feature
TimeDomain_BodyAccelerometer_StandardDeviation _Y | the average value for this feature
TimeDomain_BodyAccelerometer_StandardDeviation _Z | the average value for this feature
TimeDomain_GravityAccelerometer_Mean _X | the average value for this feature
TimeDomain_GravityAccelerometer_Mean _Y | the average value for this feature
TimeDomain_GravityAccelerometer_Mean _Z | the average value for this feature
TimeDomain_GravityAccelerometer_StandardDeviation _X | the average value for this feature
TimeDomain_GravityAccelerometer_StandardDeviation _Y | the average value for this feature
TimeDomain_GravityAccelerometer_StandardDeviation _Z | the average value for this feature
TimeDomain_BodyAccelerometerJerk_Mean _X | the average value for this feature
TimeDomain_BodyAccelerometerJerk_Mean _Y | the average value for this feature
TimeDomain_BodyAccelerometerJerk_Mean _Z | the average value for this feature
TimeDomain_BodyAccelerometerJerk_StandardDeviation _X | the average value for this feature
TimeDomain_BodyAccelerometerJerk_StandardDeviation _Y | the average value for this feature
TimeDomain_BodyAccelerometerJerk_StandardDeviation _Z | the average value for this feature
TimeDomain_BodyGyroscope_Mean _X | the average value for this feature
TimeDomain_BodyGyroscope_Mean _Y | the average value for this feature
TimeDomain_BodyGyroscope_Mean _Z | the average value for this feature
TimeDomain_BodyGyroscope_StandardDeviation _X | the average value for this feature
TimeDomain_BodyGyroscope_StandardDeviation _Y | the average value for this feature
TimeDomain_BodyGyroscope_StandardDeviation _Z | the average value for this feature
TimeDomain_BodyGyroscopeJerk_Mean _X | the average value for this feature
TimeDomain_BodyGyroscopeJerk_Mean _Y | the average value for this feature
TimeDomain_BodyGyroscopeJerk_Mean _Z | the average value for this feature
TimeDomain_BodyGyroscopeJerk_StandardDeviation _X | the average value for this feature
TimeDomain_BodyGyroscopeJerk_StandardDeviation _Y | the average value for this feature
TimeDomain_BodyGyroscopeJerk_StandardDeviation _Z | the average value for this feature
TimeDomain_BodyAccelerometerMagnitude_Mean  | the average value for this feature
TimeDomain_BodyAccelerometerMagnitude_StandardDeviation  | the average value for this feature
TimeDomain_GravityAccelerometerMagnitude_Mean  | the average value for this feature
TimeDomain_GravityAccelerometerMagnitude_StandardDeviation  | the average value for this feature
TimeDomain_BodyAccelerometerJerkMagnitude_Mean  | the average value for this feature
TimeDomain_BodyAccelerometerJerkMagnitude_StandardDeviation  | the average value for this feature
TimeDomain_BodyGyroscopeMagnitude_Mean  | the average value for this feature
TimeDomain_BodyGyroscopeMagnitude_StandardDeviation  | the average value for this feature
TimeDomain_BodyGyroscopeJerkMagnitude_Mean  | the average value for this feature
TimeDomain_BodyGyroscopeJerkMagnitude_StandardDeviation  | the average value for this feature
FrequencyDomain_BodyAccelerometer_Mean _X | the average value for this feature
FrequencyDomain_BodyAccelerometer_Mean _Y | the average value for this feature
FrequencyDomain_BodyAccelerometer_Mean _Z | the average value for this feature
FrequencyDomain_BodyAccelerometer_StandardDeviation _X | the average value for this feature
FrequencyDomain_BodyAccelerometer_StandardDeviation _Y | the average value for this feature
FrequencyDomain_BodyAccelerometer_StandardDeviation _Z | the average value for this feature
FrequencyDomain_BodyAccelerometer_MeanFreq _X | the average value for this feature
FrequencyDomain_BodyAccelerometer_MeanFreq _Y | the average value for this feature
FrequencyDomain_BodyAccelerometer_MeanFreq _Z | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_Mean _X | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_Mean _Y | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_Mean _Z | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_StandardDeviation _X | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_StandardDeviation _Y | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_StandardDeviation _Z | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_MeanFreq _X | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_MeanFreq _Y | the average value for this feature
FrequencyDomain_BodyAccelerometerJerk_MeanFreq _Z | the average value for this feature
FrequencyDomain_BodyGyroscope_Mean _X | the average value for this feature
FrequencyDomain_BodyGyroscope_Mean _Y | the average value for this feature
FrequencyDomain_BodyGyroscope_Mean _Z | the average value for this feature
FrequencyDomain_BodyGyroscope_StandardDeviation _X | the average value for this feature
FrequencyDomain_BodyGyroscope_StandardDeviation _Y | the average value for this feature
FrequencyDomain_BodyGyroscope_StandardDeviation _Z | the average value for this feature
FrequencyDomain_BodyGyroscope_MeanFreq _X | the average value for this feature
FrequencyDomain_BodyGyroscope_MeanFreq _Y | the average value for this feature
FrequencyDomain_BodyGyroscope_MeanFreq _Z | the average value for this feature
FrequencyDomain_BodyAccelerometerMagnitude_Mean  | the average value for this feature
FrequencyDomain_BodyAccelerometerMagnitude_StandardDeviation  | the average value for this feature
FrequencyDomain_BodyAccelerometerMagnitude_MeanFreq  | the average value for this feature
FrequencyDomain_BodyBodyAccelerometerJerkMagnitude_Mean  | the average value for this feature
FrequencyDomain_BodyBodyAccelerometerJerkMagnitude_StandardDeviation  | the average value for this feature
FrequencyDomain_BodyBodyAccelerometerJerkMagnitude_MeanFreq  | the average value for this feature
FrequencyDomain_BodyBodyGyroscopeMagnitude_Mean  | the average value for this feature
FrequencyDomain_BodyBodyGyroscopeMagnitude_StandardDeviation  | the average value for this feature
FrequencyDomain_BodyBodyGyroscopeMagnitude_MeanFreq  | the average value for this feature
FrequencyDomain_BodyBodyGyroscopeJerkMagnitude_Mean  | the average value for this feature
FrequencyDomain_BodyBodyGyroscopeJerkMagnitude_StandardDeviation | the average value for this feature 
FrequencyDomain_BodyBodyGyroscopeJerkMagnitude_MeanFreq  | the average value for this feature
