
#"<-" operatore di assegnazione
x <- 2
x <- 3
x

#c() operatore di concatenazione
y <-c(1,2,3)
y

#in questo modo possiamo assegnare numeri che si susseguono
y <- 1:10
y

#assegnazione concatenata
x<- y <- 1:10

#somma tra vettori
z <- x+y

#moltiplicazione tra vettori

z2 <- x*y
z2

ls()
remove(z2)

rm(list = ls()) #rimuove tutte le variabili dal workspace
