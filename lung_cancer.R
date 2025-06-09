lung_cancer <- read.csv("cancer patient data sets.csv", fileEncoding = "UTF-8")
str(lung_cancer)

lung_cancerC <- lung_cancer[, -c(1, 2, 11, 26 )]
lung_cancerC
str(lung_cancerC)

lc_cor <- cor(lung_cancerC)
lc_cor

install.packages("corrplot")
library(corrplot)
corrplot(lc_cor, method="circle", type="lower", addCoef.col = "black", number.cex = 0.8)

