* Encoding: UTF-8.

* Local cohesion.
GLM bias_local_cohesion_draft bias_local_cohesion_revision BY color_coding
  /WSFACTOR=Text 2 Polynomial
  /METHOD=SSTYPE(3)
  /PRINT=ETASQ
  /PLOT=PROFILE(Text*color_coding) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Text
  /DESIGN=color_coding.


* Global cohesion.
GLM bias_global_cohesion_draft bias_global_cohesion_revision BY color_coding
  /WSFACTOR=Text 2 Polynomial
  /METHOD=SSTYPE(3)
  /PRINT=ETASQ
  /PLOT=PROFILE(Text*color_coding) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Text
  /DESIGN=color_coding.

