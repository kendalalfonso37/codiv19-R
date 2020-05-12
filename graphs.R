setwd("/home/kendal/Projects/covid19-R/")
df = read.csv("my_data.csv")
df$date = as.Date(df$date)

# Estadisticas de Confirmados, Recuperados y Muertes

plot(x = df$date, y = df$cumulative_daily, type = "n", pch = 5, main = "Covid-19 El Salvador Actualizado", xlab = "Días", ylab = "Personas", ylim = c(1,800))

lines(df$date,df$cumulative_daily, type = "l", col = "yellow", pch = 5)
text(df$date,df$cumulative_daily, df$cumulative_daily, cex = 0.6)
lines(df$date,df$cumulative_death, type = "l", col = "red", pch = 5)
text(df$date,df$cumulative_death, df$cumulative_death, cex = 0.6)
lines(df$date,df$cumulative_recovered, type = "l", col = "blue", pch = 5)
text(df$date,df$cumulative_recovered, df$cumulative_recovered, cex = 0.6)

legend(x = 'left', y = 'center', legend = c("Confirmados", "Recuperados", "Muertes"), col = c("yellow", "blue", "red"), lty = 1, cex = 0.8)

# Estimacion SIR
plot(x = df$date, y = df$susceptible, type = "n", pch = 5, main = "Covid-19 El Salvador Modelo SIR", xlab = "Días", ylab = "S,I,R", ylim = c(1,1000))

lines(df$date,df$susceptible, type = "l", col = "yellow", pch = 5)
text(df$date,df$susceptible, df$susceptible, cex = 0.6)
lines(df$date,df$cumulative_daily, type = "l", col = "red", pch = 5)
text(df$date,df$cumulative_daily, df$cumulative_daily, cex = 0.6)
lines(df$date,df$cumulative_recovered, type = "l", col = "blue", pch = 5)
text(df$date,df$cumulative_recovered, df$cumulative_recovered, cex = 0.6)

legend(x = 'left', y = 'center', legend = c("S", "R", "I"), col = c("yellow", "blue", "red"), lty = 1, cex = 0.8)
