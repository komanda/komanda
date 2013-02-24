$(document).ready ->
	loading_effect()
	$("#order_quantity").change ->
		update_total()

update_total = () ->
	$("#total").text("$" + $("#order_quantity").val() * parseInt $("#price").attr("price"))

loading_effect = () ->
	$("#buy").click ->
		$("#buy").hide()
		$("#dummy").show()
