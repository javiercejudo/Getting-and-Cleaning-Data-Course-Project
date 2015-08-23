source("./util/features.R")
source("./util/wanted_features.R")

source("./steps/merge_data_sets.R")
source("./steps/extract_measurements.R")
source("./steps/label_variable_names.R")
source("./steps/rename_activities.R")
source("./steps/generate_averages_set.R")

runAnalysis <- function(dataDirectory = "UCI HAR Dataset") {
	features <- util.features(dataDirectory)
	wantedFeatures <- util.wantedFeatures(features)

	mergedDatasets <- step.mergeDataSets(dataDirectory)
	measurements <- step.extractMeasurements(mergedDatasets$xAll, wantedFeatures, dataDirectory)
	labelledMeasurements <- step.labelVariableNames(measurements, features, wantedFeatures, dataDirectory)
	activities <- step.renameActivities(mergedDatasets$yAll)

	tidyAll <- cbind(subject = mergedDatasets$subjectAll[, 1], activity = activities, labelledMeasurements)

	tidy <- step.generateAveragesSet(tidyAll)
	
	tidy[order(tidy$subject, tidy$activity), ]
}

tidy <- runAnalysis()

write.table(tidy, "tidy.txt", row.names = F)
