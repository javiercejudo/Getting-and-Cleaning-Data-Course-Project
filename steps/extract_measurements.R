source("./util/file_path.R")

step.extractMeasurements <- function(xAll, wantedFeatures, dataDirectory = ".", sep = "/") {
	xWanted <- xAll[, wantedFeatures]

	xWanted
}
