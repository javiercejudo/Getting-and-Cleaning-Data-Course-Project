step.renameActivities <- function(yAll) {
	activityNames <- c(
		"walking",
		"walking upstairs",
		"walking downstairs",
		"sitting",
		"standing",
		"laying"
	)
	
	activities <- activityNames[yAll[, 1]]
	
	activities
}
