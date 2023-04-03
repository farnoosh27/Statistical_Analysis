rm(list=ls()) # removes all variables stored previously 
library(Hmisc)
data <- read_csv("COVID19_line_list_data.csv")
describe(data)
# cleaning data
# we create a new variable called death_dummy, 
# which is set to 1 if the death column is not equal to 0, and 0 otherwise. This variable can be used to determine if a given individual died or not.
data$death_dummy <- as.integer(data$death !=0)
# death rate 
sum(data$death_dummy)/ nrow(data)

# AGE
# claim: people who died are older
dead = subset(data, death_dummy == 1)
alive = subset(data, death_dummy == 0)

mean(dead$age, na.rm = TRUE)
mean(alive$age, na.rm = TRUE)

# we need to employ the t-test to find out 
# whether the result is statistically significant
t.test(female$death_dummy, male$death_dummy, alternative="two.sided", conf.inter = 0.95)
# after running the t-test --> p-value < 2.2e-16 
# therefore, we are able to reject the null hypothesis, 
# and prove older people do have more deathrate compared to younger ones.


# GENDER
# claim: gender has no effect
female = subset(data, gender == "female")
male = subset(data, gender == "male")

mean(female$death_dummy, na.rm = TRUE)
mean(male$death_dummy, na.rm = TRUE)

# we need to employ the t-test to find out 
# whether the result is statistically significant
t.test(alive$age, dead$age, alternative="two.sided", conf.inter = 0.95)
# after running the t-test --> p-value < 2.2e-16 
# therefore, we are able to reject the null hypothesis, 
# and prove older people do have more deathrate compared to younger ones.



