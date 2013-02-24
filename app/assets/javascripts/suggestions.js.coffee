$(document).ready ->
	post_button_loading_effect()
	fix_comment_toggle()
	fix_star_link()
	fix_sort_dropdown()
	add_loading_effect_to_sort()

post_button_loading_effect = () ->
	$("#submit").click ->
		toggle_loading_effect()

toggle_loading_effect = () ->
	$("#submit").toggle()
	$("#dummy-button").toggle()
	
fix_comment_toggle = () ->
	$(".comment-toggle").click (event) ->
		event.preventDefault()
		$(this).parent().parent().siblings().find(".loading-comments").first().show()
		
fix_star_link = () ->
	$(".star").click (event) ->
		star = $(this).find("img").first()
		if $(star).attr("src") == "/assets/star.png"
			$(star).attr("src", "/assets/star_empty.png")
		else
			$(star).attr("src", "/assets/star.png")

fix_sort_dropdown = () ->
	$(".dropdown-toggle").dropdown()
	
	$("#recent").click (event) ->
		$("#popular").find("i").first().addClass("icon-check-empty").removeClass("icon-check")
		$("#recent").find("i").first().addClass("icon-check").removeClass("icon-check-empty")
		$("#sort").text("recent")
	
	$("#popular").click (event) ->
		$("#recent").find("i").first().addClass("icon-check-empty").removeClass("icon-check")
		$("#popular").find("i").first().addClass("icon-check").removeClass("icon-check-empty")
		$("#sort").text("popular")

add_loading_effect_to_sort = () ->
	$("#recent, #popular").click () ->
		$("#suggestions").css("opacity", "0.5")
		$(".sort-loading").show()