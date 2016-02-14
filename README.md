# Getting and Cleaning Data Course Project
The script "run_analysis.r" downloads raw data from an experiment, process them and outputs a file "tidydata.txt" that contains data in an appropriate format for analysis.
A description of the output dataset can be found in the file "Codebook.md" of this repository.

## Raw data source
Information about the experiment:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Zip file containing the data and metadata:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Processing steps
The script performs the following operations:

0. Creates a repository for the data called "projectW4", download the zip file containing the data, unzip it in a repository called "UCI HAR Dataset" within "projectW4" and load the raw datasets
1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set
4. Label the data set with descriptive variable names.
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject. The tidy dataset is saved in a file called "tidydata.txt"

## Dependencies
- "dplyr" package.

## How to run the script?
Note: the script was tested with the following version of R: "R version 3.2.3 (2015-12-10)"

1. Install the "dplyr" package with the following command:
'install.packages("dplyr")'

2. Download the script "run_analysis.R" and put it in your working directory

3. Run the script with the following command:

`source("run_analysis.R")`

## How to load the tidy dataset?
1. Run the script (see above)

2. Load the file in a dataframe called "myData" and view it:

`myData<- read.table("projectW4\\UCI HAR Dataset\\tidydata.txt",header = TRUE)`

`View(myData)`