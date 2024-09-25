library(dplyr)
library(readxl)

df <- read_excel('C:/Users/lucas/OneDrive/Pós_Graduação/4 - Técnicas estatísticas teoria e prática (R Programing)/Tema_06/dados.xlsx', col_types = c('text', 'numeric', 'text', 'numeric', 'text'), na = 'NA')
df <- data.frame(df)

amostra1 <- sort(sample(1:20, 11, FALSE))
amostra2 <- sort(sample(1:5, 3, FALSE))

df1 <- df[amostra1, ]
df2 <- df[-amostra1, ]

df3 <- df[ , amostra2]
df4 <- df[ , -amostra2]

df1
df2
df3
df4

View(df)

# Chipd

dados <- cbind(df3,df4)

# Rbind

dados2 <- rbind(df1,df2)

# Filter

dados3 <- filter(df, ((Idade > 30 & Sexo == 'M') | (Idade < 30 & Sexo == 'F')) & N_filhos > 0)

# Select

dados4 <- select(df, c(1,2,5))

# Unique

unique(df$Escolaridade)
unique(df$N_filhos)

# Distinct

dados5 <- distinct(df, Escolaridade, .keep_all = TRUE)

# Summary

summary(df)

# Apply

apply(df, 2, function(x) sum(is.na(x)))


tapply(df$Idade, df$Sexo, mean)
dados6 <- filter(df, Sexo == 'M')

mean(dados6$Idade)






























