$(document).ready ->
	add_mouseover_effect()
	add_loading_effect()
	change_hover_effect()

add_mouseover_effect = () ->
	$(".thumb").mouseover (event) ->
		$(this).parent().prev().attr("src", $(this).attr("src"))
		remove_selected($(this).parent())
		$(this).toggleClass("selected")
		
remove_selected = (div) ->
	pics = $(div).children()
	for i in [0..(pics.length - 1)]
		$(pics[i]).removeClass("selected")
	
add_loading_effect = () ->
	$(".add-to-cart").click (event) ->
		$(this).html("<i class='icon-spinner icon-spin'></i>")

change_hover_effect = () ->
	$(".product").hover (event) ->
		$(this).find(".add-to-cart").toggleClass("btn-success")