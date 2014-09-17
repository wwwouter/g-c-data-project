Original dataset downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Full description here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

These steps were taken to create the new dataset:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The new dataset contains the variables subjectId, activityId, activityName and a set of features.

subjectId (integer): Id of the subject (1-30)
activityId (integer): Id of het activity (1-6)
activityName (string): Name of the activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)


This is the description taken from the original codebook (features_info.txt):

*The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.*

*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).* 

*Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).*

*These signals were used to estimate variables of the feature vector for each pattern: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.*

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

*The set of variables that were estimated from these signals are:*

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.


In the new dataset, only the variables created by using the mean() and std() functions are used.

For each variable, the mean is calculated for the combination of a subject and an activity. The result numeric value.

The names of the variables start with "meanOf", then "Time"" or "Fft"" (old "t" and "f") and then the orignal name, with the non alphabetic characters removed.

meanOfTimeBodyAccMeanX
meanOfTimeBodyAccMeanY
meanOfTimeBodyAccMeanZ
meanOfTimeGravityAccMeanX
meanOfTimeGravityAccMeanY
meanOfTimeGravityAccMeanZ
meanOfTimeBodyAccJerkMeanX
meanOfTimeBodyAccJerkMeanY
meanOfTimeBodyAccJerkMeanZ
meanOfTimeBodyGyroMeanX
meanOfTimeBodyGyroMeanY
meanOfTimeBodyGyroMeanZ
meanOfTimeBodyGyroJerkMeanX
meanOfTimeBodyGyroJerkMeanY
meanOfTimeBodyGyroJerkMeanZ
meanOfTimeBodyAccMagMean
meanOfTimeGravityAccMagMean
meanOfTimeBodyAccJerkMagMean
meanOfTimeBodyGyroMagMean
meanOfTimeBodyGyroJerkMagMean
meanOfFftBodyAccMeanX
meanOfFftBodyAccMeanY
meanOfFftBodyAccMeanZ
meanOfFftBodyAccJerkMeanX
meanOfFftBodyAccJerkMeanY
meanOfFftBodyAccJerkMeanZ
meanOfFftBodyGyroMeanX
meanOfFftBodyGyroMeanY
meanOfFftBodyGyroMeanZ
meanOfFftBodyAccMagMean
meanOfFftBodyAccJerkMagMean
meanOfFftBodyGyroMagMean
meanOfFftBodyGyroJerkMagMean
meanOfTimeBodyAccStdX
meanOfTimeBodyAccStdY
meanOfTimeBodyAccStdZ
meanOfTimeGravityAccStdX
meanOfTimeGravityAccStdY
meanOfTimeGravityAccStdZ
meanOfTimeBodyAccJerkStdX
meanOfTimeBodyAccJerkStdY
meanOfTimeBodyAccJerkStdZ
meanOfTimeBodyGyroStdX
meanOfTimeBodyGyroStdY
meanOfTimeBodyGyroStdZ
meanOfTimeBodyGyroJerkStdX
meanOfTimeBodyGyroJerkStdY
meanOfTimeBodyGyroJerkStdZ
meanOfTimeBodyAccMagStd
meanOfTimeGravityAccMagStd
meanOfTimeBodyAccJerkMagStd
meanOfTimeBodyGyroMagStd
meanOfTimeBodyGyroJerkMagStd
meanOfFftBodyAccStdX
meanOfFftBodyAccStdY
meanOfFftBodyAccStdZ
meanOfFftBodyAccJerkStdX
meanOfFftBodyAccJerkStdY
meanOfFftBodyAccJerkStdZ
meanOfFftBodyGyroStdX
meanOfFftBodyGyroStdY
meanOfFftBodyGyroStdZ
meanOfFftBodyAccMagStd
meanOfFftBodyAccJerkMagStd
meanOfFftBodyGyroMagStd
meanOfFftBodyGyroJerkMagStd




