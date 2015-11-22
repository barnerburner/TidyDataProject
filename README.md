# TidyDataProject
Getting and Cleaning Data Course Project
============
The script run_analysis.R combines the principle files of subject/activity measurements into a single set, retains just the measurements which are a mean or standard deviation, then creates a tidy output.

The script was intended to be as general as possible - no variables were created or used containing a predetermined outside constant that could be rendered inaccurate and require modification of the script if a different set of measurements were chosen for a tidied output.

The only assumptions the script makes are that the tidyr and dplyr packages in R have already been installed (and just need to be loaded to run) and that the zipped UCI Har Dataset containing the full package of data and related supporting information in text files was simply unzipped into the working directory where the script will be run. No modification or rearranging of path names, or any other preprocessing should be necessary.

## Merging Sets
The script begins by loading the tidyr and dplyr packages, then reads in the six principle files of subject/activity measurements - subject_train.txt, X_train.txt, y_train.txt, subject_test.txt, X_test.txt, y_test.txt.

The common dimension between the files to assemble the 'test' and 'train' sets respectively is their number of observations (rows), so the three files for each set are put together in subject-y-X order via column binding (cbind).

The common dimension between the assembled 'test' and 'train' sets is their number of variables (columns), so they are merged into a single data set via row binding (rbind).

## Extracting desired measurements
Directions were to extract only the measurements on the mean and standard deviation for each measurement, so it was reasoned that those variables in the features file included any instance of "mean", "Mean", or "std()" in their names. "mean" captures all instances of "mean()" and "meanfreq()" (determined to be standard means and means of frequencies) both of which were desired, while "Mean" was just instances where a calculated mean variable was then used as an input to calculate an angle. These angles calculated from input mean values were figured to be mean angles in and of themselves, and included as well.

Features.txt gets read in, and strings with wildcards (*) for any appearance of "mean", "Mean", or "std()" within a longer sequence are created with glob2rx(), matched with all instances in features by grep(), and row numbers of such matches are returned (their row numbers being equivalent to the column numbers in the original X_train and X_test files). Those returned values are then used to create a new pared down dataset, remembering that subject and activity columns were appended in front of the original X_sets and using a '+2' shift as such to maintain accuracy.

A vector for column names is then assembled, beginning with "Subject" and "Activity", then tacking on all feature names that were matched above.

## Relabeling activities
To change activities from numeric factor designations to descriptive values, activity_labels.txt is read in, and each factor 1:6 in the activities column is changed to a character of their matching description from activity_labels.

## Tidying the dataset via split-apply-combine
There were 30 subjects in this study, each of whom did all 6 activities, so there should be a total of 180 entries in the tidied set. Multiple instances exist for each unique subject/activity pair, so the dataset needs to be split by each unique pair, the mean function then needs to be applied to each measured variable to condense each pair down to a single entry, then all entries need to be combined back together.

This is done with a loop that iterates through the measured variable columns (starting at t = 3 because subject and activity from columns 1 and 2 are what will form our unique pairs). Columns 1 and 2 are combined together into a single character value via paste for the unique pairs and the dataset subsequently split by each, sapply calculates the means for each variable, and cbind combines all of the results together.

The result is a double matrix with the unique subject/activity pairs as the row names. The matrix is coerced into being a data frame, and the subject and activity columns are reformed by using the mutate() function on subsets of the row names. The row names were put together in "(subject id)" + " " + "activity" format, so extract_numeric() pulls the numeric portion of each name (subject id), while gsub("^.* ", "", rownames()) looks for any number of characters from the beginning followed by a blank space and returns the remainder of the name that came after that blank space.

Mutate() appends new columns to the end of the data frame, so the columns are rearranged to move Subject and Activity from the last two columns to the first two, while the rows are rearranged in order first by Subject, then by Activity.

Column names are then set by the vector created for them earlier, and the result written as a table to a text file.
