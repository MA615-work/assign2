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