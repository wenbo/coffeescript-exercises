#The case where implicit parentheses fall short of the end of the line.
func arg if invoke?
func(arg) if invoke?


#The postfix operators (if/unless and for/while/until) are the only major
#exceptions to the rule that implicit parentheses go to the end of the line.
return abortMission warning if warning?
return abortMission(warning) if warning?
if warning? then return abortMission warning
if warning? then return abortMission(warning)

#Adding explicit parentheses that go to the end of the line would change
#the meaning considerably:
return abortMission(warning if warning?)
