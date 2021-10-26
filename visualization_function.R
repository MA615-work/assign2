library(png)
library(grid)
library(tidyverse)
library(knitr)
library(kableExtra)
library(magrittr)


# let make the tibble visualization
library(ggplot2)

function(data=tibble,x,y)
  ggplot(data=tibble,aes(x=x,y=y))+
  geom_point(shape = shapes)+
  geom_abline()

######################### 
# comments
#' The author's function will not work.
#' First, there's a syntax error. When writing a function in R, we use 
#' function_name <- function(para_A, para_B) {function contents}
#' Second, the author missed the part of assigning a name to the function. Also, the author forgot to use {}(brackets) to wrap the 
#' implementation part of the function. 
#' Third, there are a few errors when considering the parameters in the function. 
#' 1. The shapes variable in the function doesn't show in the parameters. 
#' 2. In the function(data = tibble,...), the variable named tibble will be assigned a name called data in the content of the function. 
#' But the author still used tibble as variable name. 
#' Last, in the plot part, when we want to line up points in each group, we use geom_line(). geom_abline() will require an intercept and a slope as input. 
#' Also, the function ggplot(data, aes(x = x, y = y)), x, y should be the column name in the data frame instead of two separately vectors. 
##########################