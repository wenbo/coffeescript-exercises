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
#Notice that Tribble.count is referred to as @count in the Tribble class context but not within Tribble methods. This is a little baffling at first, but remember that there are three objects we’re dealing with here: the Tribble object itself (which is actually the constructor function), Tribble.prototype, and the Tribble instance.  By default, Tribble properties (other than constructor) are attached to the proto- type. When we use the @ prefix, we’re insisting that we want to attach the property to the class object itself.

tribble1.die()
tribble2.breed().breed().breed()
Tribble.makeTrouble()
