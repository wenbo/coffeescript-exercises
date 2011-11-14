#Question:
#3. The prototype property is not, unfortunately, the “true” prototype of an object. The good news is that you can get the true prototype with __proto__.  The bad news is that __proto__ isn’t supported in all JS environments; in particular, it’s not available under Internet Explorer.  Still, it’s useful to use __proto__ to illustrate the rules we talked about regarding prototype inheritance:
  class Season
  class Spring extends Season

  pro1 = (new Season).__proto__.__proto__
  pro2 = (new Spring).__proto__.__proto__.__proto__
  console.log pro1
  console.log pro2
#In an environment that supports it (such as Node), what is the value of
#the two prototypes shown here?

#Answer:
#Both (new Season).__proto__.__proto__ and (new Spring).__proto__.__proto__.__proto__ are equal to {}.__proto__, the default object prototype.
