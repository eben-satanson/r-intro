## install.packages("tidyverse")

library(tidyverse)
library(knitr)

rm(list=ls())

titanic <- read_csv(
  "https://raw.githubusercontent.com/nt246/NTRES-6100-data-science/master/datasets/Titanic.csv"
  )

skimr::skim(titanic)
