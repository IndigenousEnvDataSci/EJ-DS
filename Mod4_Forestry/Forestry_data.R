# In this file we will create the data that will be used in the forestry module. This data will contain information on the age and yield in board feet of different sites which have different site index classes.
# In the interests of not having the site numbers directly correspond to their class: Site 1 is class 3, site 2 is class 1, site 3 is class 5, and site 4 is class 2. 
# Tables that were used to generate this data come from this bulletin: https://andrewsforest.oregonstate.edu/sites/default/files/lter/pubs/pdf/pub3401.pdf
# Data note: Because the data is jittered the board feet does ot always increase with each subsequent decade. 

set.seed(1)
# Site 1
  ## Inputing data from bulletin
  site_1 <- data.frame(age = seq(20, 160, by = 10), 
    board_feet = c(0, 6200, 17400, 31400, 44500, 56500, 66800, 75700, 83000, 89500, 94700, 99300, 103500, 107800, 110900))
  ## Jittering data so it isn't a perfect line
  site_1$board_feet <- jitter(site_1$board_feet)
 ## Board feet cannot reasonably be less than 0
  site_1$board_feet[site_1$board_feet < 0] <- 0
  
# Site 2
  ## Inputing data from bulletin
  site_2 <- data.frame(age = seq(20, 160, by = 10), 
    board_feet = c(4900, 24400, 47000, 70500, 90800, 108500, 124700, 137700, 148900, 157900, 165500, 172000, 178000, 183300, 188100))
  ## Jittering data so it isn't a perfect line
  site_2$board_feet <- jitter(site_2$board_feet)
  ## Board feet cannot reasonably be less than 0
  site_2$board_feet[site_2$board_feet < 0] <- 0
  
# Site 3
  ## Inputing data from bulletin
  site_3 <- data.frame(age = seq(20, 160, by = 10), 
    board_feet = c(0, 0, 3800, 9500, 15900, 22100, 27800, 32700, 37200, 41000, 44000, 46900, 49500, 51700, 54000))
  ## Jittering data so it isn't a perfect line
  site_3$board_feet <- jitter(site_3$board_feet)
  ## Board feet cannot reasonably be less than 0
  site_3$board_feet[site_3$board_feet < 0] <- 0
  
# Site 4
  ## Inputing data from bulletin
  site_4 <- data.frame(age = seq(20, 160, by = 10), 
    board_feet = c(2800, 18800, 39000, 60000, 79000, 96000, 110900, 123000, 133500, 142000, 149400, 155700, 161300, 166500, 171400))
  ## Jittering data so it isn't a perfect line
  site_4$board_feet <- jitter(site_4$board_feet)
  ## Board feet cannot reasonably be less than 0
  site_4$board_feet[site_4$board_feet < 0] <- 0
  
# Saving the data
  write.csv(site_1, "Mod4_Forestry/site_1.csv")
  write.csv(site_2, "Mod4_Forestry/site_2.csv")
  write.csv(site_3, "Mod4_Forestry/site_3.csv")
  write.csv(site_4, "Mod4_Forestry/site_4.csv")
  