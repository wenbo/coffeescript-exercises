#Question:
  #What is the output of this code?
  #for x in [1, 2]
  #setTimeout (-> console.log x), 50
  #Bonus question: Does it matter if the timeout is 0?

#Answer:
#The key here is that there’s only one x variable. The timeout is invoked after the loop has finished and x has been set to 2;
#it doesn’t matter what the value of x was when the function was declared.
#**********
#Changing the timeout to 0 has no effect because setTimeout always adds its target to the “event queue,” which isn’t invoked until after all other code has run.
#**********
