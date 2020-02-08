#Huseyn Guliyev QSS R homework 1 

library(tidyverse)

#1
options(repos=c(CRAN="http://cran.rstudio.com"))

install.packages('DAAG')
data <- nassCDS::DAAG #bu yuxarıdakı 3ü işləmədi

library(readxl)
mydata <- read_xlsx('nassCDS.xlsx')

#2

colnames(mydata)
mydata2 <- mydata %>% rename(Speed=dvcat,Airbag_deploy=abcat)

colnames(mydata2)

#3
mydata %>% 
  filter (seatbelt=="none", dead=="dead") %>% 
  nrow()


#4
mydata %>% 
  filter(sex=='f',dead=='dead',frontal=='1') %>% 
  nrow()

mydata %>% 
  filter(sex=='f',dead=='dead',frontal=='0') %>% 
  nrow()

#5
mydata %>% 
  filter(yearacc>=2001,airbag=='none',dead=='dead') %>% 
  nrow()
