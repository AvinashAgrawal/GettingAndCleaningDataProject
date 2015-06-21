# Getting and Cleaning Data - Project Code Book
# Introduction
This Code Book has been written to accompany the Getting and Cleaning Data course's project code. The goal of the project is to obtain wearable computing data and to process it into a tidy dataset, as per the requirements stated on the project page. The Code Book will describes the variables, data and transformations performed on the raw data to obtain the final result.

# Project Overview
As the world has gotten more mobile, the need to capture data that is being generated on-the-go has increased. This project deals with one such aspect where information has been collected on human movements. 

The data has been collected using a smartphone attached to the waist of volunteers while they performed **activities** in a controlled and monitored environment. There are 6 activities. The 30 **subjects** have been randomly divided into 2 groups, train and test.

Various data points, or **features**, collected by the smartphone's accelerometer and gyroscope, on all three axes, have been compiled and stored in raw, text files. In addition, several statistical calculations were performed on the data point and amalgamated in the same record. In total, there are 561 feature-axis-calculation combinations for each row of data.

The student is expected to merge this data into a more comprehensible and workable format. This result set is to be then processed and analysed using certain metrics and summarized into a tidy dataset. Additional information on the process for generating the tidy dataset can be seen in the accompanying **_README.md_** file.

# Data Variables
There are 561 features captured in the train and test record files. Out of these only the mean and standard deviation columns have been pulled for the tidy dataset, as per the project requirements. This section provides additional information on each of these variables:

**Note: all feature readings have been normalized in the [-1, 1] range.**

1. tBodyAcc 
  - Columns
    - tBodyAcc.mean...X
    - tBodyAcc.mean...Y
    - tBodyAcc.mean...Z
    - tBodyAcc.std...X
    - tBodyAcc.std...Y
    - tBodyAcc.std...Z
  - Description
    - Denotes the body acceleration signal in the time domain
    - One data point calculated for each X, Y and Z axes (triaxial measurement)
    - Mean and Standard Deviation calculated for each axis
  - Units = standard gravitional units 'g'
  
2. tGravityAcc
  - Columns
    - tGravityAcc.mean...X
    - tGravityAcc.mean...Y
    - tGravityAcc.mean...Z
    - tGravityAcc.std...X
    - tGravityAcc.std...Y
    - tGravityAcc.std...Z
  - Description
    - Denotes the gravity acceleration signal in the time domain
    - One data point calculated for each X, Y and Z axes (triaxial measurement)
    - Mean and Standard Deviation calculated for each axis
  - Units = standard gravitional units 'g'

3. tBodyAccJerk
  - Columns
    - tBodyAccJerk.mean...X
    - tBodyAccJerk.mean...Y
    - tBodyAccJerk.mean...Z
    - tBodyAccJerk.std...X
    - tBodyAccJerk.std...Y
    - tBodyAccJerk.std...Z
  - Description
    - Denotes the body linear acceleration in terms of Jerk signals in the time domain
    - One data point calculated for each X, Y and Z axes (triaxial measurement)
    - Mean and Standard Deviation calculated for each axis
  - Units = standard gravitional units 'g' 

4. tBodyGyro
  - Columns
    - tBodyGyro.mean...X
    - tBodyGyro.mean...Y
    - tBodyGyro.mean...Z
    - tBodyGyro.std...X
    - tBodyGyro.std...Y
    - tBodyGyro.std...Z
  - Description
    - Denotes the body angular velocity in the time domain
    - One data point calculated for each X, Y and Z axes (triaxial measurement)
    - Mean and Standard Deviation calculated for each axis
  - Units = radians/second 

5. tBodyGyroJerk
  - Columns
    - tBodyGyroJerk.mean...X
    - tBodyGyroJerk.mean...Y
    - tBodyGyroJerk.mean...Z
    - tBodyGyroJerk.std...X
    - tBodyGyroJerk.std...Y
    - tBodyGyroJerk.std...Z
  - Description
    - Denotes the body angular velocity in terms of Jerk signals in the time domain
    - One data point calculated for each X, Y and Z axes (triaxial measurement)
    - Mean and Standard Deviation calculated for each axis
  - Units = radians/second 

6. tBodyAccMag
  - Columns
    - tBodyAccMag.mean..
    - tBodyAccMag.std..
  - Description
    - Denotes the magnitude of body acceleration using the Euclidean norm in the time domain
    - Mean and Standard Deviation calculated
  - Units = standard gravitional units 'g' 

7. tGravityAccMag
  - Columns
    - tGravityAccMag.mean..
    - tGravityAccMag.std..
  - Description
    - Denotes the magnitude of gravitational acceleration using the Euclidean norm in the time domain
    - Mean and Standard Deviation calculated
  - Units = standard gravitional units 'g' 

8. tBodyAccJerkMag
  - Columns
    - tBodyAccJerkMag.mean..
    - tBodyAccJerkMag.std..
  - Description
    - Denotes the magnitude of body acceleration using the Euclidean norm in terms of Jerk signals in the time domain
    - Mean and Standard Deviation calculated
  - Units = standard gravitional units 'g' 

9. tBodyGyroMag
  - Columns
    - tBodyGyroMag.mean..
    - tBodyGyroMag.std..
  - Description
    - Denotes the magnitude of body angular velocity using the Euclidean norm in the time domain
    - Mean and Standard Deviation calculated
  - Units = radians/second

10. tBodyGyroJerkMag
  - Columns
     - tBodyGyroJerkMag.mean..
     - tBodyGyroJerkMag.std..
  - Description
     - Denotes the magnitude of body angular velocity using the Euclidean norm in terms of Jerk signals in the time domain
     - Mean and Standard Deviation calculated
  - Units = radians/second 

11. fBodyAcc
  - Columns
     - fBodyAcc.mean...X
     - fBodyAcc.mean...Y
     - fBodyAcc.mean...Z
     - fBodyAcc.std...X
     - fBodyAcc.std...Y
     - fBodyAcc.std...Z
  - Description
     - Denotes the Fast Fourier Transform of body acceleration in the frequency domain
     - Mean and Standard Deviation calculated
  - Units = standard gravitional units 'g' 

12. fBodyAccJerk
  - Columns
     - fBodyAccJerk.mean...X
     - fBodyAccJerk.mean...Y
     - fBodyAccJerk.mean...Z
     - fBodyAccJerk.std...X
     - fBodyAccJerk.std...Y
     - fBodyAccJerk.std...Z
  - Description
     - Denotes the Fast Fourier Transform of body acceleration in terms of Jerk signals in the frequency domain
     - Mean and Standard Deviation calculated
  - Units = standard gravitional units 'g' 

13. fBodyGyro
  - Columns
     - fBodyGyro.mean...X
     - fBodyGyro.mean...Y
     - fBodyGyro.mean...Z
     - fBodyGyro.std...X
     - fBodyGyro.std...Y
     - fBodyGyro.std...Z
  - Description
     - Denotes the Fast Fourier Transform of body angular velocity in the frequency domain
     - Mean and Standard Deviation calculated
  - Units = radians/second

14. fBodyAccMag
  - Columns
     - fBodyAccMag.mean..
     - fBodyAccMag.std..
  - Description
     - Denotes the magnitude of the Fast Fourier Transform of body acceleration in the frequency domain
     - Mean and Standard Deviation calculated
  - Units = standard gravitional units 'g' 

15. fBodyBodyAccJerkMag
  - Columns
     - fBodyBodyAccJerkMag.mean..
     - fBodyBodyAccJerkMag.std..
  - Description
     - Denotes the magnitude of the Fast Fourier Transform of body acceleration in terms of Jerk signals in the frequency domain
     - Mean and Standard Deviation calculated
  - Units = standard gravitional units 'g' 

16. fBodyBodyGyroMag
  - Columns
     - fBodyBodyGyroMag.mean..
     - fBodyBodyGyroMag.std..
  - Description
     - Denotes the magnitude of the Fast Fourier Transform of body angular velocity in the frequency domain
     - Mean and Standard Deviation calculated
  - Units = radians/second 

17. fBodyBodyGyroJerkMag
  - Columns
     - fBodyBodyGyroJerkMag.mean..
     - fBodyBodyGyroJerkMag.std..
  - Description
     - Denotes the magnitude of the Fast Fourier Transform of body angular velocity in terms of Jerk signals in the frequency domain
     - Mean and Standard Deviation calculated
  - Units = radians/second 

> All work has been completed by Avinash Agrawal as a requirment for the Coursera course 'Getting and Cleaning Data'. 
