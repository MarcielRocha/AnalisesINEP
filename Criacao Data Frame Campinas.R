# Processo de seleção dos dados do Censo Escolar apenas da região de Campinas
# Alterar para a pasta onde se encontram os arquivos
setwd("C:/Users/marci/OneDrive/Documentos/Monografia IFSP/Censo Escolar/Dados") 
getwd()

# Segmentação dos arquivos com dados apenas da cidade de Campinas
censo <- data.frame(read.csv("microdados_ed_basica_2022.csv", header = TRUE, sep = ";"))
censo_campinas_2022 <- subset.data.frame(censo, NO_MUNICIPIO == 'Campinas')

censo <- data.frame(read.csv("microdados_ed_basica_2021.csv", header = TRUE, sep = ";"))
censo_campinas_2021 <- subset.data.frame(censo, NO_MUNICIPIO == 'Campinas')

censo <- data.frame(read.csv("microdados_ed_basica_2020.csv", header = TRUE, sep = ";"))
censo_campinas_2020 <- subset.data.frame(censo, NO_MUNICIPIO == 'Campinas')

censo <- data.frame(read.csv("microdados_ed_basica_2019.csv", header = TRUE, sep = ";"))
censo_campinas_2019 <- subset.data.frame(censo, NO_MUNICIPIO == 'Campinas')


# Criação dos arquivos com dados apenas da cidade de Campinas
write.csv(censo_campinas_2022,"microdados_campinas_2022.csv", row.names = FALSE)
write.csv(censo_campinas_2021,"microdados_campinas_2021.csv", row.names = FALSE)
write.csv(censo_campinas_2020,"microdados_campinas_2020.csv", row.names = FALSE)
write.csv(censo_campinas_2019,"microdados_campinas_2019.csv", row.names = FALSE)



