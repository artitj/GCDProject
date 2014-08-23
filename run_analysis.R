# run_analysis.R
# Course Project for Getting and Cleaning Data
#

# Note: Some vague points were addressed according to the Course Project FAQ:
#       https://class.coursera.org/getdata-006/forum/thread?thread_id=43

# 1. Merge the train and test sets to create one dataset We read in the X and Y
# train and test sets The columns of X and Y are joined, and then the rows of
# the train and test sets

train_x_file <- "./UCI HAR Dataset/train/X_train.txt"
train_y_file <- "./UCI HAR Dataset/train/y_train.txt"
test_x_file  <- "./UCI HAR Dataset/test/X_test.txt"
test_y_file  <- "./UCI HAR Dataset/test/y_test.txt"

# Each field is a width of 16, and there are 561 fields based on the
# features.txt file
width_vector <- rep(16,561)

# Read in training set
train_x <- read.fwf(train_x_file,width_vector,header=F)
train_y <- read.table(train_y_file,header=F)
# Apply a descriptive name to training labels
names(train_y) <- "activityLabel"

# Read in test set
test_x <- read.fwf(test_x_file,width_vector,header=F)
test_y <- read.table(test_y_file,header=F)
names(test_y) <- "activityLabel"

# Merge the features and labels
train_set <- cbind(train_x,train_y)
test_set <- cbind(test_x,test_y)

# Merge the train and test sets
dataset <- rbind(train_set,test_set)