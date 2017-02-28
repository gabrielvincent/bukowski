# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

	$("#calculate-button").click ->

		$("#price-per-ml").attr("class", "")

		if !(volume =  $("#volume").val())
			$("#price-per-ml").html("Por favor, informe a quantidade")
			$("#price-per-ml").attr("class", "empty-field-alert")
			$("#volume").focus()
			return

		if !(alcoholicPercentage = $("#alcoholicPercentage").val())
			$("#price-per-ml").html("Por favor, informe o teor alcóolico")
			$("#price-per-ml").attr("class", "empty-field-alert")
			$("#alcoholicPercentage").focus()
			return

		if !(price = $("#price").val())
			$("#price-per-ml").html("Por favor, informe o preço")
			$("#price-per-ml").attr("class", "empty-field-alert")
			$("#price").focus()
			return

		totalAlcohol = (alcoholicPercentage * volume) / 100
		pricePerML = price / totalAlcohol

		if (pricePerML = pricePerML.toFixed(2)) == "0.00"
			pricePerML = "menos de 1 centavo"
		else
			pricePerML = "R$" + pricePerML

		$("#price-per-ml").html "Preço por mL de álcool: " + pricePerML