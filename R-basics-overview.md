1) What is R used for, and in what domains is it commonly applied?

R is a programming language and environment primarily used for statistical computing and graphics. It's commonly applied in data analysis, statistics, bioinformatics, economics, social sciences, and various research fields.

2) How do you assign a value to a variable in R? Provide an example.
```
x <- 10
```
3) Explain the concept of vectors in R. How are they different from lists?

Vectors are fundamental data structures in R that can hold elements of the same data type. Lists can contain elements of different data types.

4) What is a data frame in R, and how is it different from a matrix?

A data frame is a two-dimensional tabular data structure where columns can be of different data types. A matrix is a two-dimensional array where all elements must be of the same data type
5) How can you read data from a CSV file into R?

```
data <- read.csv("data.csv")
```
6) Given a vector x <- c(3, 6, 9, 12, 15), how would you create a new vector containing the squares of the elements?

```
x_squared <- x*x
```
7) What is the purpose of the summary() function in R?

The summary() function provides a summary of a data object, displaying descriptive statistics like mean, median, minimum, maximum, and quartiles.

8) Explain how to create a simple scatter plot in R using the plot() function.
```
x <- c(1,2,3,4,5)
y <- c(5,7,9,11,15)
plot(x,y, main = "Scatter Plot")
```
an equivalent for this in python can be: 
```
import matplotlib.pyplot as plt

x = [1, 2, 3, 4, 5]
y = [5, 7, 9, 11, 13]

plt.scatter(x, y)
```
9) Explain what factors are in R and when they are useful.

Factors in R are used to represent categorical data or nominal data. They are used to store data that takes on a limited, predefined set of values, such as categories or levels. Factors are useful when you want to work with categorical data and perform operations like counting, grouping, and creating summary tables.
