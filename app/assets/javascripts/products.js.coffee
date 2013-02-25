$(document).ready ->
	add_mouseover_effect()

add_mouseover_effect = () ->
	$(".thumb").click (event) ->
		event.preventDefault()
	$(".thumb").mouseover (event) ->
		$(this).parent().prev().attr("src", $(this).attr("src"))
		remove_selected($(this).parent())
		$(this).toggleClass("selected")
		
remove_selected = (div) ->
	pics = $(div).children()
	for i in [0..(pics.length - 1)]
		$(pics[i]).removeClass("selected")
	
		