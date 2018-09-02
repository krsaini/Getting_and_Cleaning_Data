## getting file from url.

### Download/Open Data.

setwd("C:/Users/Vivek/Desktop/data Science/getting and cleaning data")

    fileurl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
    if (!file.exists('./getdata_projectfiles_UCI HAR Dataset.zip')){
        download.file(fileurl,'./getdata_projectfiles_UCI HAR Dataset.zip',mode = "wb")
        unzip("getdata_projectfiles_UCI HAR Dataset.zip", exdir = getwd)
    }
    
# Read and convert data.
    
    features <- read.csv('./UCI HAR Dataset/features.txt', header = FALSE, sep = " ")
    features <- as.character(features[,2])
    
    # training data
    data_train_x  <- read.table('./UCI HAR Dataset/train/X_train.txt')
    data_train_y  <- read.csv('./UCI HAR Dataset/train/y_train.txt', header = FALSE, sep = ' ')
    data_train_subject <- read.csv('./UCI HAR Dataset/train/subject_train.txt',header = FALSE, sep = ' ')
    
    data_train <- data.frame(data_train_subject,data_train_y,data_train_x)
    names(data_train) <- c(c("subject","activity"),features)
    
    # test data
    data_test_x  <- read.table('./UCI HAR Dataset/test/X_test.txt')
    data_test_y  <- read.csv('./UCI HAR Dataset/test/y_test.txt', header = FALSE, sep = ' ')
    data_test_subject <- read.csv('./UCI HAR Dataset/test/subject_test.txt', header = FALSE, sep = ' ')
    
    data_test  <- data.frame(data_test_subject,data_test_y,data_test_x)
    names(data_test) <- c(c("subject","activity"),features)
    
# 1. Merging the training and test set into one.
    
    data_all <- rbind(data_train,data_test)
    
# 2. Extract only the measurements on the mean and standard deviation for each measurement.
    
    mean_std_extract <- grep("mean|std",features)
    data_sub <- data_all[ , c(1,2,mean_std_extract+2)]
    
# 3. Descriptive activity names to name the activities in the data set
    
    activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
    activity_labels <- as.character(activity_labels[ ,2])
    data_sub$activity <- activity_labels[data_sub$activity]
    
# 4. Appropriately labels the data set with descriptive variable names.
    
    name_new <- names(data_sub)
    name_new <- gsub("[(][)]"," ",name_new)
    name_new <- gsub("^t", "TimeDomain_", name_new)
    name_new <- gsub("^f", "FrequencyDomain_", name_new)
    name_new <- gsub("Acc", "Accelerometer", name_new)
    name_new <- gsub("Gyro", "Gyroscope", name_new)
    name_new <- gsub("Mag", "Magnitude", name_new)
    name_new <- gsub("-mean", "_Mean", name_new)
    name_new <- gsub("-std", "_StandardDeviation", name_new)
    name_new <- gsub("-", "_", name_new)
    names(data_sub) <- name_new
    
# 5. Tidy data as output as data_tidy.txt file
    
    data_tidy <- aggregate(data_sub[,3:81], by = list(activity = data_sub$activity, subject = data_sub$subject),FUN = mean)
    write.table(x = data_tidy, file = "data_tidy.txt", row.names = FALSE)