* Encoding: UTF-8.

* Text to cmap.
T-TEST GROUPS=treatment_numeric(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=transitions_total_text_cmap
  /CRITERIA=CI(.95).


* Cmap to text.
T-TEST GROUPS=treatment_numeric(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=transitions_total_cmap_text
  /CRITERIA=CI(.95).

* Transition likeihood - cmap - text.
T-TEST GROUPS=treatment_numeric(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=transitions_cmap_text_ratio
  /CRITERIA=CI(.95).

* Transition likeihood - text - cmap.
T-TEST GROUPS=treatment_numeric(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=transitions_text_cmap_ratio
  /CRITERIA=CI(.95).

* Transition likeihood - cmap - prompts.
T-TEST GROUPS=treatment_numeric(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=transitions_cmap_leitfragen_ratio
  /CRITERIA=CI(.95).

* Transition likeihood - prompts - text.
T-TEST GROUPS=treatment_numeric(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=transitions_text_leitfragen_ratio
  /CRITERIA=CI(.95).

