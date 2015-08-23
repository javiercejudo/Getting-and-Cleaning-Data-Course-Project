library(plyr)

step.generateAveragesSet <- function(tidyAll) {
	ddply(tidyAll, c("subject","activity"), numcolwise(mean))
}
