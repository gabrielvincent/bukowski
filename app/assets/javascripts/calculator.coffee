# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->


	$("#calculate_button").click ->
		volume =  $("#volume").val()
		alcoholicPercentage = $("#alcoholicPercentage").val()
		price = $("#price").val()

		totalAlcohol = (alcoholicPercentage * volume) / 100
		pricePerML = price / totalAlcohol

		$("#pricePerML").append "Preço por mL de álcool: R$" + pricePerML.toFixed(2)