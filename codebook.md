# Code book

## Study design
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Code book (list of variables)

var | units | description
--- | --- | ---
subjectID | nominal | Subject identifier. Values: [1-30]
Time_BodyAcceleration_Mean_X | g | Mean of the measure
Time_BodyAcceleration_Mean_Y | g | Mean of the measure
Time_BodyAcceleration_Mean_Z | g | Mean of the measure
Time_BodyAcceleration_STD_X | g | Standard deviation of the measure
Time_BodyAcceleration_STD_Y | g | Standard deviation of the measure
Time_BodyAcceleration_STD_Z | g | Standard deviation of the measure
Time_GravityAcceleration_Mean_X | g | Mean of the measure
Time_GravityAcceleration_Mean_Y | g | Mean of the measure
Time_GravityAcceleration_Mean_Z | g | Mean of the measure
Time_GravityAcceleration_STD_X | g | Standard deviation of the measure
Time_GravityAcceleration_STD_Y | g | Standard deviation of the measure
Time_GravityAcceleration_STD_Z | g | Standard deviation of the measure
Time_BodyAccelerationJerk_Mean_X | g | Mean of the measure
Time_BodyAccelerationJerk_Mean_Y | g | Mean of the measure
Time_BodyAccelerationJerk_Mean_Z | g | Mean of the measure
Time_BodyAccelerationJerk_STD_X | g | Standard deviation of the measure
Time_BodyAccelerationJerk_STD_Y | g | Standard deviation of the measure
Time_BodyAccelerationJerk_STD_Z | g | Standard deviation of the measure
Time_BodyGyroscope_Mean_X | rad/seg | Mean of the measure
Time_BodyGyroscope_Mean_Y | rad/seg | Mean of the measure
Time_BodyGyroscope_Mean_Z | rad/seg | Mean of the measure
Time_BodyGyroscope_STD_X | rad/seg | Standard deviation of the measure
Time_BodyGyroscope_STD_Y | rad/seg | Standard deviation of the measure
Time_BodyGyroscope_STD_Z | rad/seg | Standard deviation of the measure
Time_BodyGyroscopeJerk_Mean_X | rad/seg | Mean of the measure
Time_BodyGyroscopeJerk_Mean_Y | rad/seg | Mean of the measure
Time_BodyGyroscopeJerk_Mean_Z | rad/seg | Mean of the measure
Time_BodyGyroscopeJerk_STD_X | rad/seg | Standard deviation of the measure
Time_BodyGyroscopeJerk_STD_Y | rad/seg | Standard deviation of the measure
Time_BodyGyroscopeJerk_STD_Z | rad/seg | Standard deviation of the measure
Time_BodyAccelerationMagnitude_Mean | g | Mean of the measure
Time_BodyAccelerationMagnitude_STD | g | Standard deviation of the measure
Time_GravityAccelerationMagnitude_Mean | g | Mean of the measure
Time_GravityAccelerationMagnitude_STD | g | Standard deviation of the measure
Time_BodyAccelerationJerkMagnitude_Mean | g | Mean of the measure
Time_BodyAccelerationJerkMagnitude_STD | g | Standard deviation of the measure
Time_BodyGyroscopeMagnitude_Mean | rad/seg | Mean of the measure
Time_BodyGyroscopeMagnitude_STD | rad/seg | Standard deviation of the measure
Time_BodyGyroscopeJerkMagnitude_Mean | rad/seg | Mean of the measure
Time_BodyGyroscopeJerkMagnitude_STD | rad/seg | Standard deviation of the measure
FastFourierTransform_BodyAcceleration_Mean_X | g | Mean of the measure
FastFourierTransform_BodyAcceleration_Mean_Y | g | Mean of the measure
FastFourierTransform_BodyAcceleration_Mean_Z | g | Mean of the measure
FastFourierTransform_BodyAcceleration_STD_X | g | Standard deviation of the measure
FastFourierTransform_BodyAcceleration_STD_Y | g | Standard deviation of the measure
FastFourierTransform_BodyAcceleration_STD_Z | g | Standard deviation of the measure
FastFourierTransform_BodyAcceleration_MeanFrequency_X | g | Mean of the measure
FastFourierTransform_BodyAcceleration_MeanFrequency_Y | g | Mean of the measure
FastFourierTransform_BodyAcceleration_MeanFrequency_Z | g | Mean of the measure
FastFourierTransform_BodyAccelerationJerk_Mean_X | g | Mean of the measure
FastFourierTransform_BodyAccelerationJerk_Mean_Y | g | Mean of the measure
FastFourierTransform_BodyAccelerationJerk_Mean_Z | g | Mean of the measure
FastFourierTransform_BodyAccelerationJerk_STD_X | g | Standard deviation of the measure
FastFourierTransform_BodyAccelerationJerk_STD_Y | g | Standard deviation of the measure
FastFourierTransform_BodyAccelerationJerk_STD_Z | g | Standard deviation of the measure
FastFourierTransform_BodyAccelerationJerk_MeanFrequency_X | g | Mean of the measure
FastFourierTransform_BodyAccelerationJerk_MeanFrequency_Y | g | Mean of the measure
FastFourierTransform_BodyAccelerationJerk_MeanFrequency_Z | g | Mean of the measure
FastFourierTransform_BodyGyroscope_Mean_X | rad/seg | Mean of the measure
FastFourierTransform_BodyGyroscope_Mean_Y | rad/seg | Mean of the measure
FastFourierTransform_BodyGyroscope_Mean_Z | rad/seg | Mean of the measure
FastFourierTransform_BodyGyroscope_STD_X | rad/seg | Standard deviation of the measure
FastFourierTransform_BodyGyroscope_STD_Y | rad/seg | Standard deviation of the measure
FastFourierTransform_BodyGyroscope_STD_Z | rad/seg | Standard deviation of the measure
FastFourierTransform_BodyGyroscope_MeanFrequency_X | rad/seg | Mean of the measure
FastFourierTransform_BodyGyroscope_MeanFrequency_Y | rad/seg | Mean of the measure
FastFourierTransform_BodyGyroscope_MeanFrequency_Z | rad/seg | Mean of the measure
FastFourierTransform_BodyAccelerationMagnitude_Mean | g | Mean of the measure
FastFourierTransform_BodyAccelerationMagnitude_STD | g | Standard deviation of the measure
FastFourierTransform_BodyAccelerationMagnitude_MeanFrequency | g | Mean of the measure
FastFourierTransform_BodyBodyAccelerationJerkMagnitude_Mean | g | Mean of the measure
FastFourierTransform_BodyBodyAccelerationJerkMagnitude_STD | g | Standard deviation of the measure
FastFourierTransform_BodyBodyAccelerationJerkMagnitude_MeanFrequency | g | Mean of the measure
FastFourierTransform_BodyBodyGyroscopeMagnitude_Mean | rad/seg | Mean of the measure
FastFourierTransform_BodyBodyGyroscopeMagnitude_STD | rad/seg | Standard deviation of the measure
FastFourierTransform_BodyBodyGyroscopeMagnitude_MeanFrequency | rad/seg | Mean of the measure
FastFourierTransform_BodyBodyGyroscopeJerkMagnitude_Mean | rad/seg | Mean of the measure
FastFourierTransform_BodyBodyGyroscopeJerkMagnitude_STD | rad/seg | Standard deviation of the measure
FastFourierTransform_BodyBodyGyroscopeJerkMagnitude_MeanFrequency | rad/seg | Mean of the measure
angletBodyAccelerationMean_gravity | g | Mean of the measure
angletBodyAccelerationJerkMean_gravityMean | g | Mean of the measure
angletBodyGyroscopeMean_gravityMean | rad/seg | Mean of the measure
angletBodyGyroscopeJerkMean_gravityMean | rad/seg | Mean of the measure
angleX_gravityMean | - | Mean of the measure
angleY_gravityMean | - | Mean of the measure
angleZ_gravityMean | - | Mean of the measure
activity | nominal | Type of activiy. Values: WALKING; WALKING_UPSTAIRS; WALKING_DOWNSTAIRS; SITTING; STANDING; LAYING
