#Question:
3. Three of the following selectors are functionally equivalent. Which would
behave differently, and how?
$('#awayTeam .redShirt').die()
$('#awayTeam').find('.redShirt').die()
$('.redShirt, #awayTeam').die()
$('.redShirt', $('#awayTeam')).die()
(By the way, die really is a jQuery method—it’s used to unbind events
attached with live!)

#Answer
$('.redShirt, #awayTeam').die()
This would kill all live events on all elements with the redShirt class and on the awayTeam element as well, rather than just on the redShirt-class members of the awayTeam.  
