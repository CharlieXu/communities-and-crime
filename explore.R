clean <- read.csv('clean.csv')

print('Proportion of missing values:')

for (col in colnames(clean)) {
  print(col)
  print(sum(is.na(clean[col])) / nrow(clean))
}
