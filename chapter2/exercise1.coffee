#to return cleared arr
clearArray = (arr) ->
  arr.splice 0, arr.length
  arr

#to return nothing
clearArray = (arr) ->
  arr.splice 0, arr.length
  return

arr = [1, 2, 3]
console.log clearArray(arr)
