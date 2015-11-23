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
Tidyset.txt contains the output of the analysis script (180x81) - 180 unique observations (subject/activity pairs) of 79 measured variables.

To view the output table:
```
address <- "https://s3.amazonaws.com/coursera-uploads/user-d4e34aa5bf937044773abc29/975118/asst-3/32047b20916f11e5a4654306ac580867.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE)
View(data)
```
All measured variables were normalized in the original UCIHAR data set and bounded within [-1, 1], so they are unitless.

###"Subject"
(class: double)
Id numbers for study participants, ranging from 1 to 30.
###"Activity"
(class: character)
The six classes of activities done by study participants.
"LAYING"             "SITTING"            "STANDING"          
"WALKING"            "WALKING_DOWNSTAIRS" "WALKING_UPSTAIRS" 
#####[1] "OverallTimeBodyAccelerometerMean()-X-axis"     
(double) Overall mean of the body's effect on the phone's accelerometer along the X-axis over time.
#####[2] "OverallTimeBodyAccelerometerMean()-Y-axis"
(double) Overall mean of the body's effect on the phone's accelerometer along the Y-axis over time.
#####[3] "OverallTimeBodyAccelerometerMean()-Z-axis"
(double) Overall mean of the body's effect on the phone's accelerometer along the Z-axis over time.
#####[4] "OverallTimeBodyAccelerometerStandardDeviation()-X-axis"
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the X-axis over time.
#####[5] "OverallTimeBodyAccelerometerStandardDeviation()-Y-axis"
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the Y-axis over time.
#####[6] "OverallTimeBodyAccelerometerStandardDeviation()-Z-axis" 
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the Z-axis over time.
#####[7] "OverallTimeGravityAccelerometerMean()-X-axis"  
(double) Overall mean of gravity's effect on the phone's accelerometer along the X-axis over time.
#####[8] "OverallTimeGravityAccelerometerMean()-Y-axis"                
(double) Overall mean of gravity's effect on the phone's accelerometer along the Y-axis over time.
#####[9] "OverallTimeGravityAccelerometerMean()-Z-axis"                
(double) Overall mean of gravity's effect on the phone's accelerometer along the Z-axis over time.
#####[10] "OverallTimeGravityAccelerometerStandardDeviation()-X-axis"   
(double) Overall mean standard deviation of gravity's effect on the phone's accelerometer along the X-axis over time.
#####[11] "OverallTimeGravityAccelerometerStandardDeviation()-Y-axis"   
(double) Overall mean standard deviation of gravity's effect on the phone's accelerometer along the Y-axis over time.
#####[12] "OverallTimeGravityAccelerometerStandardDeviation()-Z-axis"   
(double) Overall mean standard deviation of gravity's effect on the phone's accelerometer along the Z-axis over time.
#####[13] "OverallTimeBodyAccelerometerJerkMean()-X-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the X-axis over time.
#####[14] "OverallTimeBodyAccelerometerJerkMean()-Y-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the Y-axis over time.
#####[15] "OverallTimeBodyAccelerometerJerkMean()-Z-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the Z-axis over time.
#####[16] "OverallTimeBodyAccelerometerJerkStandardDeviation()-X-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the X-axis over time.
#####[17] "OverallTimeBodyAccelerometerJerkStandardDeviation()-Y-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the Y-axis over time.
#####[18] "OverallTimeBodyAccelerometerJerkStandardDeviation()-Z-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the Z-axis over time.
#####[19] "OverallTimeBodyGyroscopeMean()-X-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the X-axis over time.
#####[20] "OverallTimeBodyGyroscopeMean()-Y-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the Y-axis over time.
#####[21] "OverallTimeBodyGyroscopeMean()-Z-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the Z-axis over time.
#####[22] "OverallTimeBodyGyroscopeStandardDeviation()-X-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the X-axis over time.
#####[23] "OverallTimeBodyGyroscopeStandardDeviation()-Y-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the Y-axis over time.
#####[24] "OverallTimeBodyGyroscopeStandardDeviation()-Z-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the Z-axis over time.
#####[25] "OverallTimeBodyGyroscopeJerkMean()-X-axis"                   
(double) Overall mean of the body's jerk effect on the phone's gyroscope along the X-axis over time.
#####[26] "OverallTimeBodyGyroscopeJerkMean()-Y-axis"                   
(double) Overall mean of the body's jerk effect on the phone's gyroscope along the Y-axis over time.
#####[27] "OverallTimeBodyGyroscopeJerkMean()-Z-axis"                   
(double) Overall mean of the body's jerk effect on the phone's gyroscope along the Z-axis over time.
#####[28] "OverallTimeBodyGyroscopeJerkStandardDeviation()-X-axis"      
(double) Overall mean standard deviation of the body's jerk effect on the phone's gyroscope along the X-axis over time.
#####[29] "OverallTimeBodyGyroscopeJerkStandardDeviation()-Y-axis"      
(double) Overall mean standard deviation of the body's jerk effect on the phone's gyroscope along the Y-axis over time.
#####[30] "OverallTimeBodyGyroscopeJerkStandardDeviation()-Z-axis"      
(double) Overall mean standard deviation of the body's jerk effect on the phone's gyroscope along the Z-axis over time.
#####[31] "OverallTimeBodyAccelerometerMagnitudeMean()"                 
(double) Overall mean of the magnitude of the body's effect on the phone's accelerometer over time.
#####[32] "OverallTimeBodyAccelerometerMagnitudeStandardDeviation()"    
(double) Overall mean standard deviation of the magnitude of the body's effect on the phone's accelerometer over time.
#####[33] "OverallTimeGravityAccelerometerMagnitudeMean()"              
(double) Overall mean of the magnitude of gravity's effect on the phone's accelerometer over time.
#####[34] "OverallTimeGravityAccelerometerMagnitudeStandardDeviation()" 
(double) Overall mean standard deviation of the magnitude of gravity's effect on the phone's accelerometer over time.
#####[35] "OverallTimeBodyAccelerometerJerkMagnitudeMean()"             
(double) Overall mean of the magnitude of the body's jerk effect on the phone's accelerometer over time.
#####[36] "OverallTimeBodyAccelerometerJerkMagnitudeStandardDeviation()"
(double) Overall mean standard deviation of the magnitude of the body's jerk effect on the phone's accelerometer over time.
#####[37] "OverallTimeBodyGyroscopeMagnitudeMean()"                     
(double) Overall mean of the magnitude of the body's effect on the phone's gyroscope over time.
#####[38] "OverallTimeBodyGyroscopeMagnitudeStandardDeviation()"        
(double) Overall mean standard deviation of the magnitude of the body's effect on the phone's gyroscope over time.
#####[39] "OverallTimeBodyGyroscopeJerkMagnitudeMean()"                 
(double) Overall mean of the magnitude of the body's jerk effect on the phone's gyroscope over time.
#####[40] "OverallTimeBodyGyroscopeJerkMagnitudeStandardDeviation()"    
(double) Overall mean standard deviation of the magnitude of the body's jerk effect on the phone's gyroscope over time.
#####[41] "OverallFrequencyBodyAccelerometerMean()-X-axis"                   
(double) Overall mean of the body's effect on the phone's accelerometer along the X-axis over the frequency domain.
#####[42] "OverallFrequencyBodyAccelerometerMean()-Y-axis"                   
(double) Overall mean of the body's effect on the phone's accelerometer along the Y-axis over the frequency domain.
#####[43] "OverallFrequencyBodyAccelerometerMean()-Z-axis"                   
(double) Overall mean of the body's effect on the phone's accelerometer along the Z-axis over the frequency domain.
#####[44] "OverallFrequencyBodyAccelerometerStandardDeviation()-X-axis"      
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the X-axis over the frequency domain.
#####[45] "OverallFrequencyBodyAccelerometerStandardDeviation()-Y-axis"      
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the Y-axis over the frequency domain.
#####[46] "OverallFrequencyBodyAccelerometerStandardDeviation()-Z-axis"      
(double) Overall mean standard deviation of the body's effect on the phone's accelerometer along the Z-axis over the frequency domain.
#####[47] "OverallFrequencyBodyAccelerometerMeanFrequency()-X-axis"          
(double) Overall mean frequency of the body's effect on the phone's accelerometer along the X-axis.
#####[48] "OverallFrequencyBodyAccelerometerMeanFrequency()-Y-axis"          
(double) Overall mean frequency of the body's effect on the phone's accelerometer along the Y-axis.
#####[49] "OverallFrequencyBodyAccelerometerMeanFrequency()-Z-axis"          
(double) Overall mean frequency of the body's effect on the phone's accelerometer along the Z-axis.
#####[50] "OverallFrequencyBodyAccelerometerJerkMean()-X-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the X-axis over the frequency domain.
#####[51] "OverallFrequencyBodyAccelerometerJerkMean()-Y-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the Y-axis over the frequency domain.
#####[52] "OverallFrequencyBodyAccelerometerJerkMean()-Z-axis"               
(double) Overall mean of the body's jerk effect on the phone's accelerometer along the Z-axis over the frequency domain.
#####[53] "OverallFrequencyBodyAccelerometerJerkStandardDeviation()-X-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the X-axis over the frequency domain.
#####[54] "OverallFrequencyBodyAccelerometerJerkStandardDeviation()-Y-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the Y-axis over the frequency domain.
#####[55] "OverallFrequencyBodyAccelerometerJerkStandardDeviation()-Z-axis"  
(double) Overall mean standard deviation of the body's jerk effect on the phone's accelerometer along the Z-axis over the frequency domain.
#####[56] "OverallFrequencyBodyAccelerometerJerkMeanFrequency()-X-axis"      
(double) Overall mean frequency of the body's jerk effect on the phone's accelerometer along the X-axis.
#####[57] "OverallFrequencyBodyAccelerometerJerkMeanFrequency()-Y-axis"      
(double) Overall mean frequency of the body's jerk effect on the phone's accelerometer along the Y-axis.
#####[58] "OverallFrequencyBodyAccelerometerJerkMeanFrequency()-Z-axis"      
(double) Overall mean frequency of the body's jerk effect on the phone's accelerometer along the Z-axis.
#####[59] "OverallFrequencyBodyGyroscopeMean()-X-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the X-axis over the frequency domain.
#####[60] "OverallFrequencyBodyGyroscopeMean()-Y-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the Y-axis over the frequency domain.
#####[61] "OverallFrequencyBodyGyroscopeMean()-Z-axis"                       
(double) Overall mean of the body's effect on the phone's gyroscope along the Z-axis over the frequency domain.
#####[62] "OverallFrequencyBodyGyroscopeStandardDeviation()-X-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the X-axis over the frequency domain.
#####[63] "OverallFrequencyBodyGyroscopeStandardDeviation()-Y-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the Y-axis over the frequency domain.
#####[64] "OverallFrequencyBodyGyroscopeStandardDeviation()-Z-axis"          
(double) Overall mean standard deviation of the body's effect on the phone's gyroscope along the Z-axis over the frequency domain.
#####[65] "OverallFrequencyBodyGyroscopeMeanFrequency()-X-axis"              
(double) Overall mean frequency of the body's effect on the phone's gyroscope along the X-axis.
#####[66] "OverallFrequencyBodyGyroscopeMeanFrequency()-Y-axis"              
(double) Overall mean frequency of the body's effect on the phone's gyroscope along the Y-axis.
#####[67] "OverallFrequencyBodyGyroscopeMeanFrequency()-Z-axis"              
(double) Overall mean frequency of the body's effect on the phone's gyroscope along the Z-axis.
#####[68] "OverallFrequencyBodyAccelerometerMagnitudeMean()"                 
(double) Overall mean of the magnitude of the body's effect on the phone's accelerometer over the frequency domain.
#####[69] "OverallFrequencyBodyAccelerometerMagnitudeStandardDeviation()"    
(double) Overall mean standard deviation of the magnitude of the body's effect on the phone's accelerometer over the frequency domain.
#####[70] "OverallFrequencyBodyAccelerometerMagnitudeMeanFrequency()"        
(double) Overall mean frequency of the magnitude of the body's effect on the phone's accelerometer.
#####[71] "OverallFrequencyBodyAccelerometerJerkMagnitudeMean()"             
(double) Overall mean of the magnitude of the body's jerk effect on the phone's accelerometer over the frequency domain.
#####[72] "OverallFrequencyBodyAccelerometerJerkMagnitudeStandardDeviation()"
(double) Overall mean standard deviation of the magnitude of the body's jerk effect on the phone's accelerometer over the frequency domain.
#####[73] "OverallFrequencyBodyAccelerometerJerkMagnitudeMeanFrequency()"    
(double) Overall mean frequency of the magnitude of the body's jerk effect on the phone's accelerometer.
#####[74] "OverallFrequencyBodyGyroscopeMagnitudeMean()"                     
(double) Overall mean of the magnitude of the body's effect on the phone's gyroscope over the frequency domain.
#####[75] "OverallFrequencyBodyGyroscopeMagnitudeStandardDeviation()"        
(double) Overall mean standard deviation of the magnitude of the body's effect on the phone's gyroscope over the frequency domain.
#####[76] "OverallFrequencyBodyGyroscopeMagnitudeMeanFrequency()"            
(double) Overall mean frequency of the magnitude of the body's effect on the phone's gyroscope.
#####[77] "OverallFrequencyBodyGyroscopeJerkMagnitudeMean()"                 
(double) Overall mean of the magnitude of the body's jerk effect on the phone's gyroscope over the frequency domain.
#####[78] "OverallFrequencyBodyGyroscopeJerkMagnitudeStandardDeviation()"    
(double) Overall mean standard deviation of the magnitude of the body's jerk effect on the phone's gyroscope over the frequency domain.
#####[79] "OverallFrequencyBodyGyroscopeJerkMagnitudeMeanFrequency()" 
(double) Overall mean frequency of the magnitude of the body's effect on the phone's gyroscope.

##Sources
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/
