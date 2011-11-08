#CoffeeScript doesn’t allow space between a function and its explicit
#parentheses because this would allow parentheses around an expression
#to radically change its meaning. Here are some examples:
  f g h
#This expression really means the following:
  f(g(h))
#Compare that meaning with this expression:
  f (g) h
#Here the parentheses really mean this:
  f(g)(h)
#CoffeeScript’s rule is that if there’s whitespace after any identifier (and
#something other than a postfix operator after the whitespace), then that
#identifier is a function with implicit parentheses.
