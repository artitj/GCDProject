# README

This repo addresses the course project for the Aug 2014 "Getting and Cleaning" Coursera course.

## Contents
This includes 2 R source files:

* run_analysis.R - creates the tidy dataset (tidyOutput.txt)  
* makeCodebook.R - creates the CodeBook.md file from codebookHead.md and the 
tidy dataset (should be run after run_analysis.R) 

There are three Markdown documents:

* README.md - this file
* CodeBook.md - the code book for the output file tidyOutput.txt
* codebookHead.md - a Markdown document that contains the header of the 
Codebook.md

Finally, there is the output tidy dataset:

* tidyOutput.txt

## Data analysis
The *run_analysis.R* script does all the data analysis. This assumes a directory "UCI HAR Dataset" exists in the working directory with the contents of 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script loads the training and test files. The activity labels are separate from the features and subjects, so the first task performed is the columnwise merging of the features, activity labels, and subjects. Next, the training and testing sets are mergeid columnwise.

Once that is done, the feature labels from the features.txt file are examined to identify just those that have "mean" or "std" in them, for mean and standard deviation respectively. Note that **meanFreq** was considered a "mean" column by this criteria. Only the columns corresponding to these features are selected.

Next, the activity labels, which are encoded as numbers, are replaced with their corresponding textual descriptions. The columns of the dataset are named according to their labels in the features.txt file.

Finally, a tidy dataset is created with the mean of each column for each activity and subject, and the result is written to a text file.

## Output format
The output file *tidyOutput.txt* was created with the write.table function in R. It can be read back into R with the following call:
```R
data <- read.table("tidyOutput.csv")
```

## Codebook creation
The codebook is created through an R script, *makeCodebook.R*, that determines some descriptive statistics for each variable.
