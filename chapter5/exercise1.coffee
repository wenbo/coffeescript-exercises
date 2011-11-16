#Question:
1. One common (in fact, nearly universal) mistake made by jQuery newbies
is that they think of jQuery selectors as “live.” For example, they think
that they can add new items to the menu (that is, inserting new lis as
children of #menu) that will also be hidden by using the following:
$('#menu li').hide()
False! How would you go about achieving the desired behavior, without
calling any methods on the individual li elements? (You’re allowed to use
a stylesheet.)

#Answer:
  menu.hideItems li {
  visibility: hidden;
  }

  $('#menu').addClass 'hideItems'
