# Getting and Cleaning Data - Project README

# Introduction
This README file has been written to accompany the Getting and Cleaning Data course's project. The goal of the project is to obtain wearable computing data and to process it into a tidy dataset, as per the requirements stated on the project page. The README file will briefly explain the various components of the project and how they are linked together. It will also provide information on how the code files work to deliver the final resulting dataset.

# Solution components
There are 3 files associated with this project in the GitHub repo:
  - run_analysis.R
  - CodeBook.md
  - README.md

The R script performs analysis on the raw data and transforms it into a tidy dataset, as per the requirements stated on the project page. The Code Book has been written to assist users to better understand the analysis in the code files and grasp the components of the final, tidy dataset. Finally, this README file provides a cover to the project by explaining how the various components work.

# Analysis Script
The run_analysis script is the main code file in solution. Data from the various raw text files is loaded into variables and then amalgamated into a singular dataset. The procedure is as follows:
  - Load the activity, subject and features supporting files.
   - Extract the required **mean** and **std** features in an R object.
  - Load the train and test labels. 
    - This enables the link between activity and the data records.
  - Load the train and test records.
   - Extract the required columns from loaded datasets.
  - Merge the activity names and subjects with the data rows.
   - The features R object is used to label the columns. 
   - Combine the train and test datasets using the _rbind_ functionality.
  - Aggregate data for all data variables by Subject and Activity. The **mean** summarizing function is used.
  - Write resulting tidy dataset to text file.

# Assumptions
  - The main assumption is that the raw files have been downloaded and unzipped. The script performs analysis assuming that the working directory has been set to the underlying _UCI HAR Dataset_ directory.
  - Only the mean and standard deviation columns are included in the final tidy dataset. **Note that this does not include the meanFreq columns since this is a different measure.**

> All work has been completed by Avinash Agrawal as a requirement for the Coursera course 'Getting and Cleaning Data'.  