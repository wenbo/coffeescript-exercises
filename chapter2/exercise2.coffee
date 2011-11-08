fun = (x, y) -> console.log "first arg: #{x}, second arg: #{y}"

run = (fun, args...) -> fun.apply this, args

#Fuck, above line works, but below one did not work
#run = (fun, a, b) -> fun.apply this, a, b

run(fun, 2, 3)
