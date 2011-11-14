class Tribble
  constructor: ->
    @isAlive = true
    Tribble.count++
  #Prototype properties
  breed: -> new Tribble if @isAlive
  die: ->
    Tribble.count-- if @isAlive
    @isAlive = false

  # Class-level properties
  @count: 0
  @makeTrouble: -> console.log ('Trouble!' for i in [1..@count]).join(' ')

tribble1 = new Tribble
tribble2 = new Tribble
Tribble.makeTrouble()

tribble1.die()
tribble2.breed().breed().breed()
Tribble.makeTrouble()
