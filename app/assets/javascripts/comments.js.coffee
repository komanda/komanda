$(document).ready ->
	post_comment()

post_comment = () ->
	$(".post-comment").click ->
		$(this).hide().next().show()
		
