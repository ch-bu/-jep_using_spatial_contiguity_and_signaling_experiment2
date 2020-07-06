library(tidyverse)
library(jmv)
library(lme4)
library(lmerTest)
library(EMAtools)



# **************** Mental effort ************************************

pupil_data <- read_csv("data/cleaned/pupil_size_per_aoi.csv")
data <- read_csv("data/cleaned/data_cleaned_wide.csv")


ids <- data$id

pupils_filtered <- pupil_data %>% 
  filter(id %in% ids) 


# Model
model <- lmerTest::lmer(mean_pupil_size ~ color_coding + 
                 (1 | aoi), pupils_filtered)

# Results
model %>% summary

# Effect size d
lme.dscore(model, data = pupils_filtered, type = "lme4")



# **************** Judgement of cohesion *****************************

# Local cohesion
jmv::anovaRM(
  data = data,
  rm = list(
    list(
      label="text",
      levels=c("draft", "revision"))),
  rmCells = list(
    list(
      measure="bias_local_cohesion_draft",
      cell="draft"),
    list(
      measure="bias_local_cohesion_revision",
      cell="revision")),
  bs = color_coding,
  effectSize = "partEta",
  rmTerms = ~ text,
  bsTerms = ~ color_coding,
  emMeans = ~ text:color_coding)


# Global cohesion
jmv::anovaRM(
  data = data,
  rm = list(
    list(
      label="text",
      levels=c("draft", "revision"))),
  rmCells = list(
    list(
      measure="bias_global_cohesion_draft",
      cell="draft"),
    list(
      measure="bias_global_cohesion_revision",
      cell="revision")),
  bs = color_coding,
  effectSize = "partEta",
  rmTerms = ~ text,
  bsTerms = ~ color_coding,
  emMeans = ~ text:color_coding)
