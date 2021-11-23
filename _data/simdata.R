load("_data/danova.RData")
library(dplyr)
library(forcats)
danova2 <- danova |> 
  transmute(Fertilizante = factor(tipo, labels = c("B", "C", "A")) |> 
                                    fct_relevel(LETTERS[1:3]),
            Peso = round(tiempo + 100, 1),
            Tierra = factor(temperatura, labels = c("Z1", "Z2", "Z3")),
            Pureza = round(100*scales::rescale(gasto, c(0.5, 0.75)), 1))  
saveRDS(danova2, "_data/danova2.rds")
  
danova2$Fertilizante
fct_relevel(danova2$Fertilizante, LETTERS[1:3])
