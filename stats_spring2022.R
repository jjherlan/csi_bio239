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

# The starting model contains, as its predictors, the main effect of the response
# factor (in our study, the species of insect at a site, or mound) and the main effects
# and and mutual interactions of th explanatory factors. The response variable in this model
# is the counts. We set up the null model (with a Poisson distribution and an implicit log 
# link function) as follows:

data3 <- read.csv("bio239_spring2022b.csv")
data3

data3 <- as_tibble(data3)
data3

glm.x0 <- glm( count ~ species + season * mound, data = data3, family = poisson)

# We compare this model with alternative models, each extended by one of the two
# interactions between the response factor (species) and an explanatory factor:

add1 ( glm.x0, scope = ~species * season * mound, test = "Chisq")
















