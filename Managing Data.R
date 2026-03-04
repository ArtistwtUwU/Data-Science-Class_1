library(dplyr)
library(readr)

student_data <- read.csv("D:/Repos/Class Task/student_data.csv")
#INTRO
View(student_data)
print(summary(student_data))
print(head(student_data,15))
print(tail(student_data))

#FILTER
#1. Student fail
Student_fail<- student_data %>% filter(final_exam_mark< 40)
View(Student_fail)

#2. Arrage Student Data
mydata<- student_data%>% filter(final_exam_mark > 40) %>% arrange(final_exam_mark)
View(mydata)

#3. Select
mydata2 <- student_data%>% select(student_id,coursework_mark, final_exam_mark)
View(mydata2)
glimpse(mydata2)

mydata3<- df_DS23[ , c("student_id", "coursework_mark", "final_exam_mark" )]
View(mydata3)
glimpse(mydata3)

#4. Mutate
mydata4 = student_data %>% mutate(Total_Mark = (coursework_mark + final_exam_mark/200*100))
View(mydata4)

mydata5 <- cbind(student_data , Total_Mark = (student_data $coursework_mark + student_data$final_exam_mark/200*100))
View(mydata5)