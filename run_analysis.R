library(dplyr)


# Check if we have the dataset
filename <- "getdata_dataset.zip"
# If we don't have the dataset, download it
if(!file.exists(filename)) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(fileUrl, filename, method = "curl")
}
# Uncompress the dataset
if(!file.exists("UCI HAR Dataset")) {
  unzip(filename)
}
## Load the datasets
path <- "UCI HAR Dataset"

# Load train data set

train_x <- read.table(file.path(path, 'train', 'X_train.txt'))

# Load train subjects  
train_sub <- read.table(file.path(path, 'train', 'subject_train.txt'))

# Load train activities
train_y <- read.table(file.path(path, 'train', 'y_train.txt'))
                 
# Load test data sets
test_x <- read.table(file.path(path, 'test', 'X_test.txt'), 
                     nrows=2947, comment.char = "")
# Load test subjects
test_sub <- read.table(file.path(path, 'test', 'subject_test.txt'))
                  
# Load test activities
test_y <- read.table(file.path(path, 'test', 'y_test.txt'))

# Load list of all features 
features <- read.table(file.path(path, "", "features.txt"), 
                                                       as.is=TRUE) 

## Load Activity labels: 1: WALKING, 2: WALKING_UPSTAIRS, 
## 3: WALKING_DOWNSTAIRS,  ## 
## 4: SITTING, 5: STANDING, 6: LAYING                                        ##
activities <- read.table(file.path(path, "", "activity_labels.txt")) 
colnames(activities) <- c("Id", "activityLabel")
## Merges the training and test datasets
######################################## 
## First merges by columns and by rows
## after that

data <- rbind(
  cbind(train_sub, train_x, train_y),
  cbind(test_sub, test_x, test_y))



## Asign names to the datasets
## Remember that the number of columns of train_x is the same
## as the number of rows of features and the features are in
## the second column
colnames(data) <- c("subject", features[,2], "activity")
 

## Extract only the measurements of the mean and the standard deviation
## for each measurement
colsToKeep <- grepl("subject|activity|mean|std", colnames(data)) &!
              grepl("meanFreq", colnames(data))
               

data <- subset(data, select=colsToKeep)

# Uses descriptively names 
data$activity <- factor(data$activity, levels=activities[,1], labels=activities[,2])

# Label the dataset with descriptive variable names
names(data) <- gsub("\\(\\)", "", names(data))
names(data) <- gsub("mean", "Mean", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("^t", "timeDomain", names(data))
names(data) <- gsub("^f", "frequencyDomain", names(data))
names(data) <- gsub("std", "StandardDeviation", names(data))

names(data) <- gsub("BodyBody", "Body", names(data))
print(names(data))
# Create tidy data set
summary <- data %>% 
  group_by(subject, activity)
 summary <- summary %>%  summarize_each(funs(mean))  
 print(names(summary))  

write.table(summary, file = "tidy_data.txt", row.names = FALSE, quote=FALSE)
#print(summary)

