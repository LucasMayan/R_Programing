df <- read.csv('C:/dados.csv', sep = ";", dec = ",")

library(jsonlite)

df <- fromJSON("http://educacao.dadosabertosbr.com/api/escolas/buscaavancada?situacaoFuncionamento=1&energiaInexistente=on&aguaInexistente=on&esgotoInexistente=on&cozinha=on")
