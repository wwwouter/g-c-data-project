Getting and Cleaning Data Assesment
================

This is the end result of the Peer Assesment of the Getting and Cleaning Data course https://www.coursera.org/course/getdata

## Assesment

The description of the assesment is as follows https://class.coursera.org/getdata-007/human_grading/view/courses/972585/assessments/3/submissions :

*The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.*  

*One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:*

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

*Here are the data for the project:*

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

*You should create one R script called run_analysis.R that does the following.*

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Description of files

The code can be found in run_analysis.R

There are 3 functions available:
- getTidyData(): Reads the original data and creates a tidy dataset (step 4)
- getGroupedTidyData(): Gets the data from getTidyData() and groups it by subject and activity (step 5)
- writeToFile(file="output.txt"): Gets the data from getGroupedTidyData() and writes it to file

The output is available in output.txt. 

A description of all the variables can be found in CodeBook.md

## Use dataset

- Clone this project
- Set working directory to the project directory
- read.table("output.txt", header=T)


## Reproduce dataset

- Download original dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- Clone this project
- Unzip the original dataset to the data folder in the project
- Set working directory to the project directory
- Source run_analysis.R
- writeToFile()
- Open output.txt

