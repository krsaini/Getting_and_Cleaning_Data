Coursera's Getting & Cleaning Data Project
=====================================
 https://www.coursera.org/course/getdata

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. We will be required to submit:
*1) a tidy data set, 
*2) a link to a Github repository with your script for performing the analysis, and 
*3) a code book CodeBook.md that describes the variables, the data, and any transformations or work that is performed to clean up the data.
We should also include a README.md in the repo with the scripts. This repo explains how all of the scripts work and how they are connected.

>Here are the data for the project: 



>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 



R script called run_analysis.R that does the following. 

* Merges the training and the test sets to create one data set.

* Extracts only the measurements on the mean and standard deviation for each measurement. 

* Uses descriptive activity names to name the activities in the data set

* Appropriately labels the data set with descriptive variable names.
* Creates a second, independent tidy data set with the average of each variable for each activity and each subject.


##Executing

###set working dir
*Script creates a relative `./getting and cleaning data` dir in which it downloads the .zip, extracts it and writes the result file `tidy_data.txt`.
###run run_analysis.R
* Read data and convert into *data frame*.
* Merging the training and test set into *data_all*.
* Extract only the measurements on the mean and standard deviation for each measurement.
* Appropriately labels the data set with descriptive variable names.
* writes data to `./getting and cleaning data` dir.
