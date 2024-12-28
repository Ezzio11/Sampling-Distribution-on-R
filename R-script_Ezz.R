set.seed(10) #For reproducibility

#Parent dist. = Gamma(α = 1,β = 5)
#Mean of parent dist. = αβ = 1*5 = 5  
#Variance of parent dist. = αβ^2= 1*5^2 = 25

#Let x be the variable of the parent dist.
x <- 0 : 25
curve(dgamma(x, shape = 1, scale = 5), from = 0, to = 25, 
      main = "P.D.F of the Gamma distribution", ylab = "f(x)", 
      col = 'gold', lwd = 4)

#To generate a 1000 random samples each of size 10 from Gamma(1,5)
sample_data <- replicate(1000, rgamma(10, shape = 1, scale = 5))

#To calculate the mean for each sample
xbar <- colMeans(sample_data)

#To find the mean & variance of xbar
print(mean(xbar))
print(var(xbar))

#Comparing xbar mean & variance with the theoretical ones:
  #Theoretical mean for xbar = 5
  #Sample mean for xbar = 5.001901
  #Theoretical Variance for xbar = 2.5
  #Sample variance for xbar = 2.718851

#Graphing the histogram of xbar
hist(xbar, freq = FALSE, xlim = c(0, max(xbar)), ylim = c(0, 0.3),
     main = "Histogram of xbar from Gamma(1, 5) with n = 10",
     col = 'black', breaks = 25)

#Overlaying the density curve of the parent dist.
hist(xbar, freq = FALSE, xlim = c(0, max(xbar)), ylim = c(0, 0.3),
     main="Histogram of xbar + the desnity graph of gamma",
     col = 'black', breaks = 25)

curve(dgamma(x, shape=1, scale=5), from = 0, to = max(xbar), 
      main = "P.D.F Of the  Gamma Distribution", ylab = "f(x)", 
      col = 'gold', lwd = 4, add = TRUE)

#Overlay the theoretical normal density curve of xbar
hist(xbar, freq = FALSE, xlim = c(0, max(xbar)), ylim = c(0, 0.3),
     main="Histogram of xbar + the desnity graph of Normal dist.",
     col='black', breaks = 25)

curve(dnorm(x, mean = 5, sd = sqrt(2.5)), from = -15, to = 15, 
      main = "P.D.F Of N(5, 2.5)", ylab = "f(x)", 
      col = 'gold', lwd = 4, add = TRUE)