library(readr)
library(ggplot2)
library(dplyr)
library(readxl)
library(knitr)
library(kableExtra)

survey <- read_excel("/cloud/project/survbey/User Engagement Across Various Video Platforms (Responses).xlsx")

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

total_meanEE <- mean(c(mean_ee1, mean_ee2, mean_ee3, mean_ee4, mean_ee5))
total_sdEE <- mean(c(sd_ee1, sd_ee2, sd_ee3, sd_ee4, sd_ee5))

ee_df <- data.frame(
  EE = c("EE1", "EE2", "EE3", "EE4", "EE5","Total"),
  Mean = c(mean_ee1, mean_ee2, mean_ee3, mean_ee4, mean_ee5, total_meanEE),
  SD = c(sd_ee1, sd_ee2, sd_ee3, sd_ee4, sd_ee5, total_sdEE)
)

kable(ee_df)

mean_si1 <- mean(survey$`How often do recommendations from friends influence your choice of videos to watch?`)
mean_si2 <- mean(survey$`Do you find yourself watching videos recommended by influencers or celebrities you follow?`)
mean_si3 <- mean(survey$`How likely are you to watch videos that are trending or popular on social media?`)
mean_si4 <- mean(survey$`How much do comments and discussions from other users influence your engagement with videos?`)
mean_si5 <- mean(survey$`When a video receives many likes or shares, does it affect your decision to watch it?`)

sd_si1 <- sd(survey$`How often do recommendations from friends influence your choice of videos to watch?`)
sd_si2 <- sd(survey$`Do you find yourself watching videos recommended by influencers or celebrities you follow?`)
sd_si3 <- sd(survey$`How likely are you to watch videos that are trending or popular on social media?`)
sd_si4 <- sd(survey$`How much do comments and discussions from other users influence your engagement with videos?`)
sd_si5 <- sd(survey$`When a video receives many likes or shares, does it affect your decision to watch it?`)

total_meanSI <- mean(c(mean_si1, mean_si2, mean_si3, mean_si4, mean_si5))
total_sdSI <- mean(c(sd_si1, sd_si2, sd_si3, sd_si4, sd_si5))

si_df <- data.frame(
  SI = c("SI1", "SI2", "SI3", "SI4", "SI5", "Total"),
  Mean = c(mean_si1, mean_si2, mean_si3, mean_si4, mean_si5, total_meanSI),
  SD = c(sd_si1, sd_si2, sd_si3, sd_si4, sd_si5, total_sdSI)
)

kable(si_df)

mean_fcmean_fcmean_fc1 <- mean(survey$`How often do technical issues (e.g., buffering, slow loading) prevent you from watching videos`)
mean_fc2 <- mean(survey$`How reliable do you find the platform's streaming quality (e.g., video resolution, sound)`)
mean_fc3 <- mean(survey$`How convenient is it for you to access video platforms on different devices (e.g., mobile, computer, smart TV)?`)
mean_fc4<- mean(survey$`How much does the availability of offline viewing influence your decision to use a video platform?
`)
mean_fc5 <- mean(survey$`How satisfied are you with the range of features (e.g., playlists, recommendations, watch history) offered by the video platform?`)

sd_fc1 <- sd(survey$`How often do technical issues (e.g., buffering, slow loading) prevent you from watching videos`)
sd_fc2 <- sd(survey$`How reliable do you find the platform's streaming quality (e.g., video resolution, sound)`)
sd_fc3 <- sd(survey$`How convenient is it for you to access video platforms on different devices (e.g., mobile, computer, smart TV)?`)
sd_fc4 <- sd(survey$`How much does the availability of offline viewing influence your decision to use a video platform?
`)
sd_fc5 <- sd(survey$`How satisfied are you with the range of features (e.g., playlists, recommendations, watch history) offered by the video platform?`)

total_meanFC <- mean(c(mean_fc1, mean_fc2, mean_fc3, mean_fc4, mean_fc5))
total_sdFC <- mean(c(sd_fc1, sd_fc2, sd_fc3, sd_fc4, sd_fc5))

fc_df <- data.frame(
  FC = c("FC1", "FC2", "FC3", "FC4", "FC5", "Total"),
  Mean = c(mean_fc1, mean_fc2, mean_fc3, mean_fc4, mean_fc5, total_meanFC),
  SD = c(sd_fc1, sd_fc2, sd_fc3, sd_fc4, sd_fc5, total_sdFC)
)

kable(fc_df)





