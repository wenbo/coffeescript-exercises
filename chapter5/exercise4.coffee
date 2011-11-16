#Question:
4. Find, explain, and fix the bug in this code:
  $('#drJekyll').click ->
    alert 'Now I shall transform!'
    $('#drJekyll').attr 'id', 'mrHyde'
    $('#drJekyll').unbind 'click'

#Answer:
The following code will, in fact, change drJekyll’s ID to mrHyde.
  $('#drJekyll').click ->
    alert 'Now I shall transform!'
    $('#drJekyll').attr 'id', 'mrHyde'
    $('#drJekyll').unbind 'click'
But annoyingly, it’ll shout “Now I shall transform!” every time it’s clicked.  The problem is that the '#drJekyll' selector doesn’t match anything after the ID change. Moving the unbind to the top of the click function would be one solution. Using $(this) instead of $('#drJekyll') would be even better.
