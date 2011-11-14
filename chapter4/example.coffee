#Boy = ->
  ## by convention, constructor names are capitalized
#Boy::sing = -> console.log "It ain't easy being a boy named Sue"
#sue = new Boy()
#sue.sing()

#Gift = (@name) ->
  #Gift.count++
  #@day = Gift.count
  #@announce()
#Gift.count = 0
#Gift::announce = ->
  #console.log "On day #{@day} of Christmas I received #{@name}"

#gift1 = new Gift('a partridge in a pear tree')
#gift2 = new Gift('two turtle doves')


class Shape
  constructor: (@width) ->
  computeArea: -> throw new Error('I am an abstract class!')
class Square extends Shape
  computeArea: -> Math.pow @width, 2
class Circle extends Shape
  radius: -> @width / 2
  computeArea: -> Math.PI * Math.pow @radius(), 2

showArea = (shape) ->
  unless shape instanceof Shape
    throw new Error('showArea requires a Shape instance!')
  console.log shape.computeArea()
showArea new Square(2)
showArea new Circle(2)
