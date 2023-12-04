###Making Simulated Biomass R Data for Bison!###
getwd()
#Does not reflect real or expected values, but rather just a dummy dataset to make sure that our code works!
library(tidyverse)
# Set the seed for reproducibility
set.seed(123)

# Define the number of quadrats per site, also intuitively structures the dataset
quadrats_per_site <- 50

site1 <- data.frame(
  Site = rep(1, each = quadrats_per_site),
  Quadrat = rep(1:quadrats_per_site),
  Biomass = rnorm(n = 50, mean = 60, sd = 8)
)
view(site1)

site2 <- data.frame(
  Site = rep(2, each = quadrats_per_site),
  Quadrat = rep(1:quadrats_per_site),
  Biomass = rnorm(n = 50, mean = 100, sd = 20)
)
View(site2)

site3 <- data.frame(
  Site = rep(3, each = quadrats_per_site),
  Quadrat = rep(1:quadrats_per_site),
  Biomass = rnorm(n = 50, mean = 130, sd = 10)
)
View(site3)

#now just combining these all together into a single data frame
sites <- data.frame(
  rbind(site1,site2,site3)
)
View(sites)
write.csv(sites, "biomass.csv", row.names = FALSE)


#Making a dataset that just has the acreage of each site
site_size <- data.frame(
  Site = c(1, 2, 3),
  Hectares = c(1700, 1300, 900)
)
View(site_size)
write.csv(site_size, "sites.csv", row.names = FALSE)

#Makign a dataset for Elk Populations at each site
elk <- data.frame(
  Site = c(1,2,3),
  Elk = c(36, 302, 129)
)
View(elk)
write.csv(elk, "elk.csv", row.names = FALSE)


#Making code for N at each site
site1N <- data.frame(
  Site = rep(1, each = quadrats_per_site),
  Quadrat = rep(1:quadrats_per_site),
  Nitrogen = rnorm(n = 50, mean = 0.23, sd = 0.05)
)
view(site1N)

site2N <- data.frame(
  Site = rep(2, each = quadrats_per_site),
  Quadrat = rep(1:quadrats_per_site),
  Nitrogen = rnorm(n = 50, mean = 0.38, sd = 0.1)
)
View(site2N)

site3N <- data.frame(
  Site = rep(3, each = quadrats_per_site),
  Quadrat = rep(1:quadrats_per_site),
  Nitrogen = rnorm(n = 50, mean = 0.48, sd = 0.07)
)
View(site3N)

#now just combining these all together into a single data frame
N <- data.frame(
  rbind(site1N,site2N,site3N)
)
View(N)
write.csv(N, "Nitrogen.csv", row.names = FALSE)
