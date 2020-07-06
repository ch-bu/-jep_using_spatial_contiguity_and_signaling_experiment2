* Encoding: UTF-8.


* Local cohesion.
GLM num_non_coherent_sentences_draft num_non_coherent_sentences_revision BY color_coding
  /WSFACTOR=Text 2 Polynomial
  /METHOD=SSTYPE(3)
  /PRINT=ETASQ
  /PLOT=PROFILE(Text*color_coding) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Text
  /DESIGN=color_coding.


* Global cohesion.
GLM global_cohesion_draft global_cohesion_revision BY color_coding
  /WSFACTOR=Text 2 Polynomial
  /METHOD=SSTYPE(3)
  /PRINT=ETASQ
  /PLOT=PROFILE(Text*color_coding) TYPE=LINE ERRORBAR=NO MEANREFERENCE=NO YAXIS=AUTO
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Text
  /DESIGN=color_coding.

