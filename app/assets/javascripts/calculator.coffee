# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

	$("#calculate-button").click ->

		$(".alert-danger").attr("style", "display:none;")

		if !(volume =  $("#volume").val())
			$(".alert-danger > strong").html("Por favor, informe a quantidade")
			$(".alert-danger").attr("style", "")
			# $("#volume").focus()
			return

		if !(alcoholicPercentage = $("#alcoholicPercentage").val())
			$(".alert-danger > strong").html("Por favor, informe o teor alcóolico")
			$(".alert-danger").attr("style", "")
			$("#alcoholicPercentage").focus()
			return

		if !(price = $("#price").val())
			$(".alert-danger > strong").html("Por favor, informe o preço")
			$(".alert-danger").attr("style", "")
			$("#price").focus()
			return

		totalAlcohol = (alcoholicPercentage * volume) / 100
		pricePerML = price / totalAlcohol

		if (pricePerML = pricePerML.toFixed(2)) == "0.00"
			pricePerML = "menos de 1 centavo"
		else
			pricePerML = "R$" + pricePerML

		$("#price-per-ml").append "Preço por mL de álcool: " + pricePerML + "<hr>"