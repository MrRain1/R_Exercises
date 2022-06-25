data()
library(help = "datasets")

? iris

#vediamo la struttura del dataset iris
str(iris)

#mostriamo sul terminale il contenuto del dataset
iris

#aggiungiamo il dataset al workspace per usarlo
data("iris")
rm(iris)

x1 <- 1:10
x2 <- c(2, 5, 7, 9)
x3 <- seq(5, 50, by = 5)

#con scan() possiamo inserire numeri manualmente
#l'inserimento finisce con due enter
x4 <- scan()

#legge txt
product <- read.table("R_Exercises/Datasets/Product.txt", header = TRUE, sep = "\t") # nolint

str(product)

#legge csv
customer <- read.csv("R_Exercises/Datasets/Customer.csv", header = TRUE)

View(customer)

y <- table(customer$Region)
y

View(y)

#creare grafico a barre
barplot(y)
barplot(y[order(y)])
barplot(y[order(y)], horiz = TRUE)
barplot(y[order(y)], horiz = TRUE, col = "red")
barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "green","grey")) # nolint
barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "green","grey"), border = NA) # nolint

barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "green","grey"), border = NA, main= "Freq \nof Region") # nolint
barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "green","grey"), border = NA, main= "Freq \nof Region", xlab="Number \nof customers") # nolint

#esportare grafico come png
png(filename = "Barplot.png", width = 800, height = 500)
barplot(y[order(y)], horiz = TRUE, col = c("red", "blue", "green","grey"), border = NA, main= "Freq \nof Region", xlab="Number \nof customers") # nolint
dev.off()

hist(customer$Age)
hist(customer$Age, breaks = 5)
hist(customer$Age, breaks = c(0, 40, 60, 100))
hist(customer$Age, breaks = c(0, 40, 60, 100), freq=TRUE, main="Histogram of Age")
