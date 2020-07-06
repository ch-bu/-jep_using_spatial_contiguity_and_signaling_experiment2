library(tidyverse)
library(jmv)
library(magrittr)
library(psych)

data <- read_csv("data/cleaned/data_cleaned_wide.csv")

# *********** Analysis of global cohesion *********************
# Local cohesion
jmv::anovaRM(
  data = data,
  rm = list(
    list(
      label="text",
      levels=c("draft", "revision"))),
  rmCells = list(
    list(
      measure="num_non_coherent_sentences_draft",
      cell="draft"),
    list(
      measure="num_non_coherent_sentences_revision",
      cell="revision")),
  bs = color_coding,
  effectSize = "partEta",
  rmTerms = ~ text,
  bsTerms = ~ color_coding)


# Global cohesion
jmv::anovaRM(
  data = data,
  rm = list(
    list(
      label="text",
      levels=c("draft", "revision"))),
  rmCells = list(
    list(
      measure="global_cohesion_draft",
      cell="draft"),
    list(
      measure="global_cohesion_revision",
      cell="revision")),
  bs = color_coding,
  effectSize = "partEta",
  rmTerms = ~ text,
  bsTerms = ~ color_coding)
