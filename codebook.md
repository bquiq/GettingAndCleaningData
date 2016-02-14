# Code book
This file gives information about the tidy data set and the way raw data were collected (study design). Further information about the study can be found in the documentation of the raw data (see README.md)

## Study design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

All measurement were normalized and bounded within the range [-1,1]. The unit used for acceleration features is "g" and "rad/seg" for gyroscope features.

## Tidy dataset
The tidy dataset contains data from the raw dataset aggregated by subjectID and activity. The mean was used to summarize each measurement.

## Features description
activity | Description 
--- | ---
|**activity** | Type of activiy. Nominal. Values: WALKING; WALKING_UPSTAIRS; WALKING_DOWNSTAIRS; SITTING; STANDING; LAYING
**subjectID** : Subject identifier. Nominal. Values: [1-30]
**Time_BodyAcceleration_Mean_X** : Measurement
**Time_BodyAcceleration_Mean_Y** : Measurement
**Time_BodyAcceleration_Mean_Z** : Measurement
**Time_BodyAcceleration_STD_X** : Measurement
**Time_BodyAcceleration_STD_Y** : Measurement
**Time_BodyAcceleration_STD_Z** : Measurement
**Time_GravityAcceleration_Mean_X** : Measurement
**Time_GravityAcceleration_Mean_Y** : Measurement
**Time_GravityAcceleration_Mean_Z** : Measurement
**Time_GravityAcceleration_STD_X** : Measurement
**Time_GravityAcceleration_STD_Y** : Measurement
**Time_GravityAcceleration_STD_Z** : Measurement
**Time_BodyAccelerationJerk_Mean_X** : Measurement
**Time_BodyAccelerationJerk_Mean_Y** : Measurement
**Time_BodyAccelerationJerk_Mean_Z** : Measurement
**Time_BodyAccelerationJerk_STD_X** : Measurement
**Time_BodyAccelerationJerk_STD_Y** : Measurement
**Time_BodyAccelerationJerk_STD_Z** : Measurement
**Time_BodyGyroscope_Mean_X** : Measurement
**Time_BodyGyroscope_Mean_Y** : Measurement
**Time_BodyGyroscope_Mean_Z** : Measurement
**Time_BodyGyroscope_STD_X** : Measurement
**Time_BodyGyroscope_STD_Y** : Measurement
**Time_BodyGyroscope_STD_Z** : Measurement
**Time_BodyGyroscopeJerk_Mean_X** : Measurement
**Time_BodyGyroscopeJerk_Mean_Y** : Measurement
**Time_BodyGyroscopeJerk_Mean_Z** : Measurement
**Time_BodyGyroscopeJerk_STD_X** : Measurement
**Time_BodyGyroscopeJerk_STD_Y** : Measurement
**Time_BodyGyroscopeJerk_STD_Z** : Measurement
**Time_BodyAccelerationMagnitude_Mean** : Measurement
**Time_BodyAccelerationMagnitude_STD** : Measurement
**Time_GravityAccelerationMagnitude_Mean** : Measurement
**Time_GravityAccelerationMagnitude_STD** : Measurement
**Time_BodyAccelerationJerkMagnitude_Mean** : Measurement
**Time_BodyAccelerationJerkMagnitude_STD** : Measurement
**Time_BodyGyroscopeMagnitude_Mean** : Measurement
**Time_BodyGyroscopeMagnitude_STD** : Measurement
**Time_BodyGyroscopeJerkMagnitude_Mean** : Measurement
**Time_BodyGyroscopeJerkMagnitude_STD** : Measurement
**FastFourierTransform_BodyAcceleration_Mean_X** : Measurement
**FastFourierTransform_BodyAcceleration_Mean_Y** : Measurement
**FastFourierTransform_BodyAcceleration_Mean_Z** : Measurement
**FastFourierTransform_BodyAcceleration_STD_X** : Measurement
**FastFourierTransform_BodyAcceleration_STD_Y** : Measurement
**FastFourierTransform_BodyAcceleration_STD_Z** : Measurement
**FastFourierTransform_BodyAccelerationJerk_Mean_X** : Measurement
**FastFourierTransform_BodyAccelerationJerk_Mean_Y** : Measurement
**FastFourierTransform_BodyAccelerationJerk_Mean_Z** : Measurement
**FastFourierTransform_BodyAccelerationJerk_STD_X** : Measurement
**FastFourierTransform_BodyAccelerationJerk_STD_Y** : Measurement
**FastFourierTransform_BodyAccelerationJerk_STD_Z** : Measurement
**FastFourierTransform_BodyGyroscope_Mean_X** : Measurement
**FastFourierTransform_BodyGyroscope_Mean_Y** : Measurement
**FastFourierTransform_BodyGyroscope_Mean_Z** : Measurement
**FastFourierTransform_BodyGyroscope_STD_X** : Measurement
**FastFourierTransform_BodyGyroscope_STD_Y** : Measurement
**FastFourierTransform_BodyGyroscope_STD_Z** : Measurement
**FastFourierTransform_BodyAccelerationMagnitude_Mean** : Measurement
**FastFourierTransform_BodyAccelerationMagnitude_STD** : Measurement
**FastFourierTransform_BodyBodyAccelerationJerkMagnitude_Mean** : Measurement
**FastFourierTransform_BodyBodyAccelerationJerkMagnitude_STD** : Measurement
**FastFourierTransform_BodyBodyGyroscopeMagnitude_Mean** : Measurement
**FastFourierTransform_BodyBodyGyroscopeMagnitude_STD** : Measurement
**FastFourierTransform_BodyBodyGyroscopeJerkMagnitude_Mean** : Measurement
**FastFourierTransform_BodyBodyGyroscopeJerkMagnitude_STD** : Measurement
