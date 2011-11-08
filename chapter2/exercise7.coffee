#got Nope, the global variable x and function scoped variable x is different.
x = true
showAnswer = (x = x) ->
  console.log if x then 'It works!' else 'Nope.'
showAnswer()
