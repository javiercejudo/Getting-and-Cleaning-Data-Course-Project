library(reshape2)

step.generateAveragesSet <- function(tidyAll) {
	meanBySubjectAndActivity <- function(accumulator, variable) {
		means <- tapply(tidyAll[variable][, 1], list(tidyAll$subject, tidyAll$activity), mean)
		molten <- melt(means, varnames = c("subject", "activity"), value.name = variable)

		merge(accumulator, molten)
	}

	firstVarMeans <- tapply(tidyAll$tBodyAccMeanX, list(tidyAll$subject, tidyAll$activity), mean)
	firstVar <- melt(firstVarMeans, varnames = c("subject", "activity"), value.name = "tBodyAccMeanX")

	variables <- colnames(tidyAll)[4:length(colnames(tidyAll))];

	Reduce(meanBySubjectAndActivity, variables, firstVar)
}
