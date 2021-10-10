library(png)
library(grid)
library(tidyverse)
library(knitr)
library(kableExtra)
library(magrittr)
# READ TABLE
expectancy<-read.csv(file="life_expectancy_male.csv")
cnames<-colnames(expectancy)[-1]
cnames<-c("country",cnames)
colnames(expectancy)<-cnames
pl<-read.csv("population_aged_60plus_years_male_percent.csv")
cnames<-colnames(pl)[-1]
cnames<-c("country",cnames)
colnames(pl)<-cnames
# Tidy the datasetT he table below shows 10 randomly selected rows from the tidy
expectancy_t<-expectancy%>% 
  pivot_longer(!country, names_to = "year", values_to = "count1")

pl_t<-pl%>% 
  pivot_longer(!country, names_to = "year", values_to = "count2")
# Wrangle these two data files into one tibble
tibble=inner_join(x=expectancy_t,y=pl_t,by=c("country","year"))

