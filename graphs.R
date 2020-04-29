#setwd("/home/kendal/Projects/covid19-R/")
df = read.csv("my_data.csv")
df$timestamp = as.Date(strptime(df$timestamp, "%Y-%m-%dT%H:%M:%S"))

plot(x = df$timestamp, y = df$estimated, type = "n", pch = 5, main = "ESA COVID19 Casos estimados vs Casos activos", xlab = "Días", ylab = "Personas", col="red", ylim = c(1,40000))
plot(x = df$timestamp, y = df$estimated, type = "n", pch = 5, main = "ESA COVID19 Casos estimados vs Casos activos", xlab = "Días", ylab = "Personas", col="red", ylim = c(1,40000))
lines(df$timestamp,df$estimated, type = "b", col = "red", pch = 5)
lines(df$timestamp,df$estimated, type = "l", col = "red", pch = 5)
lines(df$timestamp,df$current, type = "l", col = "blue", pch = 5)
lines(df$timestamp,df$current, type = "b", col = "blue", pch = 5)

