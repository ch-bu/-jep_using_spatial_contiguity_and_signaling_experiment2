library(tidyverse)
library(jmv)


data <- read_csv("data/cleaned/data_cleaned_wide.csv")

# How many participants
nrow(data)

# Mean age
data %>% 
  summarise(across(age, 
                   list(mean = mean, sd = sd)))

# Sex
data %>% count(sex)

data %>% count(sex) %>% {.$n[2] / (.$n[1] + .$n[2])}

# Mean semester
data %>% 
  summarise(across(semester_all, 
                   list(mean = mean, sd = sd)))

# How many participants in each group?
data %>% 
  count(color_coding)

# Prior knowledge
data %>% 
  summarise(across(prior_knowledge, 
                   list(mean = mean, sd = sd)))


# Difference in age between conditions?
jmv::ttestIS(
  formula = age ~ color_coding,
  data = data,
  vars = age,
  effectSize = TRUE)

# Difference in number of enrolled semesters?
jmv::ttestIS(
  formula = semester_all ~ color_coding,
  data = data,
  vars = semester_all,
  effectSize = TRUE)

# Difference in gender?
jmv::contTables(
  formula = ~ sex:color_coding,
  data = data)

# Difference in prior knowledge?
jmv::ttestIS(
  formula = prior_knowledge ~ color_coding,
  data = data,
  vars = prior_knowledge,
  effectSize = TRUE)

# Difference in number of sentences?
jmv::ttestIS(
  formula = num_sentences_draft ~ color_coding,
  data = data,
  vars = num_sentences_draft,
  effectSize = TRUE)

# Difference in number of local cohesion gaps?
jmv::ttestIS(
  formula = num_non_coherent_sentences_draft ~ color_coding,
  data = data,
  vars = num_non_coherent_sentences_draft,
  effectSize = TRUE)

# Difference in global cohesion?
jmv::ttestIS(
  formula = global_cohesion_draft ~ color_coding,
  data = data,
  vars = global_cohesion_draft,
  effectSize = TRUE)
