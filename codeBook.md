## CodeBook

#### Summary

The experiments have been carried out with a group of 30 volunteers within an
age bracket of 19-48 years. 

Each person performed six activities (WALKING, WALKING_UPSTAIRS, 
WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone 
(Samsung Galaxy S II) on the waist. 

The features selected for this database come from the _accelerometer_ and 
_gyroscope_ 3-axial raw signals timeAccelerometer-XYZ and timeGyroscope-XYZ. 

The acceleratometer signal was then separated into body and gravity Accelerator 
signals (timeBodyAccelerometer-XYZ and timeGravityAcceloremeter-XYZ).

The body Accelerator and angular velocity (gyroscope) were derived in time to
obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and 
timeBodyGyroscopeJerk-XYZ). 

The magnitude of these three-dimensional signals were calculated using the 
Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, 
timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, 
timeBodyGyroscopeJerkMagnitude).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ,
frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMagnitude,
fBodyGyroMag, fBodyGyroJerkMag.

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:

+ mean(): Mean value
+ std(): Standard deviation

#### Notes

+ Each row identifies the subject, the activity and the average value for each
  variable.
+ Each value are normalized and bounded within [-1,1].

#### Codebook

```
Subject     
    Volunteer who wore the smartphone
        1..30

Activity
    Activity performed by the volunteer
        1.WALKING
        2.WALKING_UPSTAIRS
        3.WALKING_DOWNSTAIRS
        4.SITTING
        5.STANDING
        6.LAYING
timeBodyAcceleratorMeanXaxis  
    Mean of the time body accelerator signal on the X axis

timeBodyAcceleratorMeanYaxis
    Mean of the time body accelerator signal on the Y axis

timeBodyAcceleratorMeanZaxis
    Mean of the time body accelerator signal on the Z axis
    
timeBodyAcceleratorStdXaxis                  
    Standard deviation of the time body accelerator signal on the X axis
    
timeBodyAcceleratorStdYaxis                  
    Standard deviation of the time body accelerator signal on the Y axis
    
timeBodyAcceleratorStdZaxis                 
    Standard deviation of the time body accelerator signal on the Z axis
    
timeGravityAcceleratorMeanXaxis              
    Mean of the time gravity accelerator signal on the X axis
    
timeGravityAcceleratorMeanYaxis              
    Mean of the time gravity accelerator signal on the Y axis
    
timeGravityAcceleratorMeanZaxis              
    Mean of the time gravity accelerator signal on the Z axis
    
timeGravityAcceleratorStdXaxis               
    Standard deviation of the time gravity accelerator signal on the X axis
    
timeGravityAcceleratorStdYaxis               
    Standard deviation of the time gravity accelerator signal on the Y axis
    
timeGravityAcceleratorStdZaxis               
    Standard deviation of the time gravity accelerator signal on the Z axis
    
timeBodyAcceleratorJerkMeanXaxis             
    Mean of the time gravity accelerator signal derived in time on the X axis
    
timeBodyAcceleratorJerkMeanYaxis             
    Mean of the time gravity accelerator signal derived in time on the Y axis
    
timeBodyAcceleratorJerkMeanZaxis
    Mean of the time gravity accelerator signal derived in time on the Z axis
    
timeBodyAcceleratorJerkStdXaxis              
    Standard deviation of the time gravity accelerator signal derived in time 
    on the X axis
    
timeBodyAcceleratorJerkStdYaxis              
    Standard deviation of the time gravity accelerator signal derived in time 
    on the Y axis
    
timeBodyAcceleratorJerkStdZaxis              
    Standard deviation of the time gravity accelerator signal derived in time 
    on the Z axis
    
timeBodyGyroscopeMeanXaxis                    
    Mean of the time gyroscope signal on the X axis
    
timeBodyGyroscopeMeanYaxis                
    Mean of the time gyroscope signal on the Y axis
    
timeBodyGyroscopeMeanZaxis                    
    Mean of the time gyroscope signal on the Z axis
    
timeBodyGyroscopeStdXaxis
    Standard deviation of the time gyroscope signal on the X axis

timeBodyGyroscopeStdYaxis                     
    Standard deviation of the time gyroscope signal on the Y axis
    
timeBodyGyroscopeStdZaxis                     
    Standard deviation of the time gyroscope signal on the Z axis
    
timeBodyGyroscopeJerkMeanXaxis
    Mean of the time gyroscope signal derived in time on the X axis

timeBodyGyroscopeJerkMeanYaxis
    Mean of the time gyroscope signal derived in time on the Y axis

timeBodyGyroscopeJerkMeanZaxis
    Mean of the time gyroscope signal derived in time on the Z axis

timeBodyGyroscopeJerkStdXaxis                 
    Standard deviation of the time gyroscope signal derived in time on the X axis

timeBodyGyroscopeJerkStdYaxis                 
    Standard deviation of the time gyroscope signal derived in time on the Y axis
    
timeBodyGyroscopeJerkStdZaxis
    Standard deviation of the time gyroscope signal derived in time on the Z axis

timeBodyAcceleratorMagnitudeMean            
    Mean of the magnitude body accelerator signal
    
timeBodyAcceleratorMagnitudeStd              
    Standard deviation of the magnitude body accelerator signal
    
timeGravityAcceleratorMagnitudeMean          
    Mean of the magnitude gravity accelerator signal
    
timeGravityAcceleratorMagnitudeStd           
    Standard deviation of the magnitude gravity accelerator signal
    
timeBodyAcceleratorJerkMagnitudeMean         
    Mean of the magnitude body accelerator signal derived in time
    
timeBodyAcceleratorJerkMagnitudeStd          
    Standard deviation of the magnitude body accelerator signal derived in time

timeBodyGyroscopeMagnitudeMean                
    Mean of the magnitude gyroscope signal 
    
timeBodyGyroscopeMagnitudeStd
    Standard deviation of the magnitude gyroscope signal

timeBodyGyroscopeJerkMagnitudeMean
    Mean of the magnitude gyroscope signal derived in time

timeBodyGyroscopeJerkMagnitudeStd
    Standard deviation of the magnitude gyroscope signal derived in time

frequencyBodyAcceleratorMeanXaxis
    Mean of the frequency body accelerator signal on the X axis

frequencyBodyAcceleratorMeanYaxis
    Mean of the frequency body accelerator signal on the Y axis

frequencyBodyAcceleratorMeanZaxis
    Mean of the frequency body accelerator signal on the Z axis

frequencyBodyAcceleratorStdXaxis             
    Standard deviation of the frequency body accelerator signal on the X axis
    
frequencyBodyAcceleratorStdYaxis             
    Standard deviation of the frequency body accelerator signal on the Y axis
    
frequencyBodyAcceleratorStdZaxis             
    Standard deviation of the frequency body accelerator signal on the Z axis
    
frequencyBodyAcceleratorJerkMeanXaxis        
    Mean of the frequency body accelerator signal derived in time on the X axis 
    
frequencyBodyAcceleratorJerkMeanYaxis        
    Mean of the frequency body accelerator signal derived in time on the Y axis
    
frequencyBodyAcceleratorJerkMeanZaxis        
    Mean of the frequency body accelerator signal derived in time on the Z axis
    
frequencyBodyAcceleratorJerkStdXaxis         
    Standard deviation of the frequency body accelerator signal derived in time 
    on the X axis
    
frequencyBodyAcceleratorJerkStdYaxis         
    Standard deviation of the frequency body accelerator signal derived in time 
    on the Y axis
    
frequencyBodyAcceleratorJerkStdZaxis         
    Standard deviation of the frequency body accelerator signal derived in time 
    on the Z axis
    
frequencyBodyGyroscopeMeanXaxis              
    Mean of the frequency gyroscope signal on the X axis
    
frequencyBodyGyroscopeMeanYaxis               
    Mean of the frequency gyroscope signal on the Y axis
    
frequencyBodyGyroscopeMeanZaxis               
    Mean of the frequency gyroscope signal on the Z axis
    
frequencyBodyGyroscopeStdXaxis                
    Standard deviation of the frequency gyroscope signal on the X axis
    
frequencyBodyGyroscopeStdYaxis
    Standard deviation of the frequency gyroscope signal on the Y axis
    
frequencyBodyGyroscopeStdZaxis
    Standard deviation of the frequency gyroscope signal on the Z axis

frequencyBodyAcceleratorMagnitudeMean
    Mean of the frequency magnitude body accelerator signal 

frequencyBodyAcceleratorMagnitudeStd
    Standard deviation of the frequency magnitude body accelerator signal 

frequencyBodyBodyAcceleratorJerkMagnitudeMean
    Mean of the frequency magnitude body accelerator signal derived in time

frequencyBodyBodyAcceleratorJerkMagnitudeStd
    Standard deviation of the frequency magnitude body accelerator signal 
    derived in time

frequencyBodyBodyGyroscopeMagnitudeMean       
    Mean of the frequency magnitude gyroscope signal 
    
frequencyBodyBodyGyroscopeMagnitudeStd        
    Standard deviation of the frequency magnitude gyroscope signal
    
frequencyBodyBodyGyroscopeJerkMagnitudeMean   
    Mean of the frequency magnitude gyroscope signal  derived in time
    
frequencyBodyBodyGyroscopeJerkMagnitudeStd
    Standard deviation of the frequency magnitude gyroscope signal 
    derived in time
```