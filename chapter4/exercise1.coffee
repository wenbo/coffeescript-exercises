#Question:
#1. Explain this output, and fix the code so that the old aphorism is dis-played twice:
   root = global ? window
   root.aphorism = 'Fool me 8 or more times, shame on me'
   do restoreOldAphorism = ->
     aphorism = 'Fool me once, shame on you'
     console.log aphorism
   console.log aphorism

#Answer:
  #change line 6 be 
  root.aphorism = 'Fool me once, shame on you'
