
library(MOTE)
## Import F-statistics from Experiment 1
results_1 <- cbind(c(1, 211, 11.42), c(2, 211, 29.48),c(2, 211, 66.55), c(2, 211, 3.12), c(1, 65, 2.47), c(1, 68, 5.45), c(1, 211, 328.06), c(2, 211, 5.08), c(1, 122, 5.6))
EF <- matrix(1:27, nrow = 9, ncol =3)
## Convert F-statistics from Experiment 1 to eta-squared
for (i in 1:9)
{
  a <- eta.F(dfm = results_1[1, i], dfe = results_1[2, i], Fvalue = results_1[3, i], a = 0.1)
  EF[i, 1] <- a$eta
  EF[i, 2] <- a$etalow
  EF[i, 3] <- a$etahigh
}
EF
## Import F-statistics from Experiment 2
results_2 <- cbind(c(1, 219, 16.77), c(1, 111, 17.43), c(1, 108, 2.69), c(1, 118, 8.35), c(1, 108, 21.24), c(1, 111, 12.46), c(1, 108, 12.26))
EF2 <- matrix(1:21, nrow = 7, ncol = 3)
## Convert F-statistics from Experiment 2 to eta-squared
for (i in 1:7)
{
  a <- eta.F(dfm = results_2[1, i], dfe = results_2[2, i], Fvalue = results_2[3, i], a = 0.1)
  EF2[i, 1] <- a$eta
  EF2[i, 2] <- a$etalow
  EF2[i, 3] <- a$etahigh
}
EF2
