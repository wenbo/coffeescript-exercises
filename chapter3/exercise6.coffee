#Question: 
  #For the project in this chapter, we set MIN_WORD_LENGTH as a constant.
#However, it makes more sense from a modularity standpoint to derive
#this from the dictionary we load into the game. How would you do that
#on one line using Math.min.apply and a list comprehension? (Math.min returns
#the argument given with the lowest value, such as Math.min 15, 16, 23, 42,
#5, 8 is 5.

#Answer
console.log Math.min.apply Math, [15, 16, 23, 42, 5, 8]
Math.min.apply Math, (w.length for w in wordList)

