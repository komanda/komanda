$(document).ready ->
	join()
	rating()
	add_rating_on_hover()
	datepicker()
	add_links_to_pictures()
	close_picture_modal_with_esc()
	attach_left_right_keys()
	$("li[rel=tooltip]").tooltip()
	
datepicker = () ->
	$(".date-picker").datepicker { dateFormat: "yy-mm-dd", minDate: new Date(), maxDate: "+1y" }
	
join = () ->
	if !$("#join").hasClass('disabled')
		$("#join").click (event) ->
			event.preventDefault()
			$("#join").html("<i class='icon-spinner icon-spin icon-large'></i>")
		
			$.ajax
				type: 'get'
				url: $("#join").attr("href")
				timeout: 8000
				dataType: 'json'
				success: (json) ->
					$("#error").hide()
					$("#join").html("Going").attr("href", "#").addClass("disabled")
					$("#going-count").text(json.count).effect('highlight', {color: '#FCF8E3'}, 2000)
					$("#going").prepend("<li class='hide' id='_new' rel='tooltip'
															 title=" + json.name + "><a href=" + 
															 json.profile_url + "><img src=" + 
															 json.image_url + "></a></li>")
					$("#_new").effect("slide")
					$("#_new").tooltip()
				error: ->
					$("#error").slideDown('fast')
					$("#join").html("Join")

add_links_to_pictures = () ->
	imgs = []
	items = $("#pictures").children()
	
	for i in [0..(items.length - 1)]
		imgs[i] = $(items[i]).attr("alt")
		
	for i in [0..(items.length - 1)]
		$(items[i]).click (event) ->
			event.preventDefault()
			$("#picture-modal img").attr("src", $(this).attr("alt"))
			index = imgs.indexOf($(this).attr("alt"))
			$("#picture_index").text(index + 1) 

			$("#next-button").click ->
				$("#picture-modal img").attr("src", imgs[(index + 1)%imgs.length])
				index++
				$("#picture_index").text(index % imgs.length + 1)

			$("#prev-button").click ->
				if (index == 0) 
					index = imgs.length;
					$("#picture-modal img").attr("src", imgs[index - 1]) 

				else 
					$("#picture-modal img").attr("src", imgs[(index - 1)%imgs.length])
				
				index--
				$("#picture_index").text(index % imgs.length + 1)
			
			$("#picture-modal").show()

attach_left_right_keys = () ->
	$(this).keydown (event) ->
		if event.keyCode == 37
			$("#prev-button").click()

	$(this).keydown (event) ->
		if event.keyCode == 39
			$("#next-button").click()

close_picture_modal_with_esc = () ->
	$("#close-picture-modal").click (event) ->
		event.preventDefault()
		$("#picture-modal").hide()

	$(this).keydown (event) ->
		if event.keyCode == 27
			$("#picture-modal").hide()
			
rating = () ->
	$("#rate a").click (event) ->
		event.preventDefault()
		$("#rating-loading").show()
		$("#rate").css("opacity", 0.1)
		
		$.ajax
			type: 'get'
			url: $(this).attr("href") 
			timeout: 8000
			dataType: 'json'
			success: (json) ->
				$("#rating-error").hide()
				$("#rate").attr("val", json.new_rating)
				$("#rate").css("opacity", 1)
				$("#ratings-count").text(json.count).effect('highlight', {color: '#FCF8E3'}, 2000)
				$("#rating-loading").hide()
			error: ->
				$("#rating-error").slideDown('fast')
				$("#rate").css("opacity", 1)
				$("#rating-loading").hide()
				
add_rating_on_hover = () ->
	$("#rate a").mouseover ->
		$(this).children().first().attr("src", "/assets/star.png")
		prev = $(this).prevAll();
		next = $(this).nextAll();

		for i in [0..(prev.length)]
			$(prev[i]).children().first().attr("src", "/assets/star.png")
			
		for j in [0..(next.length)]
			$(next[j]).children().first().attr("src", "/assets/star_empty.png")


	$("#rate").mouseleave ->
		set_rating()

set_rating = () ->
	rating = parseInt($("#rate").attr("val"))

	links = $("#rate").children()

	for i in [0..(rating - 1)]
		$(links[i]).children().first().attr("src", "/assets/star.png")
		
	for i in [(rating)..5]
		$(links[i]).children().first().attr("src", "/assets/star_empty.png")

			
		
		
		

	