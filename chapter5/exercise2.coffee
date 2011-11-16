#Question:
2. What does this code do? Is the world safe?
$('a').click(destroyWorld).unbind('click')

#Answer: 
 the function destroyWorld will never get called,  the "click" event of  all <a> elements will be removed 

