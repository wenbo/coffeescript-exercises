#Question:
  #Recall that 'foo' in arr will tell you whether the array arr contains the string
#'foo' and whether 'bar' of obj will tell you if obj.bar exists. But how would you
#check whether an arbitrary object contains a given value? Start with this:

#Answer
objContains = (obj, match) ->
  for k, v of obj
    if v is match
      return true
    false
