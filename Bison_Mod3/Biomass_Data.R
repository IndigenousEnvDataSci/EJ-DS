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
site_acreage <- data.frame(
  Site = c(1, 2, 3),
  Acres = c(100, 80, 60)
)
View(site_acreage)
