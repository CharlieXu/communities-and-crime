# This will ensure the numerous question marks get turned to NAs; imputation
# can be done later after some exploration
raw <- read.csv('raw.csv', na.strings='?')

# Get rid of non-predictive columns
raw$state <- NULL
raw$county <- NULL
raw$community <- NULL
raw$communityname <- NULL
raw$fold <- NULL

write.csv(raw, 'clean.csv', row.names=F)
