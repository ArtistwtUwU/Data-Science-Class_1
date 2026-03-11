data <- iris
str(data)

print(summary(data))

A<-c(170.2, 181.5, 188.9, 163.9, 166.4, 163.7, 160.4, 175.8, 181.5)
print(quantile(A))
sort(A)
print(quantile(A,0.25))
print(quantile(A,0.75))
print(IQR(A))

#HISTOGRAM
hist(iris$Sepal.Length,
     main = "Histogram of Sepal Length",
     xlab = "Sepal length (cm)",
     ylab = " Frequency",
     col = "lightblue",
     border = "black")

#BOXPLOT
boxplot(Sepal.Length ~ Species,
        data = iris,
        main = "Sepal length by species",
        xlab = "species",
        ylab = "Sepal length (cm)",
        col = c("lightgreen","lightpink","lightyellow"))

#SCATTERPLOT
plot(iris$Sepal.Length, iris$Petal.Length,
     main = "Sepal length vs Petal length",
     xlab = "Sepal length (cm)",
     ylab = "Petal length (cm)",
     col = as.numeric(iris$Species),
     pch = 19)

legend("topleft",
       legend = levels(iris$Species),
       col = 1:3,
       pch = 19)