This modified Codebooks indicate all the variables in the tidy dataset and summaries calculated, along with units, and any other relevant information.

# Subject
- An identifier of the subject who carried out the experiment.
- Interger variables ranging from 1 to 30.
- 70% of the subjects was selected for generating the training data and 30% the test data.
- The raw datasets have seperate datasets for training and testing subjects.
- The tidy data merged the training and the testing sets to create one dataset. 
- Tidy data, the new variable "Group" in the tidy dataset indicates the observation is from training set or testing set.
  - "train"--- observation from raw training datasets
  - "test" --- observation from raw training datasets

# Activities
- In the raw dataset, the activity labels are as following. 
- Interger variables ranging from 1 to 6.
  - 1 --- WALKING --- subject was walking during the test
  - 2 --- WALKING_UPSTAIRS --- subject was walking up a staircase during the test
  - 3 --- WALKING_DOWNSTAIRS --- subject was walking down a staircase during the test
  - 4 --- SITTING --- subject was sitting during the test
  - 5 --- STANDING --- subject was standing during the test
  - 6 --- LAYING --- subject was laying down during the test
- In the tidy dataset, the activities are labeled with descriptive activity names
  "WALKING", "WALKING_UPSTAIRS, "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
- Character factor variables.
  
# Features
-  Features are normalized and bounded within [-1,1].
-  In the raw datasets, feature selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

  - The tidy data only include features on the mean and standard deviation for each measurement. Extracted by searching variable names containg "mean" and "std".
  - Dropped special characters, such as "()", "-", and capitalized "M" and "S" to appropriatedly labels the dataset with descriptive vaiable names.

    Comparing variable names of raw data and tidy data
      Raw data variables              Tidy data variables                          
 [1,] "tBodyAcc-mean()-X"               "tBodyAccMeanX"               
 [2,] "tBodyAcc-mean()-Y"               "tBodyAccMeanY"               
 [3,] "tBodyAcc-mean()-Z"               "tBodyAccMeanZ"               
 [4,] "tBodyAcc-std()-X"                "tBodyAccStdX"                
 [5,] "tBodyAcc-std()-Y"                "tBodyAccStdY"                
 [6,] "tBodyAcc-std()-Z"                "tBodyAccStdZ"                
 [7,] "tGravityAcc-mean()-X"            "tGravityAccMeanX"            
 [8,] "tGravityAcc-mean()-Y"            "tGravityAccMeanY"            
 [9,] "tGravityAcc-mean()-Z"            "tGravityAccMeanZ"            
[10,] "tGravityAcc-std()-X"             "tGravityAccStdX"             
[11,] "tGravityAcc-std()-Y"             "tGravityAccStdY"             
[12,] "tGravityAcc-std()-Z"             "tGravityAccStdZ"             
[13,] "tBodyAccJerk-mean()-X"           "tBodyAccJerkMeanX"           
[14,] "tBodyAccJerk-mean()-Y"           "tBodyAccJerkMeanY"           
[15,] "tBodyAccJerk-mean()-Z"           "tBodyAccJerkMeanZ"           
[16,] "tBodyAccJerk-std()-X"            "tBodyAccJerkStdX"            
[17,] "tBodyAccJerk-std()-Y"            "tBodyAccJerkStdY"            
[18,] "tBodyAccJerk-std()-Z"            "tBodyAccJerkStdZ"            
[19,] "tBodyGyro-mean()-X"              "tBodyGyroMeanX"              
[20,] "tBodyGyro-mean()-Y"              "tBodyGyroMeanY"              
[21,] "tBodyGyro-mean()-Z"              "tBodyGyroMeanZ"              
[22,] "tBodyGyro-std()-X"               "tBodyGyroStdX"               
[23,] "tBodyGyro-std()-Y"               "tBodyGyroStdY"               
[24,] "tBodyGyro-std()-Z"               "tBodyGyroStdZ"               
[25,] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerkMeanX"          
[26,] "tBodyGyroJerk-mean()-Y"          "tBodyGyroJerkMeanY"          
[27,] "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerkMeanZ"          
[28,] "tBodyGyroJerk-std()-X"           "tBodyGyroJerkStdX"           
[29,] "tBodyGyroJerk-std()-Y"           "tBodyGyroJerkStdY"           
[30,] "tBodyGyroJerk-std()-Z"           "tBodyGyroJerkStdZ"           
[31,] "tBodyAccMag-mean()"              "tBodyAccMagMean"             
[32,] "tBodyAccMag-std()"               "tBodyAccMagStd"              
[33,] "tGravityAccMag-mean()"           "tGravityAccMagMean"          
[34,] "tGravityAccMag-std()"            "tGravityAccMagStd"           
[35,] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMagMean"         
[36,] "tBodyAccJerkMag-std()"           "tBodyAccJerkMagStd"          
[37,] "tBodyGyroMag-mean()"             "tBodyGyroMagMean"            
[38,] "tBodyGyroMag-std()"              "tBodyGyroMagStd"             
[39,] "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMagMean"        
[40,] "tBodyGyroJerkMag-std()"          "tBodyGyroJerkMagStd"         
[41,] "fBodyAcc-mean()-X"               "fBodyAccMeanX"               
[42,] "fBodyAcc-mean()-Y"               "fBodyAccMeanY"               
[43,] "fBodyAcc-mean()-Z"               "fBodyAccMeanZ"               
[44,] "fBodyAcc-std()-X"                "fBodyAccStdX"                
[45,] "fBodyAcc-std()-Y"                "fBodyAccStdY"                
[46,] "fBodyAcc-std()-Z"                "fBodyAccStdZ"                
[47,] "fBodyAcc-meanFreq()-X"           "fBodyAccMeanFreqX"           
[48,] "fBodyAcc-meanFreq()-Y"           "fBodyAccMeanFreqY"           
[49,] "fBodyAcc-meanFreq()-Z"           "fBodyAccMeanFreqZ"           
[50,] "fBodyAccJerk-mean()-X"           "fBodyAccJerkMeanX"           
[51,] "fBodyAccJerk-mean()-Y"           "fBodyAccJerkMeanY"           
[52,] "fBodyAccJerk-mean()-Z"           "fBodyAccJerkMeanZ"           
[53,] "fBodyAccJerk-std()-X"            "fBodyAccJerkStdX"            
[54,] "fBodyAccJerk-std()-Y"            "fBodyAccJerkStdY"            
[55,] "fBodyAccJerk-std()-Z"            "fBodyAccJerkStdZ"            
[56,] "fBodyAccJerk-meanFreq()-X"       "fBodyAccJerkMeanFreqX"       
[57,] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerkMeanFreqY"       
[58,] "fBodyAccJerk-meanFreq()-Z"       "fBodyAccJerkMeanFreqZ"       
[59,] "fBodyGyro-mean()-X"              "fBodyGyroMeanX"              
[60,] "fBodyGyro-mean()-Y"              "fBodyGyroMeanY"              
[61,] "fBodyGyro-mean()-Z"              "fBodyGyroMeanZ"              
[62,] "fBodyGyro-std()-X"               "fBodyGyroStdX"               
[63,] "fBodyGyro-std()-Y"               "fBodyGyroStdY"               
[64,] "fBodyGyro-std()-Z"               "fBodyGyroStdZ"               
[65,] "fBodyGyro-meanFreq()-X"          "fBodyGyroMeanFreqX"          
[66,] "fBodyGyro-meanFreq()-Y"          "fBodyGyroMeanFreqY"          
[67,] "fBodyGyro-meanFreq()-Z"          "fBodyGyroMeanFreqZ"          
[68,] "fBodyAccMag-mean()"              "fBodyAccMagMean"             
[69,] "fBodyAccMag-std()"               "fBodyAccMagStd"              
[70,] "fBodyAccMag-meanFreq()"          "fBodyAccMagMeanFreq"         
[71,] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMagMean"     
[72,] "fBodyBodyAccJerkMag-std()"       "fBodyBodyAccJerkMagStd"      
[73,] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyAccJerkMagMeanFreq"    
[74,] "fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMagMean"        
[75,] "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMagStd"         
[76,] "fBodyBodyGyroMag-meanFreq()"     "fBodyBodyGyroMagMeanFreq"    
[77,] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMagMean"    
[78,] "fBodyBodyGyroJerkMag-std()"      "fBodyBodyGyroJerkMagStd"     
[79,] "fBodyBodyGyroJerkMag-meanFreq()" "fBodyBodyGyroJerkMagMeanFreq"
