library(png)
library(grid)
library(tidyverse)
library(knitr)
library(kableExtra)
library(magrittr)
# READ TABLE
expectancy<-read.csv(file="life_expectancy_male.csv")
pl<-read.csv("population_aged_60plus_years_male_percent.csv")
# Tidy the datasetT he table below shows 10 randomly selected rows from the tidy
expectancy_t<-expectancy%>% 
  mutate_if(is.numeric,as.character, is.factor, as.character) %>%
  pivot_longer(!country, names_to = "year", values_to = "count1")%>%

pl_t<-pl%>% 
  mutate_if(is.numeric,as.character, is.factor, as.character) %>%
  pivot_longer(!country, names_to = "year", values_to = "count2")%>%
# Wrangle these two data files into one tibble
tibble=inner_join(x=expectancy_t,y=pl_t,by=c("country","year"))

