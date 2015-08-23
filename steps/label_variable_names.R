step.labelVariableNames <- function(measurements, features, wantedFeatures, dataDirectory = ".", sep = "/") {
	xColumnNames <- features[wantedFeatures, 2]
	xColumnNames <- gsub("[\\(\\)-]", "", xColumnNames) # remove '(', ')' and '-'
	xColumnNames <- gsub("mean", "Mean", xColumnNames) # capitalise M
	xColumnNames <- gsub("std", "Std", xColumnNames) # capitalise S
	
	labelledMeasurements <- measurements
	names(labelledMeasurements) <- xColumnNames
	
	labelledMeasurements
}
