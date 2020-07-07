library(tidyverse)
library(jmv)


data <- read_csv("data/cleaned/data_cleaned_wide.csv")


# Text to cmap
jmv::ttestIS(
  formula = transitions_total_text_cmap ~ color_coding,
  data = data,
  vars = transitions_total_text_cmap,
  effectSize = TRUE)

# Cmap to text
jmv::ttestIS(
  formula = transitions_total_cmap_text ~ color_coding,
  data = data,
  vars = transitions_total_cmap_text,
  effectSize = TRUE)

# Transition likelihood - cmap - text
jmv::ttestIS(
  formula = transitions_cmap_text_ratio ~ color_coding,
  data = data,
  vars = transitions_cmap_text_ratio,
  effectSize = TRUE)

# Transition likelihood - text - cmap
jmv::ttestIS(
  formula = transitions_text_cmap_ratio ~ color_coding,
  data = data,
  vars = transitions_text_cmap_ratio,
  effectSize = TRUE)

# Transition likelihood - cmap - prompts
jmv::ttestIS(
  formula = transitions_cmap_leitfragen_ratio ~ color_coding,
  data = data,
  vars = transitions_cmap_leitfragen_ratio,
  effectSize = TRUE)

# Transition likelihood -prompts - text
jmv::ttestIS(
  formula = transitions_text_leitfragen_ratio ~ color_coding,
  data = data,
  vars = transitions_text_leitfragen_ratio,
  effectSize = TRUE)


