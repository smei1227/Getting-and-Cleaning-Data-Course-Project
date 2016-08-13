# Getting-and-Cleaning-Data-Course-Project

## Purpose of this project
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

## Content of the repository
This repository includes 1) a tidy data set; 2) a R script for performing the analysis; 3) a code book that describes the variables, the data, and any transformations or work that performed to clean up the data called CodeBook.md; 4) a README.md with the scripts. This repo explains how all of the scripts work and how they are connected.

## Collection of the raw dataset
The raw data, Human Activity Recognition database are collected from the accelerometers from the Samsung Galaxy S smartphone. Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. Based on the README file of the project (link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), the data were collected as following:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Description of the raw dataset
The data for the project are downloaded from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset includes the following files:
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training features set.
- 'train/y_train.txt': Training activitis labels.
- 'train/subject_train.txt': Training subjects labels.
- 'test/X_test.txt': Test features set.
- 'test/y_test.txt': Test activities labels.
- 'test/subject_test.txt': Test subjects labels.

## Tasks of this course final project
Create one R script called run_analysis.R that does the following:
- (1) Merges the training and the test sets to create one data set.
- (2) Extracts only the measurements on the mean and standard deviation for each measurement.
- (3) Uses descriptive activity names to name the activities in the data set
- (4) Appropriately labels the data set with descriptive variable names.
- (5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Sources:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project
