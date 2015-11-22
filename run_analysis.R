library(tidyr)
library(dplyr)

## read in the six principle files of subject/activity measurements
subject_train <- read.table("~/UCIHAR/UCI HAR Dataset/train/subject_train.txt", quote="\"", comment.char="")
X_train <- read.table("~/UCIHAR/UCI HAR Dataset/train/X_train.txt", quote="\"", comment.char="")
y_train <- read.table("~/UCIHAR/UCI HAR Dataset/train/y_train.txt", quote="\"", comment.char="")
subject_test <- read.table("~/UCIHAR/UCI HAR Dataset/test/subject_test.txt", quote="\"", comment.char="")
X_test <- read.table("~/UCIHAR/UCI HAR Dataset/test/X_test.txt", quote="\"", comment.char="")
y_test <- read.table("~/UCIHAR/UCI HAR Dataset/test/y_test.txt", quote="\"", comment.char="")

## Assemble into datasets for test and train, then combine into one set

testset <- cbind(subject_test, y_test, X_test)
trainset <- cbind(subject_train, y_train, X_train)

initdataset <- rbind(testset, trainset)

## Extract column numbers for mean and std from features.txt and pare down the initial data set,
## without forgetting subject and activity columns were appended to front (1, 2, '+2' shift at the end)

features <- read.table("~/UCIHAR/UCI HAR Dataset/features.txt", quote="\"", comment.char="")
MeansandStds <- sort(c(grep(glob2rx("*mean()*"), features[[2]]), grep(glob2rx("*Mean*"), features[[2]]),grep(glob2rx("*std()*"), features[[2]])))

paredset <- initdataset[,c(1,2,(MeansandStds+2))]

## Relabel activities (originally y_sets, now are column 2)

actlabels <- read.table("~/UCIHAR/UCI HAR Dataset/activity_labels.txt", quote="\"", comment.char="")

for(i in 1:(nrow(paredset)))
  paredset[i, 2] = as.character(actlabels[(paredset[i, 2]),2])

## Set up vector for variable (column) names

features <- read.table("~/UCIHAR/UCI HAR Dataset/features.txt", quote="\"", comment.char="")
varlabels <- c("Subject", "Activity")

for(n in MeansandStds)
  varlabels <- c(varlabels, as.character(features[n,2]))

## Tidy by average for each activity and subject (30 subjects * 6 activities = 180 entries)

condensedset <- NULL
tidyset <- NULL

for(t in 3:(ncol(paredset)))
condensedset <- cbind(condensedset, sapply(split(paredset[[t]],(paste(as.character(paredset[[1]]), as.character(paredset[[2]])))),mean))

almostset <- as.data.frame(condensedset)

tidyset <- mutate(almostset, Subject = extract_numeric(rownames(almostset)), Activity = gsub( "^.* ", "", rownames(almostset)))
col <- ncol(tidyset)
tidyset <- tidyset[,c(col-1,col,1:(col-2))] %>% arrange(Subject, Activity)
colnames(tidyset) <- varlabels

write.table(tidyset, file = "tidyset.txt", row.names = FALSE)