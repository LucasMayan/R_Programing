## Exemplo
#--- Dados
library(datasets)
dados <- cars
#--- Media
media <- mean(cars$speed)
#--- Moda
library(DescTools)
moda_dist <- mode(cars$dist)
moda_speed <- mode(cars$speed)
#---Mediana
mediana_dist <- median(cars$dist)
mediana_speed <- median(cars$speed)
#--- Desvio padrão
desvio_padrao_dist <- sd(cars$dist)
desvio_padrao_speed <- sd(cars$speed)
#--- Correlação
correlacao <- cor(cars$speed, cars$dist)
correlacao <- cor.test(cars$speed, cars$dist)
#--- Amostra
amostra <- sample(1:50, 10, replace = FALSE)
amostras <- dados[amostra, ]