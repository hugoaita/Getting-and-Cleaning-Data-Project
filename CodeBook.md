# CodeBook for the tidy dataset
This dataset is derived from the 'Human Activity Recognition Using Smartphones Data Set' which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
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
* timeDomainBodyAccelerometer-Mean-X                             
* timeDomainBodyAccelerometer-Mean-Y
* timeDomainBodyAccelerometer-Mean-Z  
* timeDomainBodyAccelerometer-StandardDeviation-X                
* timeDomainBodyAccelerometer-StandardDeviation-Y
* timeDomainBodyAccelerometer-StandardDeviation-Z
* timeDomainGravityAccelerometer-Mean-X
* timeDomainGravityAccelerometer-Mean-Y
* timeDomainGravityAccelerometer-Mean-Z
* timeDomainGravityAccelerometer-StandardDeviation-X
* timeDomainGravityAccelerometer-StandardDeviation-Y
* timeDomainGravityAccelerometer-StandardDeviation-Z
* timeDomainBodyAccelerometerJerk-Mean-X                         
* timeDomainBodyAccelerometerJerk-Mean-Y
* timeDomainBodyAccelerometerJerk-Mean-Z
* timeDomainBodyAccelerometerJerk-StandardDeviation-X
* timeDomainBodyAccelerometerJerk-StandardDeviation-Y            
* timeDomainBodyAccelerometerJerk-StandardDeviation-Z
* timeDomainBodyGyroscope-Mean-X                                
* timeDomainBodyGyroscope-Mean-Y
* timeDomainBodyGyroscope-Mean-Z                                
* timeDomainBodyGyroscope-StandardDeviation-X
* timeDomainBodyGyroscope-StandardDeviation-Y                   
* timeDomainBodyGyroscope-StandardDeviation-Z
* timeDomainBodyGyroscopeJerk-Mean-X
* timeDomainBodyGyroscopeJerk-Mean-Y                            
* timeDomainBodyGyroscopeJerk-Mean-Z
* timeDomainBodyGyroscopeJerk-StandardDeviation-X
* timeDomainBodyGyroscopeJerk-StandardDeviation-Y               
* timeDomainBodyGyroscopeJerk-StandardDeviation-Z   
* timeDomainBodyAccelerometerMagnitude-Mean
* timeDomainBodyAccelerometerMagnitude-StandardDeviation         
* timeDomainGravityAccelerometerMagnitude-Mean
* timeDomainGravityAccelerometerMagnitude-StandardDeviation
* timeDomainBodyAccelerometerJerkMagnitude-Mean
* timeDomainBodyAccelerometerJerkMagnitude-StandardDeviation
* timeDomainBodyGyroscopeMagnitude-Mean
* timeDomainBodyGyroscopeMagnitude-StandardDeviation
* timeDomainBodyGyroscopeJerkMagnitude-Mean
* timeDomainBodyGyroscopeJerkMagnitude-StandardDeviation
#### Frequency domain signals
* frequencyDomainBodyAccelerometer-Mean-X                        
* frequencyDomainBodyAccelerometer-Mean-Y
* frequencyDomainBodyAccelerometer-Mean-Z                        
* frequencyDomainBodyAccelerometer-StandardDeviation-X
* frequencyDomainBodyAccelerometer-StandardDeviation-Y           
* frequencyDomainBodyAccelerometer-StandardDeviation-Z   
* frequencyDomainBodyAccelerometerJerk-Mean-X
* frequencyDomainBodyAccelerometerJerk-Mean-Y                    
* frequencyDomainBodyAccelerometerJerk-Mean-Z
* frequencyDomainBodyAccelerometerJerk-StandardDeviation-X       
* frequencyDomainBodyAccelerometerJerk-StandardDeviation-Y                    * frequencyDomainBodyAccelerometerJerk-StandardDeviation-Z       
* frequencyDomainBodyGyroscope-Mean-X
* frequencyDomainBodyGyroscope-Mean-Y                           
* frequencyDomainBodyGyroscope-Mean-Z
* frequencyDomainBodyGyroscope-StandardDeviation-X
* frequencyDomainBodyGyroscope-StandardDeviation-Y              
* frequencyDomainBodyGyroscope-StandardDeviation-Z              
* frequencyDomainBodyAccelerometerMagnitude-Mean                 
* frequencyDomainBodyAccelerometerMagnitude-StandardDeviation    
* frequencyDomainBodyAccelerometerJerkMagnitude-Mean             
* frequencyDomainBodyAccelerometerJerkMagnitude-StandardDeviation
* frequencyDomainBodyGyroscopeMagnitude-Mean
* frequencyDomainBodyGyroscopeMagnitude-StandardDeviation
* frequencyDomainBodyGyroscopeJerkMagnitude-Mean
* frequencyDomainBodyGyroscopeJerkMagnitude-StandardDeviation

## Creation of the file `tidy_data.txt`
1. The training and test sets were merged to create a new dataset.
2. The names of this new dataset was set using the variables in the file `features.txt`.
3. The measurements from the mean and the standard deviation were extracted for each measurement, and the other were discarded, as the ones containing `MeanFreq`.
4. The activity identifiers were replaced by descriptive activity names, i.e, 
1, 2, 3, 4, 5, 6 by WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, ,STANDING, and LAYING.
5. The variable names were replaced with descriptive names (e.g. tBodyAcc-mean-X was expanded to timeDomainBodyAccelerometerMean-X), using the rules:
   * Special characters (i.e. ( , ) and -) were removed
   * The initial `t` and `f` were expanded to `timeDomain` and `frequencyDomain` respectively.
   * `Acc`, `Gyro`, `Mag`, `Freq`, `mean` and `std` were replaced by `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean` and `StandardDeviation` respectively.
   * Replaced incorrect `BodyBody` with `Body`.
6. The data set `tidy_data.txt` is a data set of 181 rows and 68 columns. The first row of the file contains the names of the data set: the first two columns are just **subject** and **activity**, and the other 66 are the variables we described in the previous section. To obtain the data set we averaged over each activity and each data.

## Appendix
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational
 and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

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