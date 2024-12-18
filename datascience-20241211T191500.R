# install.packages("readr")
# install.packages("titanic")
# install.packages("explore")

rm(list=ls())
df0 <- titanic::titanic_train
df2 <- titanic::titanic_test 
dim(df0)
dim(df2)
names(df0)
names(df2)
skimr::skim(df0)

df0 %>% count(Cabin)
df0 %>% count(Survived)

df0 <- df0 %>% mutate(CabinLen = nchar(Cabin))
skimr::skim(df0)

df4 <- df0 %>% dplyr::mutate(Cabin = na_if(Cabin, ""))
df4 <- df4 %>% mutate(CabinLen = nchar(Cabin))
skimr::skim(df4)



skimr::skim(df4)
a <- 5
b <- NA
c <- TRUE
d <- FALSE
e <- NULL

nchar("")
nchar("abc")
nchar(NA)


v = c(5,6,7,8,NA)
mean(v, na.rm=TRUE)
sd(v, na.rm=TRUE)

mean(df0$Age)
mean(df0$Age, na.rm=TRUE)




readr::write_csv(df0, "df0-titanic-train.csv")
df3 <- readr::read_csv("df0-titanic-train.csv")
library(dplyr)


dplyr::filter()
stats::filter()

library(dplyr)
library(tidyverse)

df5 <- df4 %>% 
  dplyr::mutate(
    Sex = as_factor(Sex),
    Survived = as_factor(Survived),
    Age2000 = 2000 * Age,
  )
skimr::skim(df5)

readr::write_rds(df5, "df5-titanic-train.rds")
df6 <- readr::read_rds("df5-titanic-train.rds")
skimr::skim(df6)


df0 %>% 
  group_by(Sex) %>%
  skimr::skim()

library(explore)

n = 2
df0 %>% explore(Pclass)
df0 %>% explore(Fare)


df0 %>% explore(Pclass, target = Survived, split = TRUE)


