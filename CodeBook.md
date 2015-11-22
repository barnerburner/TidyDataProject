---
title: "TidyDataProject Codebook"
author: "Your name here"
date: "November 22, 2015"
---

## Project Description
This project takes accelerometer data from multiple files in UC Irvine's Human Activity Recognition Using Smartphones Data set (UCIHAR), and turns a selection of it into a single, tidy output.

##Study design and data processing

The raw data was collected from the embedded accelerometer and gyroscope in Samsung Galaxy S II smartphones, pre-processed, and turned into the text files used for this project.
[More on the Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

##Creating the tidy datafile

The tidy data file can be created by downloading the UCIHAR data set from the above link, unzipping it into the working directory, and then running the [run_analysis.R](https://github.com/barnerburner/TidyDataProject/blob/master/run_analysis.R) script from the same directory.

The analysis script combines the principle files of both the train and test sets into a single dataset, extracts the measurements related to mean and standard deviation, then condenses it into a tidy set organized by unique subject/activity pairs. [More info in README](https://github.com/barnerburner/TidyDataProject/blob/master/README.md).

##Description of the variables in the tidyset.txt file
Tidyset.txt contains the output of the analysis script - 180 unique observations (subject/activity pairs) of 79 measured variables.

###"Subject"
(double - unitless)
Id numbers for study participants, ranging from 1 to 30.
###"Activity"
(character)
The six classes of activities done by study participants.
"LAYING"             "SITTING"            "STANDING"          
"WALKING"            "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS" 
#####"OverallTimeBodyAccelerometerMean()-X-axis"     
(double) Overall mean of the body's effect on the phone's accelerometer along the X-axis over time.
#####"OverallTimeBodyAccelerometerMean()-Y-axis"
(double) Overall mean of the body's effect on the phone's accelerometer along the Y-axis over time.
#####"OverallTimeBodyAccelerometerMean()-Z-axis"
(double) Overall mean of the body's effect on the phone's accelerometer along the Z-axis over time.
#####"OverallTimeBodyAccelerometerStandardDeviation()-X-axis"
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the X-axis over time.
#####"OverallTimeBodyAccelerometerStandardDeviation()-Y-axis"
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the Y-axis over time.
#####"OverallTimeBodyAccelerometerStandardDeviation()-Z-axis" 
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the Z-axis over time.
#####"OverallTimeGravityAccelerometerMean()-X-axis"  
(double) Overall mean of gravity's effect on the phone's accelerometer along the X-axis over time.
#####"OverallTimeGravityAccelerometerMean()-Y-axis"                
(double) Overall mean of gravity's effect on the phone's accelerometer along the Y-axis over time.
#####"OverallTimeGravityAccelerometerMean()-Z-axis"                
(double) Overall mean of gravity's effect on the phone's accelerometer along the Z-axis over time.
#####"OverallTimeGravityAccelerometerStandardDeviation()-X-axis"   
(double) Overall mean standard deviation of gravity's effect on the phone's accelerometer along the X-axis over time.
#####"OverallTimeGravityAccelerometerStandardDeviation()-Y-axis"   
(double) Overall mean standard deviation of gravity's effect on the phone's accelerometer along the Y-axis over time.
#####"OverallTimeGravityAccelerometerStandardDeviation()-Z-axis"   
(double) Overall mean standard deviation of gravity's effect on the phone's accelerometer along the Z-axis over time.
#####"OverallTimeBodyAccelerometerJerkMean()-X-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the X-axis over time.
#####"OverallTimeBodyAccelerometerJerkMean()-Y-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the Y-axis over time.
#####"OverallTimeBodyAccelerometerJerkMean()-Z-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the Z-axis over time.
#####"OverallTimeBodyAccelerometerJerkStandardDeviation()-X-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the X-axis over time.
#####"OverallTimeBodyAccelerometerJerkStandardDeviation()-Y-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the Y-axis over time.
#####"OverallTimeBodyAccelerometerJerkStandardDeviation()-Z-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the Z-axis over time.
#####"OverallTimeBodyGyroscopeMean()-X-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the X-axis over time.
#####"OverallTimeBodyGyroscopeMean()-Y-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the Y-axis over time.
#####"OverallTimeBodyGyroscopeMean()-Z-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the Z-axis over time.
#####"OverallTimeBodyGyroscopeStandardDeviation()-X-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the X-axis over time.
#####"OverallTimeBodyGyroscopeStandardDeviation()-Y-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the Y-axis over time.
#####"OverallTimeBodyGyroscopeStandardDeviation()-Z-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the Z-axis over time.
#####"OverallTimeBodyGyroscopeJerkMean()-X-axis"                   
(double) Overall mean of the body's jerk effect on the phone's gyroscope along the X-axis over time.
#####"OverallTimeBodyGyroscopeJerkMean()-Y-axis"                   
(double) Overall mean of the body's jerk effect on the phone's gyroscope along the Y-axis over time.
#####"OverallTimeBodyGyroscopeJerkMean()-Z-axis"                   
(double) Overall mean of the body's jerk effect on the phone's gyroscope along the Z-axis over time.
#####"OverallTimeBodyGyroscopeJerkStandardDeviation()-X-axis"      
(double) Overall mean standard deviation of the body's jerk effect on the phone's gyroscope along the X-axis over time.
#####"OverallTimeBodyGyroscopeJerkStandardDeviation()-Y-axis"      
(double) Overall mean standard deviation of the body's jerk effect on the phone's gyroscope along the Y-axis over time.
#####"OverallTimeBodyGyroscopeJerkStandardDeviation()-Z-axis"      
(double) Overall mean standard deviation of the body's jerk effect on the phone's gyroscope along the Z-axis over time.
#####"OverallTimeBodyAccelerometerMagnitudeMean()"                 
(double) Overall mean of the magnitude of the body's effect on the phone's accelerometer over time.
#####"OverallTimeBodyAccelerometerMagnitudeStandardDeviation()"    
(double) Overall mean standard deviation of the magnitude of the body's effect on the phone's accelerometer over time.
#####"OverallTimeGravityAccelerometerMagnitudeMean()"              
(double) Overall mean of the magnitude of gravity's effect on the phone's accelerometer over time.
#####"OverallTimeGravityAccelerometerMagnitudeStandardDeviation()" 
(double) Overall mean standard deviation of the magnitude of gravity's effect on the phone's accelerometer over time.
#####"OverallTimeBodyAccelerometerJerkMagnitudeMean()"             
(double) Overall mean of the magnitude of the body's jerk effect on the phone's accelerometer over time.
#####"OverallTimeBodyAccelerometerJerkMagnitudeStandardDeviation()"
(double) Overall mean standard deviation of the magnitude of the body's jerk effect on the phone's accelerometer over time.
#####"OverallTimeBodyGyroscopeMagnitudeMean()"                     
(double) Overall mean of the magnitude of the body's effect on the phone's gyroscope over time.
#####"OverallTimeBodyGyroscopeMagnitudeStandardDeviation()"        
(double) Overall mean standard deviation of the magnitude of the body's effect on the phone's gyroscope over time.
#####"OverallTimeBodyGyroscopeJerkMagnitudeMean()"                 
(double) Overall mean of the magnitude of the body's jerk effect on the phone's gyroscope over time.
#####"OverallTimeBodyGyroscopeJerkMagnitudeStandardDeviation()"    
(double) Overall mean standard deviation of the magnitude of the body's jerk effect on the phone's gyroscope over time.
#####"OverallFrequencyBodyAccelerometerMean()-X-axis"                   
(double) Overall mean of the body's effect on the phone's accelerometer along the X-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerMean()-Y-axis"                   
(double) Overall mean of the body's effect on the phone's accelerometer along the Y-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerMean()-Z-axis"                   
(double) Overall mean of the body's effect on the phone's accelerometer along the Z-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerStandardDeviation()-X-axis"      
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the X-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerStandardDeviation()-Y-axis"      
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the Y-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerStandardDeviation()-Z-axis"      
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the Z-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerMeanFrequency()-X-axis"          
(double) Overall mean frequency of the body's effect on the phone's accelerometer along the X-axis.
#####"OverallFrequencyBodyAccelerometerMeanFrequency()-Y-axis"          
(double) Overall mean frequency of the body's effect on the phone's accelerometer along the Y-axis.
#####"OverallFrequencyBodyAccelerometerMeanFrequency()-Z-axis"          
(double) Overall mean frequency of the body's effect on the phone's accelerometer along the Z-axis.
#####"OverallFrequencyBodyAccelerometerJerkMean()-X-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the X-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerJerkMean()-Y-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the Y-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerJerkMean()-Z-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the Z-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerJerkStandardDeviation()-X-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the X-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerJerkStandardDeviation()-Y-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the Y-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerJerkStandardDeviation()-Z-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the Z-axis over the frequency domain.
#####"OverallFrequencyBodyAccelerometerJerkMeanFrequency()-X-axis"      
(double) Overall mean frequency of the body's jerk effect on the phone's accelerometer along the X-axis.
#####"OverallFrequencyBodyAccelerometerJerkMeanFrequency()-Y-axis"      
(double) Overall mean frequency of the body's jerk effect on the phone's accelerometer along the Y-axis.
#####"OverallFrequencyBodyAccelerometerJerkMeanFrequency()-Z-axis"      
(double) Overall mean frequency of the body's jerk effect on the phone's accelerometer along the Z-axis.
#####"OverallFrequencyBodyGyroscopeMean()-X-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the X-axis over the frequency domain.
#####"OverallFrequencyBodyGyroscopeMean()-Y-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the Y-axis over the frequency domain.
#####"OverallFrequencyBodyGyroscopeMean()-Z-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the Z-axis over the frequency domain.
#####"OverallFrequencyBodyGyroscopeStandardDeviation()-X-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the X-axis over the frequency domain.
#####"OverallFrequencyBodyGyroscopeStandardDeviation()-Y-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the Y-axis over the frequency domain.
#####"OverallFrequencyBodyGyroscopeStandardDeviation()-Z-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the Z-axis over the frequency domain.
#####"OverallFrequencyBodyGyroscopeMeanFrequency()-X-axis"              
(double) Overall mean frequency of the body's effect on the phone's gyroscope along the X-axis.
#####"OverallFrequencyBodyGyroscopeMeanFrequency()-Y-axis"              
(double) Overall mean frequency of the body's effect on the phone's gyroscope along the Y-axis.
#####"OverallFrequencyBodyGyroscopeMeanFrequency()-Z-axis"              
(double) Overall mean frequency of the body's effect on the phone's gyroscope along the Z-axis.
#####"OverallFrequencyBodyAccelerometerMagnitudeMean()"                 
(double) Overall mean of the magnitude of the body's effect on the phone's accelerometer over the frequency domain.
#####"OverallFrequencyBodyAccelerometerMagnitudeStandardDeviation()"    
(double) Overall mean standard deviation of the magnitude of the body's effect on the phone's accelerometer over the frequency domain.
#####"OverallFrequencyBodyAccelerometerMagnitudeMeanFrequency()"        
(double) Overall mean frequency of the magnitude of the body's effect on the phone's accelerometer.
#####"OverallFrequencyBodyAccelerometerJerkMagnitudeMean()"             
(double) Overall mean of the magnitude of the body's jerk effect on the phone's accelerometer over the frequency domain.
#####"OverallFrequencyBodyAccelerometerJerkMagnitudeStandardDeviation()"
(double) Overall mean standard deviation of the magnitude of the body's jerk effect on the phone's accelerometer over the frequency domain.
#####"OverallFrequencyBodyAccelerometerJerkMagnitudeMeanFrequency()"    
(double) Overall mean frequency of the magnitude of the body's jerk effect on the phone's accelerometer.
#####"OverallFrequencyBodyGyroscopeMagnitudeMean()"                     
(double) Overall mean of the magnitude of the body's effect on the phone's gyroscope over the frequency domain.
#####"OverallFrequencyBodyGyroscopeMagnitudeStandardDeviation()"        
(double) Overall mean standard deviation of the magnitude of the body's effect on the phone's gyroscope over the frequency domain.
#####"OverallFrequencyBodyGyroscopeMagnitudeMeanFrequency()"            
(double) Overall mean frequency of the magnitude of the body's effect on the phone's gyroscope.
#####"OverallFrequencyBodyGyroscopeJerkMagnitudeMean()"                 
(double) Overall mean of the magnitude of the body's jerk effect on the phone's gyroscope over the frequency domain.
#####"OverallFrequencyBodyGyroscopeJerkMagnitudeStandardDeviation()"    
(double) Overall mean standard deviation of the magnitude of the body's jerk effect on the phone's gyroscope over the frequency domain.
#####"OverallFrequencyBodyGyroscopeJerkMagnitudeMeanFrequency()" 
(double) Overall mean frequency of the magnitude of the body's effect on the phone's gyroscope.

##Sources
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
