# This is a sandbox file of how to simulate data from simple code to more complicated
# code in terms of adding a correlation between two variables
# Author: srs

#########################################
# Resources as we are simulating the data
#########################################
# https://bookdown.org/speegled/foundations-of-statistics/simulation-of-random-variables.html
# https://stats.stackexchange.com/questions/30303/how-to-simulate-data-that-satisfy-specific-constraints-such-as-having-specific-m
# https://stirlingcodingclub.github.io/simulating_data/index.html#sample_numbers

#########################################
# Some basic simulated variables and their
# plots (in base r) to get us started
#########################################
set.seed(123) # set "seed" so that the random draws start in the same place for 
              # all of us. This helps with replicability.
              # I will use this seed and n for all these practice simulations

n <- 1000 # sample size (ie, number of observations)

var_1 <- rnorm(n, mean = 0, sd = 1)
plot(var_1) 
hist(var_1)

var_2 <- runif(n, min = 0, max = 1) # I know this looks like "run if," but it's "r unif"
plot(var_2) 
hist(var_2)

plot(x = var_1, y = var_2) # nothing to see here - a lot of randomness

rm(var_1, var_2)

################
# now to simulate the length and weight of river cutthroat trout
# first let's do it with a uniform distribution

# https://en.wikipedia.org/wiki/Cutthroat_trout#:~:text=At%20maturity%2C%20different%20populations%20and,(0.9%20to%202.3%20kg).
length_bounds <- c(6, 10)
weight_bounds <- c(11, 91)

length <- runif(n, min = length_bounds[1], max = length_bounds[2])
weight <- runif(n, min = weight_bounds[1], max = weight_bounds[2])

# combine into one df
df_fish_unif <- data.frame(length, weight)

# plot
head(df_fish_unif) # first let's take a look at the top ones

plot(df_fish_unif$length)
hist(df_fish_unif$length)

plot(df_fish_unif$weight)
hist(df_fish_unif$weight)

plot(x = df_fish_unif$length, 
     y = df_fish_unif$weight) # same as before!

# remove the objs
rm(length, weight) # (keeping the actual df though)

################
# second let's do it with a normal distribution, but with some bounds
# we will use the same bounds as before
# Calculate mean and standard deviation for lengths
length_mean <- quantile(length_bounds)[2] # I chose the mean to be a bit on the 
                                          # shorter side. I did this by using the
                                          # the quartile 
length_sd <- 1 # this can also be changed to be flatter or peakier. I did it manually here

# Calculate mean and standard deviation for weights
weight_mean <- quantile(weight_bounds)[2] # I chose smaller again
weight_sd <- (weight_bounds[2] - weight_bounds[1]) / 4

# Truncate function
# I'm going to make a function that helps with doing an rnorm with the bounds
# and the means we made. Since I did make the mean the actual mean of the bounds,
# we're going to get one longer tail. I'm not actually sure the best way of doing
# this would be for the actual toy set - one might use a diff distribution.
funct_norm_bounds <- function(n, mean, sd, lower, upper) {
  x <- numeric(0) # empty vector
  
  while (length(x) < n) { # while loop (like a for loop) that goes until n is reached
    new_values <- rnorm(n, mean, sd)
    new_values <- new_values[new_values >= lower & new_values <= upper]
      # there is probably a much better way to do this - I'm being very lazy
      # right now
    x <- c(x, new_values)
  }
  
  return(x[1:n])
}

length <- funct_norm_bounds(n, length_mean, length_sd, length_bounds[1], length_bounds[2])
weight <- funct_norm_bounds(n, weight_mean, weight_sd, weight_bounds[1], weight_bounds[2])

# combine into data frame and explore
df_fish_norm <- data.frame(length, weight)
head(df_fish_norm)

plot(df_fish_norm$length)
hist(df_fish_norm$length)

plot(df_fish_norm$weight)
hist(df_fish_norm$weight)

plot(x = df_fish_norm$length, y = df_fish_norm$weight) # a bit diff bc I made the tails weird

# remove the objs
rm(length, weight, 
   length_mean, length_sd,
   weight_mean, weight_sd) # (keeping the actual df though)
                           # I'm removing these so we are forced to redefine
                           # which means we know our parameters

################
# third, let's make the two variables connected (bc presumably they are)
# we're going to have length and mass positively correlated

# let's first define means just super simply - actual means
length_mean <- mean(length_bounds)
weight_mean <- mean(weight_bounds)

means <- c(length_mean, weight_mean)

# now the variances
# please don't worry about this too much - don't get scared!
# we're just telling the function how to work
weight_sd <- (weight_bounds[2] - weight_bounds[1]) / 4
length_sd <- (length_bounds[2] - length_bounds[1]) / 4

weight_var <- weight_sd ^ 2
length_var <- length_sd ^ 2

# set correlation, where 0 = no corr and 1 = perfect corr
correlation <- 0.8

# now we're going to define the covariance matrix
# again, don't worry about this too much!
cov_matrix <- matrix(c(length_var, 
                       length_sd * weight_sd * correlation, 
                       length_sd * weight_sd * correlation, 
                       weight_var), 
                     ncol=2)

# generate correlated data
correlated_data <- MASS::mvrnorm(n, mu = means, Sigma = cov_matrix)

# convert to data frame
df_fish_corr <- data.frame(
  length = correlated_data[, 1],
  weight = correlated_data[, 2]
)

head(df_fish_corr) 

plot(df_fish_corr$length)
hist(df_fish_corr$length)

plot(df_fish_corr$weight)
hist(df_fish_corr$weight)

plot(x = df_fish_norm$length, y = df_fish_norm$weight) 

# compare the correlations to above examples
cor.test(df_fish_unif$length, df_fish_unif$weight)
cor.test(df_fish_norm$length, df_fish_norm$weight)
cor.test(df_fish_corr$length, df_fish_corr$weight)

## I'm not going to do more now, but notice the final one isn't bounded, so we're getting
## some really weird weights and lengths. One would have to think about this more in 
## terms of bounded data, means, sd, etc, and how the data might actually look.
