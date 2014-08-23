## README

This repo addresses the course project for the Aug 2014 "Getting and Cleaning" Coursera course.

## Contents
This includes 2 R source files:
run_analysis.R - creates the tidy dataset (tidyOutput.txt). This assumes a directory "UCI HAR Dataset" exists in the working directory with the contents of 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
makeCodebook.R - creates the CodeBook.md file

There are two Markdown documents:
README.md - this file
CodeBook.md - the code book for the output file tidyOutput.txt

## Output format
The output file tidyOutput.txt was created with the write.table function in R. It can be read back into R with the following call
data <- read.table("tidyOutput.csv")

