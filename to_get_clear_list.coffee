1.
root = global ? window
# file1.coffee
root.dogName = 'Fido'
dogName is root.dogName

2.
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
