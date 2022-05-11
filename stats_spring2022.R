require(tidyverse)
require(knitr)

data <- read.csv("bio239_spring2022.csv")
data

knitr::kable(head(data[, 1:5]), "pipe")

data2 <-
  data %>%
  rename("Fall East" = "east_fall",
         "Spring East" = "east_spring",
         "Fall North" = "north_fall",
         "Spring North" = "north_spring")

