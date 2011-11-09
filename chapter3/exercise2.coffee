once = ->
  if once.hasRun
    null
  else
    once.hasRun = true
    [1, 2, 3]
#console.log  once()
console.log y for y in ["a", "b", "c"]
console.log x for x in once()
