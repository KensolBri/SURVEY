library(ggplot2)
library(dplyr)
age <- c(20,19,20,20,20,20,20,19,19,19,20,20,19,20,21,20,20,19,18,20,20,20,20,21,20,20,20,19,18,20,19,20,21,20,19,20,19)
age
age_factor <- as.factor(age) 
age_factor
age_level_factor <- c(18,19,20,21)
age_level_factor
ggplot() + geom_bar(aes(x = age_factor),fill= "blue", color ="black")+labs(title= "Age of students", x = "levels", y = "count")
age_mean <- mean(age)
age_mean
View(age_factor)
community<- c("Rural Type", "Urban Type","Rural Type","Rural Type", "Rural Type", "Rural Type","Rural Type","Rural Type", 
              "Rural Type","Rural Type", "Rural Type", "Rural Type", "Rural Type", "Rural Type", "Rural Type","Rural Type",
              "Rural Type","Urban Type","Rural Type","Rural Type",
              "Rural Type",
              "Urban Type",
              "Rural Type",
              "Rural Type",
              "Rural Type",
              "Rural Type",
              "Rural Type",
              "Rural Type",
              "Rural Type",
              "Rural Type",
              "Rural Type",
              "Rural Type",
              "Urban Type",
              "Urban Type",
              "Rural Type",
              "Urban Type"
)
community
ggplot() + geom_bar(aes(x = community),fill= "blue", color ="black")+labs(title= "Community", x = "levels", y = "count")


gender <- c("Female",
            "Female",
            "Female",
            "Male",
            "Male",
            "Male",
            "Male",
            "Male",
            "Male",
            "Female",
            "Male",
            "Male",
            "Female",
            "Female",
            "Female",
            "Female",
            "Female",
            "Female",
            "Female",
            "Female",
            "Male",
            "Male",
            "Male",
            "Male",
            "Female",
            "Male",
            "Female",
            "Male",
            "Female",
            "Female",
            "Female",
            "Male",
            "Male",
            "Male",
            "Female",
            "Female",
            "Male")
gender
ggplot() + geom_bar(aes(x = gender),fill= "blue", color ="black")+labs(title= "Gender", x = "levels", y = "count")


