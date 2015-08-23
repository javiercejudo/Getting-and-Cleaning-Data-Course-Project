# Getting-and-Cleaning-Data-Course-Project

Instructions to run the analysis:

- Clone the repository
- Download the [original dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
- Unzip data into the root folder of the repository
- Run `Rscript run_analysis.R` in your console or source `run_analysis.R` in RStudio

A `tidy.txt` file will be generated in the root folder of the repository.

## Scripts/steps

The bulk of the code is organised in separate scripts within the `steps/` directory;
each script represents one of the steps taken to achieve the end result.

1. `steps/merge_data_sets.R`: Merges the training and the test sets to create one data set.
1. `steps/extract_measurements.R`: Extracts only the measurements on the mean and standard deviation for each measurement.
1. `steps/rename_activities.R`: Uses descriptive activity names to name the activities in the data set
1. `steps/label_variable_names.R`: Appropriately labels the data set with descriptive variable names.
1. `steps/generate_averages_set.R`: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
