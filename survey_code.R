library(readr)
library(ggplot2)
library(dplyr)
library(readxl)
library(knitr)
library(kableExtra)

survey <- read_excel("/cloud/project/survey/User Engagement Across Various Video Platforms (Responses).xlsx")

mean_ee1 <- mean(survey$`How easy do you find it to discover new videos on the platform?`)

mean_ee2 <- mean(survey$`Do you find it effortless to search for specific videos or channels on the platform?`)

mean_ee3 <- mean(survey$`How much effort do you think is required to customize your video recommendations?`)

mean_ee4 <- mean(survey$`When trying out new features, how much effort do you perceive is needed to learn how to use them?`)

mean_ee5 <- mean(survey$`How easy is it for you to switch between devices while watching videos (e.g., phone to TV)?`)

sd_ee1 <- sd(survey$`How easy do you find it to discover new videos on the platform?`)

sd_ee2 <- sd(survey$`Do you find it effortless to search for specific videos or channels on the platform?`)

sd_ee3 <- sd(survey$`How much effort do you think is required to customize your video recommendations?`)

sd_ee4 <- sd(survey$`When trying out new features, how much effort do you perceive is needed to learn how to use them?`)

sd_ee5 <- sd(survey$`How easy is it for you to switch between devices while watching videos (e.g., phone to TV)?`)

ee_df <- data.frame(
  EE = c("EE1", "EE2", "EE3", "EE4", "EE5"),
  Mean = c(mean_ee1, mean_ee2, mean_ee3, mean_ee4, mean_ee5),
  SD = c(sd_ee1, sd_ee2, sd_ee3, sd_ee4, sd_ee5)
)


kable(ee_df)
