library(readr)
players <- read_csv("D:/Repos/Class Task/players.csv")
View(players)

print(is.na(players))
median_age <- median(players$Age, na.rm =TRUE)
players$Age[players$Age<18 | players$Age>38]<-median_age
View(players)

data<-c(30,24,26,28,29,28,27,26,32,34,13,15,14,31,29,28,24,25,30,34,35,27,30,34,44,48)
boxplot(data, main = "Boxplot")

first_q<-quantile(data,0.25) #this is 26
third_q<-quantile(data,0.75) #this is 31.75

iqr<-IQR(data) #this produces 5.75

data_new<-data

le<-first_q - 1.5 * iqr 
ue<-third_q + 1.5 * iqr

data_new <- data_new[!data_new<le]
data_new <- data_new[!data_new>ue]
data_new
