
The dataset includes the following files:

‘README.txt’

‘features_info.txt’: Shows information about the variables used on the feature vector.

‘features.txt’: List of all features.

‘activity_labels.txt’: Links the class labels with their activity name.

‘train/X_train.txt’: Training set.

‘train/y_train.txt’: Training labels.

‘test/X_test.txt’: Test set.

‘test/y_test.txt’: Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

‘train/subject_train.txt’: Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

‘train/Inertial Signals/total_acc_x_train.txt’: The acceleration signal from the smartphone accelerometer X axis in standard gravity units ‘g’. Every row shows a 128 element vector. The same description applies for the ‘total_acc_x_train.txt’ and ‘total_acc_z_train.txt’ files for the Y and Z axis.

‘train/Inertial Signals/body_acc_x_train.txt’: The body acceleration signal obtained by subtracting the gravity from the total acceleration.

‘train/Inertial Signals/body_gyro_x_train.txt’: The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. Transformations and work performed to clean up the data 

========================================= 

Following changes have been made: 1.Data set has been cleaned to only take the mean and std values included in the data sets
The activity label has been matched with the activity ID number included in the data sets
A new data set was created with only the mean and std (‘tidy_data.txt’)
A tidy data set was created that averaged each variable (’tidy_mean_data.txt)

========================================= 

-Variables in ‘tidy_mean_data.txt’ file:

Subject The ID of the subject (1…30). 
Activity.ID ID of the activity performed (1…6) 
Activity.Label Name of the activity peformed.

Following variables are described below: 

tBodyAcc-mean()-X tBodyAcc-mean()-Y 

tBodyAcc-mean()-Z 

tBodyAcc-std()-X 

tBodyAcc-std()-Y 

tBodyAcc-std()-Z 

tGravityAcc-mean()-X 

tGravityAcc-mean()-Y 

tGravityAcc-mean()-Z 

tGravityAcc-std()-X 

tGravityAcc-std()-Y 

tGravityAcc-std()-Z 

tBodyAccJerk-mean()-X 

tBodyAccJerk-mean()-Y 

tBodyAccJerk-mean()-Z 

tBodyAccJerk-std()-X 

tBodyAccJerk-std()-Y 

tBodyAccJerk-std()-Z 

tBodyGyro-mean()-X 

tBodyGyro-mean()-Y 

tBodyGyro-mean()-Z 

tBodyGyro-std()-X 

tBodyGyro-std()-Y 

tBodyGyro-std()-Z 

tBodyGyroJerk-mean()-X 

tBodyGyroJerk-mean()-Y 

tBodyGyroJerk-mean()-Z 

tBodyGyroJerk-std()-X 

tBodyGyroJerk-std()-Y 

tBodyGyroJerk-std()-Z 

tBodyAccMag-mean() 

tBodyAccMag-std() 

tGravityAccMag-mean() 

tGravityAccMag-std() 

tBodyAccJerkMag-mean() 

tBodyAccJerkMag-std() 

tBodyGyroMag-mean() 

tBodyGyroMag-std() 

tBodyGyroJerkMag-mean() 

tBodyGyroJerkMag-std() 

fBodyAcc-mean()-X 

fBodyAcc-mean()-Y 

fBodyAcc-mean()-Z 

fBodyAcc-std()-X 

fBodyAcc-std()-Y 

fBodyAcc-std()-Z 

fBodyAcc-meanFreq()-X 

fBodyAcc-meanFreq()-Y 

fBodyAcc-meanFreq()-Z 

fBodyAccJerk-mean()-X 

fBodyAccJerk-mean()-Y 

fBodyAccJerk-mean()-Z 

fBodyAccJerk-std()-X 

fBodyAccJerk-std()-Y 

fBodyAccJerk-std()-Z 

fBodyAccJerk-meanFreq()-X 

fBodyAccJerk-meanFreq()-Y 

fBodyAccJerk-meanFreq()-Z 

fBodyGyro-mean()-X 

fBodyGyro-mean()-Y 

fBodyGyro-mean()-Z 

fBodyGyro-std()-X 

fBodyGyro-std()-Y 

fBodyGyro-std()-Z 

fBodyGyro-meanFreq()-X 

fBodyGyro-meanFreq()-Y 

fBodyGyro-meanFreq()-Z 

fBodyAccMag-mean() 

fBodyAccMag-std() 

fBodyAccMag-meanFreq() 

fBodyBodyAccJerkMag-mean() 

fBodyBodyAccJerkMag-std() 

fBodyBodyAccJerkMag-meanFreq() 

fBodyBodyGyroMag-mean() 

fBodyBodyGyroMag-std() 

fBodyBodyGyroMag-meanFreq() 

fBodyBodyGyroJerkMag-mean() 

fBodyBodyGyroJerkMag-std() 

fBodyBodyGyroJerkMag-meanFreq() 

ag-std() 

fBodyBodyGyroJerkMag-meanFreq()

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix ‘t’ to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern: ‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions.

tbodyacc-xyz

tgravityacc-xyz

tbodyaccjerk-xyz

tbodygyro-xyz

tbodygyrojerk-xyz

tbodyaccmag

tgravityaccmag

tbodyaccjerkmag

tbodygyromag

tbodygyrojerkmag

fbodyacc-xyz

fbodyaccjerk-xyz

fbodygyro-xyz

fbodyaccmag

fbodyaccjerkmag

fbodygyromag

fbodygyrojerkmag

The set of variables that were estimated from data are:

mean: Mean value

std: Standard deviation

Transformation

All the values are means, aggregated over 30 subjects and 6 activities.

========================================= 

-Variables in ‘tidy_data.txt’ file:

Subject The ID of the subject (1…30). 

Activity.ID ID of the activity performed (1…6) 

Activity.Label Name of the activity peformed. 

Variable variable corresponding to signals (look ‘tidy_mean_data.txt’ variables description ) value value of the variable
