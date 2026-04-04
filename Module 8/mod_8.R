# install.packages("plyr")
library(plyr)

df <- read.table(file.choose(), header=TRUE, sep=",")
df

df.t <- ddply(df, "Sex", transform, Grade.Average=mean(Grade))

write.table(df.t, "Sorted_Average")

new.df <- subset(df, grepl("[iI]", df$Name))
new.df

write.table(new.df, "DataSubset", sep=",")