* Encoding: UTF-8.

RECODE color_coding ('color_coding'=1) ('no_color_coding'=2) INTO treatment_numeric.
EXECUTE.

* Difference in relative number of fixations.
T-TEST GROUPS=treatment_numeric(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=fixation_count_cmap_relative
  /CRITERIA=CI(.95).

* Difference in dwell time.
T-TEST GROUPS=treatment_numeric(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=dwell_time_cmap
  /CRITERIA=CI(.95).




