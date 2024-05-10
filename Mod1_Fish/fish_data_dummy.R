# Currently the FDA says that any fish with >0.46 ug/g mercury is best avoided so I am currently using that boundary as the halmark for a high mercury content. https://www.fda.gov/food/environmental-contaminants-food/technical-information-development-fdaepa-advice-about-eating-fish-those-who-might-become-or-are#:~:text=Any%20fish%20with%20an%20average,week%20%3D%200.23%20%C2%B5g%2Fg. 

#Data related to the relationship between trout length and mercury concentration is based on this article: https://jackson.eeb.utoronto.ca/files/2012/10/Somers-and-Jackson-1993.pdf

# Create a vector of fish lengths [cm]
fish_length <- rnorm(300, mean = 56.5, sd = 11.3) 
  
# Using an equation to relate length to mercury for the older dataset 
# mercury concentration [ug/g]
mercury_1998 <- (fish_length * 0.05) + 1.2 + rnorm(100, mean = 0, sd = 0.2)

fish_1998 <- data.frame(length  = fish_length, mercury = mercury_1998)

# Using an equation to relate length to mercury for the newer data 
mercury_2023 <- (fish_length * 0.05) + 1.5 + rnorm(100, mean = 0, sd = 0.2)

fish_2023 <- data.frame(length = fish_length, mercury = mercury_2023)

#Saving Data 
save(fish_1998, file = "Mod1_Fish/fish_1998.RData")
save(fish_2023, file = "Mod1_Fish/fish_2023.RData")
