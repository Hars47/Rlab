rm(list=ls())
install.packages("MASS")
library(MASS)

data(mammals)
head(mammals) #it is optional. To view the contents of the "mammals" dataset
pearson_corr <- cor(mammals$brain, mammals$body, method = "pearson")
spearman_corr <- cor(mammals$brain, mammals$body, method = "spearman")
print(paste("Pearson correlation coefficient:", pearson_corr))
print(paste("Spearman correlation coefficient:", spearman_corr))

plot(mammals$body, mammals$brain, xlab = "Body Weight", ylab = "Brain Weight", main = "Body Weight vs. Brain 
Weight")

plot(log(mammals$body), log(mammals$brain), xlab = "log(Body Weight)", ylab = "log(Brain Weight)", main = 
"log(Body Weight) vs. log(Brain Weight)")
