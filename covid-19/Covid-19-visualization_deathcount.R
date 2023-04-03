data <- read_csv("COVID19_line_list_data.csv")
library(Hmisc)
library(ggplot2)
describe(data)

# cleaning data
# to avoid inconsistency, we create a new variable called death_dummy, 
# which is set to 1 if the death column is not equal
# to 0, and 0 otherwise. This variable can be used to determine if a given individual died or not.

data$death_dummy <- as.integer(data$death !=0)
# death rate
sum(data$death_dummy)/ nrow(data)

## using data visualization
#boxplot(data$death_dummy ~ data$country)
library(ggplot2)
ggplot(data, aes(x = data$country)) + geom_bar()


    