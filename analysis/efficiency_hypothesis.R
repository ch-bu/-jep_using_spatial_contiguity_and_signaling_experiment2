library(tidyverse)
library(jmv)

data <- read_csv("data/cleaned/data_cleaned_wide.csv")

# Efficiency for global cohesion
jmv::ANOVA(
  formula = efficiency_global ~ color_coding,
  effectSize = "partEta",
  data = data)

# Efficiency for local cohesion
jmv::ANOVA(
  formula = efficiency_local ~ color_coding,
  effectSize = "partEta",
  data = data)
