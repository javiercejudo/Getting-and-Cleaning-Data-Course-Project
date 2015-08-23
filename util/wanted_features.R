util.wantedFeatures <- function(features) {
	wantedFeatures <- grep("(mean|std)\\(\\)", features[, 2])
	
	wantedFeatures
}
