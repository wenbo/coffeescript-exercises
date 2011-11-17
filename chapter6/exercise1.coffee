#Question:
#1. What will this code do?
countdown = 10
h = setInterval (-> countdown--), 100
console.log h
do (->) until countdown is 0
clearInterval h
console.log 'Surprise!'

#Answer:
#the loop code never finishes running. 
#Here’s a working version:
countdown = 10
decreaseCountdown = ->
  countdown--
  if countdown is 0
    clearInterval h
    console.log 'Surprise!'
h = setInterval decreaseCountdown, 100
