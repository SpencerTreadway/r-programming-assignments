# Establish data vectors
freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
bloodp <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 176)
first <- factor(c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1), labels=c("good", "bad"))
second <- factor(c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1), labels=c("low", "high"))
finaldecision <- factor(c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1), labels=c("low", "high"))

# Show side-by-side boxplots of the blood pressure for different levels of each
# doctor's assessment
boxplot(bloodp ~ first)
boxplot(bloodp ~ second)
boxplot(bloodp ~ finaldecision)

# Show histograms of the blood pressure for different levels of each doctor's
# assessment
hist(bloodp[which(first == "bad")])
hist(bloodp[which(first == "good")])
hist(bloodp[which(second == "low")])
hist(bloodp[which(second == "high")])
hist(bloodp[which(finaldecision == "low")])
hist(bloodp[which(finaldecision == "high")])