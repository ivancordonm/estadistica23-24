# importar datos de AU.txt y convertirlos en un data frame
data <- read.table("AU.txt", header = FALSE)
acido_urico <- as.vector(data$V1)
# representación gráfica de los datos
hist(acido_urico, main = "Histograma ácido úrico", xlab = "Pacientes", ylab = "Ácido Úrico(mg/dL)", col = "lightblue", border = "black", xlim = c(0, 10), ylim = c(0, 13))
# calcular la media
mean <- mean(acido_urico)
sprintf("La media es: %f", mean)
# calcular la mediana
mediam <- median(acido_urico)
sprintf("La mediana es: %f", mediam)
# calcular la moda
moda <- as.numeric(names(which.max(table(acido_urico))))
sprintf("La moda es: %s", moda)
# quantiles 10 y 90
quantile10 <- quantile(acido_urico, 0.1)
sprintf("El quantil 10 es: %f", quantile10)
quantile90 <- quantile(acido_urico, 0.9)
sprintf("El quantil 90 es: %f", quantile90)
# calcular el recorrido
recorrido <- max(acido_urico) - min(acido_urico)
sprintf("El recorrido es: %f", recorrido)
# calcular la cuasidesviación típica
cuasidesviacion <- sd(acido_urico)
sprintf("La cuasidesviación típica es: %f", cuasidesviacion)
# calcular el intervalo de confianza al 95%
intervalo_confianza <- t.test(acido_urico, conf.level = 0.95)
sprintf("El intervalo de confianza al 95%% es: %f, %f", intervalo_confianza$conf.int[1], intervalo_confianza$conf.int[2])
