library(tidyverse)
library(jmv)


data <- read_csv("data/cleaned/data_cleaned_wide.csv")


# Is there a difference in the relative 
# number of fixations between both conditions?
jmv::ttestIS(
  formula = fixation_count_cmap_relative ~ color_coding,
  data = data,
  vars = fixation_count_cmap_relative,
  effectSize = TRUE)

# Is there a difference in the dwell time between both conditions?
jmv::ttestIS(
  formula = dwell_time_cmap ~ color_coding,
  data = data,
  vars = dwell_time_cmap,
  effectSize = TRUE)
