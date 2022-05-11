require(tidyverse)
require(knitr)

data <- read.csv("bio239_spring2022.csv")
data

knitr::kable(head(data[, 1:5]), "pipe")

