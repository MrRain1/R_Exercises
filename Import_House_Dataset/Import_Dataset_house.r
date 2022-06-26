df <- read.csv("R_Exercises/Import_House_Dataset/House_Price.csv", header = TRUE)
str(df)

summary(df)
hist(df$crime_rate)
pairs(~price + crime_rate + n_hot_rooms + rainfall, data = df)
barplot(table((df$airport)))
barplot(table((df$waterbody)))
barplot(table((df$bus_ter)))