library(ggplot2)
library(dplyr)
library(kableExtra)

#Importing the dataset
survey_demographics <- read_excel("/cloud/project/User Engagement Across Various Video Platforms (Responses).xlsx")
survey_demographics

#Getting the age group
survey__demographics_age <- survey_demographics$Age
head(survey__demographics_age )
survey_age_factor <- as.factor(survey__demographics_age) 
survey_age_factor

#Plotting the age group using bar graph

#ggplot() +
 # geom_density(aes(x = survey_age_factor, fill = survey_age_factor), alpha = 1, adjust = 1) +
  #scale_fill_manual(values = c("blue", "red", "green", "yellow")) +
  #labs(title = "Density Plot of Age", x = "Levels", y = "Count")


ggplot() + geom_bar(aes(x = survey_age_factor, fill = survey_age_factor), color = "black") +
 scale_fill_manual(values = c("blue", "red", "green", "yellow")) +
labs(title = "Age of students", x = "Levels", y = "Count")

#Getting the community type group
survey_demographics_community <- survey_demographics$`Community Type`
survey_demographics_community

#Plotting the community type group
ggplot() + geom_bar(width = 1) + aes(x = "", fill = survey_demographics_community ) +
  coord_polar(theta = "y") +
  labs(title = "Proportion of Community Types") 

#Getting the gender
survey_demographics_gender <- survey_demographics$`Gender\n`
survey_demographics_gender

#Plotting the gender

#Getting the course/year level
survey_demographics_course <- survey_demographics$`Course/Year Level`
survey_demographics_course


#Getting the education level
survey_demographics_educlevel <- survey_demographics$`Education Level\n`
survey_demographics_educlevel

ggplot(data, aes(x = education_level, fill = education_level)) +
  geom_bar() +
  labs(title = "Count of Individuals in Each Education Level", x = "Education Level", y = "Count")

# Print the column names of the survey_demographics dataset
colnames(survey_demographics)


