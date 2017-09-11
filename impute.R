clean <- read.csv('clean.csv')

for (col in colnames(clean)) {
  # The double brackets are needed for mean but not elsewhere, fuckin' R
  clean[col][is.na(clean[col])] = round(mean(clean[[col]], na.rm=T), digits=2)
}

write.csv(clean, 'cac.csv', row.names=F)
