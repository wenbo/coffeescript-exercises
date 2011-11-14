#Question:
#2. As everyone knows, the Genie Workers International Union mandates a limit of three wishes across all genies. The following code is designed to enforce that rule, but it has a flaw:
Genie = ->
Genie::wishesLeft = 3

Genie::grantWish = ->
  console.log "@wishesLeft: #{@wishesLeft}"
  if @wishesLeft > 0
    console.log 'Your wish is granted!'
    @wishesLeft--
genie = new Genie
genie.grantWish() 
#What’s wrong with this code, and how would you fix it?


#Answer:
#You can read prototype properties from an object as if the property were attached to the object, but when you write obj.x = y, you’re always setting the value of a property on the object itself (potentially shadowing a prototype property).
#As a rule, you should never use the same name for a prototype property and an instance property. 

Genie1 = ->
Genie1.wishesLeft = 3
Genie1::grantWish = ->
  console.log "Genie1.wishesLeft: #{Genie1.wishesLeft}"
  if Genie1.wishesLeft > 0
    console.log 'Your wish is granted!'
    Genie1.wishesLefts--
    console.log "Genie1.wishesLeft: #{Genie1.wishesLeft}"
genie = new Genie1
genie.grantWish() 
genie.grantWish() 
