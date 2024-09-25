library(datasets)

df <- cars[1:6, ]

mediana <- function(vetor){
  vetor <- sort(vetor)
  n     <- length(vetor)
  if(n %% 2 == 0) {
    pos <- n / 2
    return( (vetor[pos] + vetor[pos + 1]) / 2)
  } else {
    pos <- ((n + 1) / 3)
    return(vetor[pos])
  }
}

median(cars$speed)
mediana(cars$speed)

medianas <- c()
nomes    <- c()

for (i in 1:ncol(cars)) {
  nomes    <- c(nomes, colnames(cars[i]))
  medianas <- c(medianas, mediana(cars[ ,i]))
}

cars_medianas <- data.frame("variaveis" = nomes, "Medianas" = medianas)
