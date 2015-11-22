# TidyDataProject
Getting and Cleaning Data Course Project
============
The script [run_analysis.R](https://github.com/barnerburner/TidyDataProject/blob/master/run_analysis.R) combines the principle files of subject/activity measurements from the UCIHAR dataset into a single set, retains just the measurements which are a mean or standard deviation, then creates a tidy, descriptive output based on unique combinations of subject/activity.

The script was intended to be as general as possible - no variables were created or used containing a predetermined outside constant that could be rendered inaccurate if a different set of measurements were chosen for a tidied output (no external assumptions about what the number of rows/column should be - all values are determined internally). However, more cases would need to be added for variable name expansion before the script should be used for measurements derived from functions besides mean and standard deviation.

The only assumptions the script makes are that the tidyr and dplyr packages in R have already been installed (and just need to be loaded to run) and that the zipped UCI Har Dataset containing the full package of data and related supporting information in text files was simply unzipped into the working directory where the script will be run. No modification or rearranging of path names, or any other preprocessing should be necessary.
