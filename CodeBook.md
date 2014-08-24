# Codebook

The data contained is this dataset is originally from the [UCI Machine Learning Repository: Human Activity Recognition using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

This data is originally from:

```
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory 
DITEN - UniversitÃ  degli Studi di Genova, Genoa I-16145, Italy. 
activityrecognition '@' smartlab.ws 
www.smartlab.ws 
```

The description of the dataset from the source is as follows:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Original Feature Description

The original description of the features is as follows and can be found in the *features_info.txt* file in the archive for the dataset.

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

> These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

> The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency

## Modifications

This dataset contains modifications to the original dataset. Specifically:

* Combined the training and test datasets into a single dataset
* Selection of only the *mean(), std(), and meanFreq()* features
* Computation of the mean of the features noted above for each combination of subject and activity.

Note that the original columns names were retained in the dataset.

The output file is *tidyOutput.txt*.


### Variables

This dataset contains  180  which corresponds to all combinations of  30  subjects and  6  activities.There are  81  columns in the dataset.These columns are described below.

---
Variable name:  Activity 

Colunm position:  1 

R Class:  factor 

Range:  WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING 

---
Variable name:  Subject 

Colunm position:  2 

R Class:  integer 

Range:  [ 1 , 30 ] 

---
Variable name:  tBodyAcc-mean()-X 

Colunm position:  3 

R Class:  numeric 

Range:  [ 0.22159824394 , 0.3014610196 ] 

---
Variable name:  tBodyAcc-mean()-Y 

Colunm position:  4 

R Class:  numeric 

Range:  [ -0.0405139534294 , -0.00130828765170213 ] 

---
Variable name:  tBodyAcc-mean()-Z 

Colunm position:  5 

R Class:  numeric 

Range:  [ -0.152513899520833 , -0.07537846886 ] 

---
Variable name:  tBodyAcc-std()-X 

Colunm position:  6 

R Class:  numeric 

Range:  [ -0.996068635384615 , 0.626917070512821 ] 

---
Variable name:  tBodyAcc-std()-Y 

Colunm position:  7 

R Class:  numeric 

Range:  [ -0.990240946666667 , 0.616937015333333 ] 

---
Variable name:  tBodyAcc-std()-Z 

Colunm position:  8 

R Class:  numeric 

Range:  [ -0.987658662307692 , 0.609017879074074 ] 

---
Variable name:  tGravityAcc-mean()-X 

Colunm position:  9 

R Class:  numeric 

Range:  [ -0.680043155060241 , 0.974508732 ] 

---
Variable name:  tGravityAcc-mean()-Y 

Colunm position:  10 

R Class:  numeric 

Range:  [ -0.479894842941176 , 0.956593814210526 ] 

---
Variable name:  tGravityAcc-mean()-Z 

Colunm position:  11 

R Class:  numeric 

Range:  [ -0.49508872037037 , 0.9578730416 ] 

---
Variable name:  tGravityAcc-std()-X 

Colunm position:  12 

R Class:  numeric 

Range:  [ -0.996764227384615 , -0.829554947808219 ] 

---
Variable name:  tGravityAcc-std()-Y 

Colunm position:  13 

R Class:  numeric 

Range:  [ -0.99424764884058 , -0.643578361424658 ] 

---
Variable name:  tGravityAcc-std()-Z 

Colunm position:  14 

R Class:  numeric 

Range:  [ -0.990957249538462 , -0.610161166287671 ] 

---
Variable name:  tBodyAccJerk-mean()-X 

Colunm position:  15 

R Class:  numeric 

Range:  [ 0.0426880986186441 , 0.130193043809524 ] 

---
Variable name:  tBodyAccJerk-mean()-Y 

Colunm position:  16 

R Class:  numeric 

Range:  [ -0.0386872111282051 , 0.056818586275 ] 

---
Variable name:  tBodyAccJerk-mean()-Z 

Colunm position:  17 

R Class:  numeric 

Range:  [ -0.0674583919268293 , 0.0380533591627451 ] 

---
Variable name:  tBodyAccJerk-std()-X 

Colunm position:  18 

R Class:  numeric 

Range:  [ -0.994604542264151 , 0.544273037307692 ] 

---
Variable name:  tBodyAccJerk-std()-Y 

Colunm position:  19 

R Class:  numeric 

Range:  [ -0.989513565652174 , 0.355306716915385 ] 

---
Variable name:  tBodyAccJerk-std()-Z 

Colunm position:  20 

R Class:  numeric 

Range:  [ -0.993288313333333 , 0.0310157077775926 ] 

---
Variable name:  tBodyGyro-mean()-X 

Colunm position:  21 

R Class:  numeric 

Range:  [ -0.205775427307692 , 0.19270447595122 ] 

---
Variable name:  tBodyGyro-mean()-Y 

Colunm position:  22 

R Class:  numeric 

Range:  [ -0.204205356087805 , 0.0274707556666667 ] 

---
Variable name:  tBodyGyro-mean()-Z 

Colunm position:  23 

R Class:  numeric 

Range:  [ -0.0724546025804878 , 0.179102058245614 ] 

---
Variable name:  tBodyGyro-std()-X 

Colunm position:  24 

R Class:  numeric 

Range:  [ -0.994276591304348 , 0.267657219333333 ] 

---
Variable name:  tBodyGyro-std()-Y 

Colunm position:  25 

R Class:  numeric 

Range:  [ -0.994210471914894 , 0.476518714444444 ] 

---
Variable name:  tBodyGyro-std()-Z 

Colunm position:  26 

R Class:  numeric 

Range:  [ -0.985538363333333 , 0.564875818162963 ] 

---
Variable name:  tBodyGyroJerk-mean()-X 

Colunm position:  27 

R Class:  numeric 

Range:  [ -0.157212539189362 , -0.0220916265065217 ] 

---
Variable name:  tBodyGyroJerk-mean()-Y 

Colunm position:  28 

R Class:  numeric 

Range:  [ -0.0768089915604167 , -0.0132022768074468 ] 

---
Variable name:  tBodyGyroJerk-mean()-Z 

Colunm position:  29 

R Class:  numeric 

Range:  [ -0.0924998531372549 , -0.00694066389361702 ] 

---
Variable name:  tBodyGyroJerk-std()-X 

Colunm position:  30 

R Class:  numeric 

Range:  [ -0.99654254057971 , 0.179148649684615 ] 

---
Variable name:  tBodyGyroJerk-std()-Y 

Colunm position:  31 

R Class:  numeric 

Range:  [ -0.997081575652174 , 0.295945926186441 ] 

---
Variable name:  tBodyGyroJerk-std()-Z 

Colunm position:  32 

R Class:  numeric 

Range:  [ -0.995380794637681 , 0.193206498960417 ] 

---
Variable name:  tBodyAccMag-mean() 

Colunm position:  33 

R Class:  numeric 

Range:  [ -0.986493196666667 , 0.644604325128205 ] 

---
Variable name:  tBodyAccMag-std() 

Colunm position:  34 

R Class:  numeric 

Range:  [ -0.986464542615385 , 0.428405922622222 ] 

---
Variable name:  tGravityAccMag-mean() 

Colunm position:  35 

R Class:  numeric 

Range:  [ -0.986493196666667 , 0.644604325128205 ] 

---
Variable name:  tGravityAccMag-std() 

Colunm position:  36 

R Class:  numeric 

Range:  [ -0.986464542615385 , 0.428405922622222 ] 

---
Variable name:  tBodyAccJerkMag-mean() 

Colunm position:  37 

R Class:  numeric 

Range:  [ -0.99281471515625 , 0.434490400974359 ] 

---
Variable name:  tBodyAccJerkMag-std() 

Colunm position:  38 

R Class:  numeric 

Range:  [ -0.994646916811594 , 0.450612065720513 ] 

---
Variable name:  tBodyGyroMag-mean() 

Colunm position:  39 

R Class:  numeric 

Range:  [ -0.980740846769231 , 0.418004608615385 ] 

---
Variable name:  tBodyGyroMag-std() 

Colunm position:  40 

R Class:  numeric 

Range:  [ -0.981372675614035 , 0.299975979851852 ] 

---
Variable name:  tBodyGyroJerkMag-mean() 

Colunm position:  41 

R Class:  numeric 

Range:  [ -0.997322526811594 , 0.0875816618205128 ] 

---
Variable name:  tBodyGyroJerkMag-std() 

Colunm position:  42 

R Class:  numeric 

Range:  [ -0.997666071594203 , 0.250173204117966 ] 

---
Variable name:  fBodyAcc-mean()-X 

Colunm position:  43 

R Class:  numeric 

Range:  [ -0.995249932641509 , 0.537012022051282 ] 

---
Variable name:  fBodyAcc-mean()-Y 

Colunm position:  44 

R Class:  numeric 

Range:  [ -0.989034304057971 , 0.524187686888889 ] 

---
Variable name:  fBodyAcc-mean()-Z 

Colunm position:  45 

R Class:  numeric 

Range:  [ -0.989473926666667 , 0.280735952206667 ] 

---
Variable name:  fBodyAcc-std()-X 

Colunm position:  46 

R Class:  numeric 

Range:  [ -0.996604570307692 , 0.658506543333333 ] 

---
Variable name:  fBodyAcc-std()-Y 

Colunm position:  47 

R Class:  numeric 

Range:  [ -0.990680395362319 , 0.560191344 ] 

---
Variable name:  fBodyAcc-std()-Z 

Colunm position:  48 

R Class:  numeric 

Range:  [ -0.987224804307692 , 0.687124163703704 ] 

---
Variable name:  fBodyAcc-meanFreq()-X 

Colunm position:  49 

R Class:  numeric 

Range:  [ -0.635913046346154 , 0.159123629063636 ] 

---
Variable name:  fBodyAcc-meanFreq()-Y 

Colunm position:  50 

R Class:  numeric 

Range:  [ -0.379518455061538 , 0.466528231788462 ] 

---
Variable name:  fBodyAcc-meanFreq()-Z 

Colunm position:  51 

R Class:  numeric 

Range:  [ -0.520114793584906 , 0.402532553395833 ] 

---
Variable name:  fBodyAccJerk-mean()-X 

Colunm position:  52 

R Class:  numeric 

Range:  [ -0.994630797358491 , 0.474317256051282 ] 

---
Variable name:  fBodyAccJerk-mean()-Y 

Colunm position:  53 

R Class:  numeric 

Range:  [ -0.989398823913043 , 0.276716853307692 ] 

---
Variable name:  fBodyAccJerk-mean()-Z 

Colunm position:  54 

R Class:  numeric 

Range:  [ -0.992018447826087 , 0.157775692377778 ] 

---
Variable name:  fBodyAccJerk-std()-X 

Colunm position:  55 

R Class:  numeric 

Range:  [ -0.995073759245283 , 0.476803887476923 ] 

---
Variable name:  fBodyAccJerk-std()-Y 

Colunm position:  56 

R Class:  numeric 

Range:  [ -0.990468082753623 , 0.349771285415897 ] 

---
Variable name:  fBodyAccJerk-std()-Z 

Colunm position:  57 

R Class:  numeric 

Range:  [ -0.993107759855072 , -0.00623647528983051 ] 

---
Variable name:  fBodyAccJerk-meanFreq()-X 

Colunm position:  58 

R Class:  numeric 

Range:  [ -0.576044001875 , 0.331449281481482 ] 

---
Variable name:  fBodyAccJerk-meanFreq()-Y 

Colunm position:  59 

R Class:  numeric 

Range:  [ -0.601971415384615 , 0.195677336307692 ] 

---
Variable name:  fBodyAccJerk-meanFreq()-Z 

Colunm position:  60 

R Class:  numeric 

Range:  [ -0.62755547372549 , 0.230107945944444 ] 

---
Variable name:  fBodyGyro-mean()-X 

Colunm position:  61 

R Class:  numeric 

Range:  [ -0.99312260884058 , 0.474962448333333 ] 

---
Variable name:  fBodyGyro-mean()-Y 

Colunm position:  62 

R Class:  numeric 

Range:  [ -0.994025488297872 , 0.328817010088889 ] 

---
Variable name:  fBodyGyro-mean()-Z 

Colunm position:  63 

R Class:  numeric 

Range:  [ -0.985957788 , 0.492414379822222 ] 

---
Variable name:  fBodyGyro-std()-X 

Colunm position:  64 

R Class:  numeric 

Range:  [ -0.994652185217391 , 0.196613286661538 ] 

---
Variable name:  fBodyGyro-std()-Y 

Colunm position:  65 

R Class:  numeric 

Range:  [ -0.994353086595745 , 0.646233637037037 ] 

---
Variable name:  fBodyGyro-std()-Z 

Colunm position:  66 

R Class:  numeric 

Range:  [ -0.986725274871795 , 0.522454216314815 ] 

---
Variable name:  fBodyGyro-meanFreq()-X 

Colunm position:  67 

R Class:  numeric 

Range:  [ -0.395770150677419 , 0.249209411510602 ] 

---
Variable name:  fBodyGyro-meanFreq()-Y 

Colunm position:  68 

R Class:  numeric 

Range:  [ -0.666814815306122 , 0.273141323315789 ] 

---
Variable name:  fBodyGyro-meanFreq()-Z 

Colunm position:  69 

R Class:  numeric 

Range:  [ -0.507490866734694 , 0.3770740968 ] 

---
Variable name:  fBodyAccMag-mean() 

Colunm position:  70 

R Class:  numeric 

Range:  [ -0.986800645362319 , 0.586637550769231 ] 

---
Variable name:  fBodyAccMag-std() 

Colunm position:  71 

R Class:  numeric 

Range:  [ -0.987648484461539 , 0.178684580868889 ] 

---
Variable name:  fBodyAccMag-meanFreq() 

Colunm position:  72 

R Class:  numeric 

Range:  [ -0.312338030213846 , 0.435846931652174 ] 

---
Variable name:  fBodyBodyAccJerkMag-mean() 

Colunm position:  73 

R Class:  numeric 

Range:  [ -0.993998275797101 , 0.538404846128205 ] 

---
Variable name:  fBodyBodyAccJerkMag-std() 

Colunm position:  74 

R Class:  numeric 

Range:  [ -0.994366667681159 , 0.316346415348718 ] 

---
Variable name:  fBodyBodyAccJerkMag-meanFreq() 

Colunm position:  75 

R Class:  numeric 

Range:  [ -0.125210388757581 , 0.488088499666667 ] 

---
Variable name:  fBodyBodyGyroMag-mean() 

Colunm position:  76 

R Class:  numeric 

Range:  [ -0.986535242105263 , 0.203979764835897 ] 

---
Variable name:  fBodyBodyGyroMag-std() 

Colunm position:  77 

R Class:  numeric 

Range:  [ -0.981468841692308 , 0.236659662496296 ] 

---
Variable name:  fBodyBodyGyroMag-meanFreq() 

Colunm position:  78 

R Class:  numeric 

Range:  [ -0.456638670923077 , 0.409521611525424 ] 

---
Variable name:  fBodyBodyGyroJerkMag-mean() 

Colunm position:  79 

R Class:  numeric 

Range:  [ -0.997617389275362 , 0.146618569064407 ] 

---
Variable name:  fBodyBodyGyroJerkMag-std() 

Colunm position:  80 

R Class:  numeric 

Range:  [ -0.99758523057971 , 0.287834616098305 ] 

---
Variable name:  fBodyBodyGyroJerkMag-meanFreq() 

Colunm position:  81 

R Class:  numeric 

Range:  [ -0.182923596577778 , 0.426301679855072 ] 

