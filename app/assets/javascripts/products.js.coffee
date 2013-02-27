$(document).ready ->
	add_mouseover_effect_on_pictures()
	add_loading_effect()
	add_size_and_qty_listeners()

add_mouseover_effect_on_pictures = () ->
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

add_size_and_qty_listeners = () ->
	$(".product").find("#qty").change (event) ->
		qty = $(this).val()
		link = $(this).parent().parent().find(".add-to-cart")
		url = link.attr("href")
		url = url.replace(/qty=\d/, "qty=" + qty)
		link.attr("href", url)
	$(".product").find("#size").change (event) ->
		size = $(this).val()
		link2 = $(this).parent().parent().find(".add-to-cart")
		url2 = link2.attr("href")
		url2 = url2.replace(/size=[SML]/, "size=" + size)
		link2.attr("href", url2)