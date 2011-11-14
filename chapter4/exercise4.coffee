#We haven’t discussed bound functions on classes, so perhaps a demonstration is in order. What output do you expect the following code to generate?

(window ? global).property = 'global context'
@property = 'surrounding context'
class Foo
  constructor: -> @property = 'instance context'
  bar: => console.log @property

foo = new Foo
bar = foo.bar
foo.bar()
bar()
#Why might you prefer to define bar using -> instead?

#Answer:
#This is the behavior you want 95 percent of the time. However, there is a overhead from bound functions (in both code size and instantiation time), so they may not be suitable for performance-critical code.


