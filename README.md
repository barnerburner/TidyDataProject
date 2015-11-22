# TidyDataProject
Getting and Cleaning Data Course Project Deliverables
============
The script run_analysis.R combines the principle files of subject/activity measurements into a single set, retains just the measurements which are a mean or standard deviation, then creates a tidy output.

The script was intended to be as general as possible - no variables were created or used containing a predetermined outside constant that could be rendered inaccurate if a different set of columns was chosen for processing.

The only assumptions the script makes are that the tidyr and dplyr packages in R have already been installed (and just need to be loaded to run) and that the UCI Har Dataset containing the full package of data and related supporting information in text files was simply unzipped into the working directory where the script will be run. No modification or rearranging of path names, or any other preprocessing should be necessary.

## Merging Sets
The script begins by loading the tidyr and dplyr packages, then reads in the six principle files of subject/activity measurements - subject_train, X_train, y_train, subject_test, X_test, y_test.

The common dimension between the files to assemble the test and train sets respectively is their number of rows, so the three files for each set were put together in subject-y-X order via column binding (cbind).

The common dimension between the assembled test and train sets is their number of columns, so they were merged into a single data set via row binding (rbind).

## Extracting desired measurements
Directions were to extract only the measurements on the mean and standard deviation for each measurement, so it was reasoned that those variables included any instance of "mean", "Mean", or "std()" in their names. "*mean*" captured all instances of "mean()" and "meanfreq()" (determined to be standard means and means of frequencies) both of which were desired, while "Mean" was just instances were a 

Column numbers for mean and std from features.txt and pare down the initial data set,

without forgetting subject and activity columns were appended to front (1, 2, '+2' shift at the end)