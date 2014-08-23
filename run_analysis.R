# run_analysis.R
# Course Project for Getting and Cleaning Data
#

# Note: Some vague points were addressed according to the Course Project FAQ:
#       https://class.coursera.org/getdata-006/forum/thread?thread_id=43

# 1. Merge the train and test sets to create one dataset. We read in the X and Y
# train and test sets The columns of X and Y are joined, and then the rows of
# the train and test sets. Also have to add the subject IDs.

train_x_file <- "./UCI HAR Dataset/train/X_train.txt"
train_y_file <- "./UCI HAR Dataset/train/y_train.txt"
train_sub_file <- "./UCI HAR Dataset/train/subject_train.txt"
test_x_file  <- "./UCI HAR Dataset/test/X_test.txt"
test_y_file  <- "./UCI HAR Dataset/test/y_test.txt"
test_sub_file <- "./UCI HAR Dataset/test/subject_test.txt"

# Each field is a width of 16, and there are 561 fields based on the
# features.txt file
width_vector <- rep(16,561)

# Read in training set
train_x <- read.fwf(train_x_file,width_vector,header=F)
train_y <- read.table(train_y_file,header=F)
train_sub <- read.table(train_sub_file,header=F)
# Apply a descriptive name to training labels
names(train_y) <- "activityLabel"
# and to the subject
names(train_sub) <- "subject"

# Read in test set
test_x <- read.fwf(test_x_file,width_vector,header=F)
test_y <- read.table(test_y_file,header=F)
test_sub <- read.table(test_sub_file,header=F)
names(test_y) <- "activityLabel"
names(test_sub) <- "subject"

# Merge the features and labels
train_set <- cbind(train_x,train_y,train_sub)
test_set <- cbind(test_x,test_y,test_sub)

# Merge the train and test sets
dataset <- rbind(train_set,test_set)

# 2. Select just mean and std columns
feature_file <- "./UCI HAR Dataset/features.txt"
features <- read.table(feature_file,header=F)

# Get features that have mean or std in the name (case sensitive)
# Also note that since the row index matches V1, we can do the following
selectedFeatures <- features[grep(".*(mean|std).*",features$V2),]
# We get the indexes for the subject and activity to keep them in the data frame
subIdx <- ncol(dataset)
actIdx <- ncol(dataset)-1
selectedMeasures <- dataset[c(selectedFeatures[,1],subIdx,actIdx)]

# 3. Name the activities
# Read the activity list
act_file <- "./UCI HAR Dataset/activity_labels.txt"
activities <- read.table(act_file,header=F)
# Make the activity label a factor and use the activity file to do the mapping
# from levels to labels
selectedMeasures$activityLabel <- factor(selectedMeasures$activityLabel,levels=activities[,1],labels=activities[,2])

# 4. Label dataset with descriptive variable names

