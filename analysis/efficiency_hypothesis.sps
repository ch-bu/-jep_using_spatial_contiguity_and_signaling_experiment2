* Encoding: UTF-8.

* Global cohesion.
UNIANOVA efficiency_global BY color_coding
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
   /PRINT=ETASQ
  /CRITERIA=ALPHA(0.05)
  /DESIGN=color_coding.

* Local cohesion.
UNIANOVA efficiency_local BY color_coding
  /METHOD=SSTYPE(3)
  /INTERCEPT=INCLUDE
   /PRINT=ETASQ
  /CRITERIA=ALPHA(0.05)
  /DESIGN=color_coding.

