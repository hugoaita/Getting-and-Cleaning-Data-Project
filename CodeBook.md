---
title: "CodeBook.md"
author: "Hugo Aita"
date: "1 de mayo de 2019"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# CodeBook for the tidy dataset
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
The data set that this code book apply is located in the `tidy_data.txt`. It is a text file, containing separated spaced values. The first row contains the names of the variables, which are described below, were the following rows contains the values of these variables.

## Variables
Each row contains, for a given subject and activity, 66 averaged signal measurements. The way these variables were measured are described in the Appendix.

### Identifiers
- `subject`

	Subject identifier, integer, ranges from 1 to 30.

- `activity`

	Activity identifier, string with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying
	
### Average measurements
All measurements are floating point values, normalized within [-1,1].

The measurements can be classified in two domains:

* Time domain signals, resulting from the Accelerometer and the Gyroscope raw signals
* Frequency-domain signals resulting from the application of a fast Fourier transform to the time-domain signals

To understand how the data was collected, see the Appendix.
#### Time-domain signals
* Average time domain acceleration in the X, Y and Z directions:
  * timeDomainBodyAcceleration-Mean-X                             
  * timeDomainBodyAcceleration-Mean-Y
  * timeDomainBodyAcceleration-Mean-Z  
* Standard deviation of time-domain body acceleration in the X, Y and Z directions:
  * timeDomainBodyAcceleration-StandardDeviation-X                
  * timeDomainBodyAcceleration-StandardDeviation-Y
  * timeDomainBodyAcceleration-StandardDeviation-Z
* Average time-domain gravity in the X, Y and Z directions:
  * timeDomainGravityAcceleration-Mean-X
  * timeDomainGravityAcceleration-Mean-Y
  * timeDomainGravityAcceleration-Mean-Z
* Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions
  * timeDomainGravityAcceleration-StandardDeviation-X
  * timeDomainGravityAcceleration-StandardDeviation-Y
  * timeDomainGravityAcceleration-StandardDeviation-Z
* Average time-domain body acceleration jerk in the X, Y and Z directions:
  * timeDomainBodyAccelerationJerk-Mean-X                         
  * timeDomainBodyAccelerationJerk-Mean-Y
 * timeDomainBodyAccelerationJerk-Mean-Z
* Standard deviation of the time-domain body acceleration jerk in the X, Y and Z directions:
  * timeDomainBodyAccelerationJerk-StandardDeviation-X
  * timeDomainBodyAccelerationJerk-StandardDeviation-Y            
  * timeDomainBodyAccelerationJerk-StandardDeviation-Z
* Average time-domain body angular velocity in the X, Y and Z directions:
  * timeDomainBodyGyroscope-Mean-X                                
  * timeDomainBodyGyroscope-Mean-Y
  * timeDomainBodyGyroscope-Mean-Z                                
* Standard deviation of the time-domain body angular velocity in the X, Y and Z directions
  * timeDomainBodyGyroscope-StandardDeviation-X
  * timeDomainBodyGyroscope-StandardDeviation-Y                   
  * timeDomainBodyGyroscope-StandardDeviation-Z
* Average time-domain body angular velocity jerk in the X, Y and Z directions:
  * timeDomainBodyGyroscopeJerk-Mean-X
  * timeDomainBodyGyroscopeJerk-Mean-Y                            
  * timeDomainBodyGyroscopeJerk-Mean-Z
* Standard deviation of the time-domain body acceleration jerk in the X, Y and Z directions
  * timeDomainBodyGyroscopeJerk-StandardDeviation-X
  * timeDomainBodyGyroscopeJerk-StandardDeviation-Y               
  * timeDomainBodyGyroscopeJerk-StandardDeviation-Z   
* Average of the time-domain magnitude of body acceleration
  * timeDomainBodyAccelerationMagnitude-Mean
* Standard deviation of the time-domain of body acceleration
  * timeDomainBodyAccelerationMagnitude-StandardDeviation         
* Average of time-domain magnitude of gravity acceleration
  * timeDomainGravityAccelerationMagnitude-Mean
* Standard deviation of time-domain magnitude of gravity acceleration
  * timeDomainGravityAccelerationMagnitude-StandardDeviation
* Average of time-domain magnitude of body acceleration jerk
  * timeDomainBodyAccelerationJerkMagnitude-Mean
* Standard deviation of time-domain magnitude of body acceleration jerk
  * timeDomainBodyAccelerationJerkMagnitude-StandardDeviation
* Average of time-domain magnitude of body angular velocity
  * timeDomainBodyGyroscopeMagnitude-Mean
* Standard deviation of time-domain magnitude of body angular velocity
  * timeDomainBodyGyroscopeMagnitude-StandardDeviation
* Average of time-domain magnitude of body angular velocity jerk
  * timeDomainBodyGyroscopeJerkMagnitude-Mean
* Standard deviation of time-domain magnitude of body angular velocity jerk
  * timeDomainBodyGyroscopeJerkMagnitude-StandardDeviation
  
#### Frequency domain signals
* Average frequency-domain body acceleration in the X, Y and Z directions:
  * frequencyDomainBodyAccelerometer-Mean-X                        
  * frequencyDomainBodyAccelerometer-Mean-Y
  * frequencyDomainBodyAccelerometer-Mean-Z                        
* Standard deviation of the frequency-domain acceleration in the X, Y and Z directions.
  * frequencyDomainBodyAccelerometer-StandardDeviation-X
  * frequencyDomainBodyAccelerometer-StandardDeviation-Y           
  * frequencyDomainBodyAccelerometer-StandardDeviation-Z   
* Average frequency-body acceleration jerk in the X, Y and Z directions:
  * frequencyDomainBodyAccelerometerJerk-Mean-X
  * frequencyDomainBodyAccelerometerJerk-Mean-Y                    
  * frequencyDomainBodyAccelerometerJerk-Mean-Z
* Standard deviation of the frequency-domain body acceleration jerk in the X, Y and Z directions:
  * frequencyDomainBodyAccelerometerJerk-StandardDeviation-X       
  * frequencyDomainBodyAccelerometerJerk-StandardDeviation-Y                     * frequencyDomainBodyAccelerometerJerk-StandardDeviation-Z       
* Average frequency-domain body angular velocity in X, Y and Z directions.
  * frequencyDomainBodyGyroscope-Mean-X
  * frequencyDomainBodyGyroscope-Mean-Y                           
  * frequencyDomainBodyGyroscope-Mean-Z
* Standard deviation frequency-domain body angular velocity in the X, Y and Z directions:
  * frequencyDomainBodyGyroscope-StandardDeviation-X
  * frequencyDomainBodyGyroscope-StandardDeviation-Y              
  * frequencyDomainBodyGyroscope-StandardDeviation-Z              
* Average and standard deviation of the frequency components of the frequency-domain magnitude of body acceleration:
  * frequencyDomainBodyAccelerometerMagnitude-Mean"                 
  * frequencyDomainBodyAccelerometerMagnitude-StandardDeviation"    
* Average and standard deviation of the frequency-domain magnitude of body acceleration jerk
  * frequencyDomainBodyAccelerometerJerkMagnitude-Mean"             
  * frequencyDomainBodyAccelerometerJerkMagnitude-StandardDeviation"
* Average and standard deviation of the frequency-domain magnitude of body angular velocity
  * frequencyDomainBodyGyroscopeMagnitude-Mean
  * frequencyDomainBodyGyroscopeMagnitude-StandardDeviation
* Average and standard deviation of frequency-domain magnitude of body angular velocity jerk.
  * frequencyDomainBodyGyroscopeJerkMagnitude-Mean
  * frequencyDomainBodyGyroscopeJerkMagnitude-StandardDeviation

## Creation of the file `tidy_data.txt`
1. The training and test sets were merged to create a new dataset.
2. The measurements from the mean and the standard deviation were extracted for each measurement, and the other were discarded.
3. The activity identifiers were replaced by descriptive activity names.
4. The variable names were replaced with descriptive names (e.g. tBodyAcc-mean-X was expanded to timeDomainBodyAccelerometerMean-X), using the rules
   * Special characters (i.e. ( , ) and -) were removed
   * The initial `t` and `f` were expanded to `timeDomain` and `frequencyDomain` respectively.
   * `Acc`, `Gyro`, `Mag`, `Freq`, `mean` and `std` were replaced by `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean` and `StandardDeviation` respectively.
   * Replaced incorrect `BodyBody` with `Body`.
5. From the data set in step 4, the final data set `tidy_data.txt` was created with the average of each activity and each data.
  
## Appendix
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the Accelerometer signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcceleration-XYZ
- tGravityAcceleration-XYZ
- tBodyAccelerationJerk-XYZ
- tBodyGyroscope-XYZ
- tBodyGyroscopeJerk-XYZ
- tBodyAccelerationMagnitude
- tGravityAccelerationMagnitude
- tBodyAccelerationJerkMagnitude
- tBodyGyroscopeMagnitude
- tBodyGyroscopeJerkMagnitude
- fBodyAcceleration-XYZ
- fBodyAccelerationJerk-XYZ
- fBodyGyroscope-XYZ
- fBodyAccelerationMagnitude
- fBodyAccelerationJerkMagnitude
- fBodyGyroscopeMagnitude
- fBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

The other estimations were not included in the data set.