# This will ensure the numerous question marks get turned to NAs; imputation
# can be done later after some exploration
raw <- read.csv('raw.csv', na.strings='?')

# Get rid of non-predictive columns
raw$communityname <- NULL
raw$state <- NULL
raw$countyCode <- NULL
raw$communityCode <- NULL
raw$fold <- NULL

# Get rid of all predictive columns except ViolentCrimesPerPop
raw$murders <- NULL
raw$murdPerPop <- NULL
raw$rapes <- NULL
raw$rapesPerPop <- NULL
raw$robberies <- NULL
raw$robbbPerPop <- NULL
raw$assaults <- NULL
raw$assaultPerPop <- NULL
raw$burglaries <- NULL
raw$burglPerPop <- NULL
raw$larcenies <- NULL
raw$larcPerPop <- NULL
raw$autoTheft <- NULL
raw$autoTheftPerPop <- NULL
raw$arsons <- NULL
raw$arsonsPerPop <- NULL
raw$nonViolPerPop <- NULL

write.csv(raw, 'clean.csv', row.names=F)
