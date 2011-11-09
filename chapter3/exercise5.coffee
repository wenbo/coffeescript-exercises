#Question:
  #Let’s say that we need to run a function at least once and then run it
  #again repeatedly until a condition is met. In C/Java/JavaScript, we can
  #write this:
    #do {
      #user.harangue()
    #} while (!user.paidInFull)
  #The direct CoffeeScript equivalent would be the following:
      #user.harangue()
      #user.harangue() until user.paidInFull
  #But this violates the sacred principle of DRY (Don’t Repeat Yourself).
  #Define a doAndRepeatUntil function that takes two functions (equivalent to
  #the loop body and the condition), so that we can instead write it this
  #way:
      #doAndRepeatUntil user.harangue, -> user.paidInFull


#Answer:
      doAndRepeatUntil = (func, condition) ->
        func.call this
        func.call this until condition()
