# Currently the FDA says that any fish with >0.46 ug/g mercury is best avoided so I am currently using that boundary as the halmark for a high mercury content. (Table 1 in https://www.fda.gov/food/environmental-contaminants-food/technical-information-development-fdaepa-advice-about-eating-fish-those-who-might-become-or-are#:~:text=Any%20fish%20with%20an%20average,week%20%3D%200.23%20%C2%B5g%2Fg) 

# the value of 'safe' consumptions depends on the size of the human, how often fish are eaten in a week, and what the serving size is. On the FDA website, these factors are accounted for in the equation for screening value (SV) where
# SV = (Reference dose * Body weight)/(mean daily consumption)

# for someone eating fish 1/week, 0.46 is a good cut-off value 

#Data related to the relationship between trout length and mercury concentration is based on this article by Somers and Jackson, 1993: https://jackson.eeb.utoronto.ca/files/2012/10/Somers-and-Jackson-1993.pdf

# Create a vector of fish lengths [cm] 
# mean and sd from Table 1 from Somers and Jackson, 1993 - row with high r^2 and higher mercury concentrations (Algoma - Saymo)
fish_length <- rnorm(300, mean = 44, sd = 11.6) 
  
# Using an equation to relate length to mercury for the older dataset 
# note: first version was order of magnitude too large, changing this to relate to threshold of 0.46 
# mercury concentration [ug/g] 
mercury_1998 <- 10^(0.018*fish_length-1.19) 

# add noise 
noise_sd98 = 0.2*mean(mercury_1998)
mercury_1998 = abs(mercury_1998 + rnorm(300, mean=0, sd=noise_sd98)) # using abs() because 20% noise resulted in some negative values which isn't realistic

# combine vectors for 1998 data set 
fish_1998 <- data.frame(length  = fish_length, mercury = mercury_1998)

# Using an equation to relate length to mercury for the newer data 
# also from table 1, using different params for lower mercury concentration (Algoma-Saymo)
fish_length_2023 <- rnorm(300, mean=48.7, sd=13.7)

mercury_2023 <- 10^(0.02*fish_length_2023-1.52) 

# add noise 
noise_sd23 = 0.2*mean(mercury_2023) 
mercury_2023 <- abs(mercury_2023 + rnorm(300, mean=0, sd=noise_sd23))

fish_2023 <- data.frame(length = fish_length_2023, mercury = mercury_2023)

#Saving Data 
write.csv(fish_1998, file = "Mod1_Fish/fish_1998.csv")
write.csv(fish_2023, file = "Mod1_Fish/fish_2023.csv")
