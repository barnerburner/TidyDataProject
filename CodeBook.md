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
(double)
#####"OverallTimeBodyAccelerometerMean()-Y-axis"
(double)
#####"OverallTimeBodyAccelerometerMean()-Z-axis"
(double)
#####"OverallTimeBodyAccelerometerStandardDeviation()-X-axis"
(double)
#####"OverallTimeBodyAccelerometerStandardDeviation()-Y-axis"
(double)
#####"OverallTimeBodyAccelerometerStandardDeviation()-Z-axis" 
(double)
#####"OverallTimeGravityAccelerometerMean()-X-axis"  
(double)
#####"OverallTimeGravityAccelerometerMean()-Y-axis"                
(double)
#####"OverallTimeGravityAccelerometerMean()-Z-axis"                
(double)
#####"OverallTimeGravityAccelerometerStandardDeviation()-X-axis"   
(double)
#####"OverallTimeGravityAccelerometerStandardDeviation()-Y-axis"   
(double)
#####"OverallTimeGravityAccelerometerStandardDeviation()-Z-axis"   
(double)
#####"OverallTimeBodyAccelerometerJerkMean()-X-axis"               
(double)
#####"OverallTimeBodyAccelerometerJerkMean()-Y-axis"               
(double)
#####"OverallTimeBodyAccelerometerJerkMean()-Z-axis"               
(double)
#####"OverallTimeBodyAccelerometerJerkStandardDeviation()-X-axis"  
(double)
#####"OverallTimeBodyAccelerometerJerkStandardDeviation()-Y-axis"  
(double)
#####"OverallTimeBodyAccelerometerJerkStandardDeviation()-Z-axis"  
(double)
#####"OverallTimeBodyGyroscopeMean()-X-axis"                       
(double)
#####"OverallTimeBodyGyroscopeMean()-Y-axis"                       
(double)
#####"OverallTimeBodyGyroscopeMean()-Z-axis"                       
(double)
#####"OverallTimeBodyGyroscopeStandardDeviation()-X-axis"          
(double)
#####"OverallTimeBodyGyroscopeStandardDeviation()-Y-axis"          
(double)
#####"OverallTimeBodyGyroscopeStandardDeviation()-Z-axis"          
(double)
#####"OverallTimeBodyGyroscopeJerkMean()-X-axis"                   
(double)
#####"OverallTimeBodyGyroscopeJerkMean()-Y-axis"                   
(double)
#####"OverallTimeBodyGyroscopeJerkMean()-Z-axis"                   
(double)
#####"OverallTimeBodyGyroscopeJerkStandardDeviation()-X-axis"      
(double)
#####"OverallTimeBodyGyroscopeJerkStandardDeviation()-Y-axis"      
(double)
#####"OverallTimeBodyGyroscopeJerkStandardDeviation()-Z-axis"      
(double)
#####"OverallTimeBodyAccelerometerMagnitudeMean()"                 
(double)
#####"OverallTimeBodyAccelerometerMagnitudeStandardDeviation()"    
(double)
#####"OverallTimeGravityAccelerometerMagnitudeMean()"              
(double)
#####"OverallTimeGravityAccelerometerMagnitudeStandardDeviation()" 
(double)
#####"OverallTimeBodyAccelerometerJerkMagnitudeMean()"             
(double)
#####"OverallTimeBodyAccelerometerJerkMagnitudeStandardDeviation()"
(double)
#####"OverallTimeBodyGyroscopeMagnitudeMean()"                     
(double)
#####"OverallTimeBodyGyroscopeMagnitudeStandardDeviation()"        
(double)
#####"OverallTimeBodyGyroscopeJerkMagnitudeMean()"                 
(double)
#####"OverallTimeBodyGyroscopeJerkMagnitudeStandardDeviation()"    
(double)
#####"OverallFrequencyBodyAccelerometerMean()-X-axis"                   
(double)
#####"OverallFrequencyBodyAccelerometerMean()-Y-axis"                   
(double)
#####"OverallFrequencyBodyAccelerometerMean()-Z-axis"                   
(double)
#####"OverallFrequencyBodyAccelerometerStandardDeviation()-X-axis"      
(double)
#####"OverallFrequencyBodyAccelerometerStandardDeviation()-Y-axis"      
(double)
#####"OverallFrequencyBodyAccelerometerStandardDeviation()-Z-axis"      
(double)
#####"OverallFrequencyBodyAccelerometerMeanFrequency()-X-axis"          
(double)
#####"OverallFrequencyBodyAccelerometerMeanFrequency()-Y-axis"          
(double)
#####"OverallFrequencyBodyAccelerometerMeanFrequency()-Z-axis"          
(double)
#####"OverallFrequencyBodyAccelerometerJerkMean()-X-axis"               
(double)
#####"OverallFrequencyBodyAccelerometerJerkMean()-Y-axis"               
(double)
#####"OverallFrequencyBodyAccelerometerJerkMean()-Z-axis"               
(double)
#####"OverallFrequencyBodyAccelerometerJerkStandardDeviation()-X-axis"  
(double)
#####"OverallFrequencyBodyAccelerometerJerkStandardDeviation()-Y-axis"  
(double)
#####"OverallFrequencyBodyAccelerometerJerkStandardDeviation()-Z-axis"  
(double)
#####"OverallFrequencyBodyAccelerometerJerkMeanFrequency()-X-axis"      
(double)
#####"OverallFrequencyBodyAccelerometerJerkMeanFrequency()-Y-axis"      
(double)
#####"OverallFrequencyBodyAccelerometerJerkMeanFrequency()-Z-axis"      
(double)
#####"OverallFrequencyBodyGyroscopeMean()-X-axis"                       
(double)
#####"OverallFrequencyBodyGyroscopeMean()-Y-axis"                       
(double)
#####"OverallFrequencyBodyGyroscopeMean()-Z-axis"                       
(double)
#####"OverallFrequencyBodyGyroscopeStandardDeviation()-X-axis"          
(double)
#####"OverallFrequencyBodyGyroscopeStandardDeviation()-Y-axis"          
(double)
#####"OverallFrequencyBodyGyroscopeStandardDeviation()-Z-axis"          
(double)
#####"OverallFrequencyBodyGyroscopeMeanFrequency()-X-axis"              
(double)
#####"OverallFrequencyBodyGyroscopeMeanFrequency()-Y-axis"              
(double)
#####"OverallFrequencyBodyGyroscopeMeanFrequency()-Z-axis"              
(double)
#####"OverallFrequencyBodyAccelerometerMagnitudeMean()"                 
(double)
#####"OverallFrequencyBodyAccelerometerMagnitudeStandardDeviation()"    
(double)
#####"OverallFrequencyBodyAccelerometerMagnitudeMeanFrequency()"        
(double)
#####"OverallFrequencyBodyAccelerometerJerkMagnitudeMean()"             
(double)
#####"OverallFrequencyBodyAccelerometerJerkMagnitudeStandardDeviation()"
(double)
#####"OverallFrequencyBodyAccelerometerJerkMagnitudeMeanFrequency()"    
(double)
#####"OverallFrequencyBodyGyroscopeMagnitudeMean()"                     
(double)
#####"OverallFrequencyBodyGyroscopeMagnitudeStandardDeviation()"        
(double)
#####"OverallFrequencyBodyGyroscopeMagnitudeMeanFrequency()"            
(double)
#####"OverallFrequencyBodyGyroscopeJerkMagnitudeMean()"                 
(double)
#####"OverallFrequencyBodyGyroscopeJerkMagnitudeStandardDeviation()"    
(double)
#####"OverallFrequencyBodyGyroscopeJerkMagnitudeMeanFrequency()" 
(double)

##Sources
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
