# Summary
One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/) . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. 

In this project, data collected from the accelerometer and gyroscope of the Samsung Galaxy S was retrieved, worked with, and cleaned to prepare a tidy data set that can be used for later analysis.

This repository contains the following files:
- README.md, this file that provides an overview of the data set and how it was created
- summarized_data.txt, which contains the tidy data set
- CodeBook.md, the code book, which describes the contents of the data set
- run_analysis.R, the R script that was used to create the data set

## Description of the original data set
The first step of the script `run_analysis.R` is to download the data set, if it does not exist. After unziping the file we are found with the following files:
<ul>
<li> `./UCI HAR DATASET` </li>
<li> `./UCI HAR DATASET/README.txt`: Explanation of the project. </li>
<li> `./UCI HAR DATASET/features.txt`: Two column file, the first is an integer and the second a string describing the feature. </li>
<li> `./UCI HAR DATASET/features_info.txt`: File explaining the features. </li>
<li> `./UCI HAR DATASET/activity_labels.txt`: Associates numbers with activities. </li>
<ul>
<li>  1   WALKING </li>
<li>  2   WALKING_UPSTAIRS </li>
<li>  3   WALKING_DOWNSTAIRS </li>
<li>  4   SITTING </li>
<li>  5   STANDING </li>
<li>  6   LAYING </li>
</ul>
<li> `./UCI HAR DATASET/train/subject_train.txt`: List of the train subjects. There are 30 train subject, so in this file we have an integer from 1 to 30. It has 7352 rows. </li>
<li> `./UCI HAR DATASET/train/X_train.txt`: Data set of 7352 rows and 561 columns. It is normalized to [-1, 1]. </li>
<li> `./UCI HAR DATASET/train/y_train.txt`: Data set of 1 column and 7352 rows that describes the activities (numbers from 1 to 6). </li>
<li> `./UCI HAR DATASET/test/subject_test.txt`: List of the train subjects. There are 30 train subject, so in this file we have an integer from 1 to 30. It has 2947 rows. </li>
<li> `./UCI HAR DATASET/test/X_test.txt`: Data set of 2947 rows and 561 columns. It is normalized to [-1,1] </li>
<li> `./UCI HAR DATASET/test/y_test.txt`: Data set of 1 column and 2947 rows that describes the activities (numbers from 1 to 6). </li>
<li> `./UCI HAR DATASET/train/Inertial Signals`: Raw experiment signals.</li>
<li> `./UCI HAR DATASET/test/Inertial Signals`: Raw experiment signals</li>
</ul>
## Creating the data set
The R script run_analysis.R can be used to create the data set. It retrieves the source data and transform it to produce the final data set by implementing the following steps.

1. Download and extract the data if it does not exist.
2. Read data. 
3. Merge train and the test set to create one data set: first it merges the data sets X_train.txt, subject_test.txt and y_train.txt to obtain a data set of (7352, 563). We do the same with X_test.txt, subject_test.txt and y_test.txt to obtain a data set of (2947, 563). After that, we merge this two data sets to obtain one of (10299, 563).
4. As we said before, the file `features.txt` contains the respective measurement, i.e, the name of each column of the data set. So to this dataframe, we assign to the columns the names **subject**, the 561 features taken from this file, and **activity**.
5. Extract the measurements of the mean and the standard deviation for each measurement.
6. Use descriptive activity names to name the activities in the data set. This 
means replacing 1, 2, 3... by WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, etc.
7. Appropiately label the data set with descriptive variable names. This involves for instance replacing 'Acc' by 'Acceleration', 'Gyro' by 'Gyroscope', and so on.
8. Create a second independent tidy data set with the average of each variable for each activity and each subject.
8. Write the tidy data set to the file "tidy_data.txt" file.

The scripts depends on the library dplyr. We used version 0.8.0.1.

The summarized_data.txt in this repository was created by running run_analysis.R script using R version 3.5.3 (2019-03-11) on Ubuntu 18.10 OS.

