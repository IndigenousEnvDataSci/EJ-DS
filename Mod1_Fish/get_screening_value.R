#' calculate screening value  
#' 
#' @param weight variable for weight, in pounds  
#' @param days_per_week avg daily consumption rate 
#' @param rfd reference dose for chronic oral exposure to methylmercury (defaul is 0.1 ug mercury/kg body weight/day)
#' @returns screening value 


get_screening_value <- function(weight, days_per_week, rfd=0.1){
  
  # consumption rate based on days per week (110g is serving size)
  cr = 110*days_per_week/7 
  
  # convert to RdD amount per day
  # 1 lb = 0.45 kg 
  safe_limit = RfD*weight*0.45/cr
  
  # output safe limit for serving size (ug mercury /day)
  return(safe_limit)
}








