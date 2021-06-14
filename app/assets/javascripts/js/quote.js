


//hide/show FORM

$(document).ready(function () {
	$('#number-of-apartments').hide();
	$('#number-of-floors').hide();
	$('#number-of-basements').hide();
	$('#number-of-elevators').hide();
	$('#number-of-companies').hide();
	$('#number-of-corporations').hide();
	$('#number-of-parking-spots').hide();
	$('#maximum-occupancy').hide();
	$('#business-hours').hide();
    $('.priceShow').hide();
	$('#quote').hide();
});

//hide/show FORM


//				CALCULE

$(document).ready(function() {
	$("#building_type").change(function() {
		var selectedOption = $("#building_type option:selected").val()
		$("#elevatorShafts").text(0);

		if (selectedOption === 'select') {
			$('#number-of-apartments').hide();
			$('#number-of-floors').hide();
			$('#number-of-basements').hide();
			$('#number-of-elevators').hide();
			$('#number-of-companies').hide();
			$('#number-of-corporations').hide();
			$('#number-of-parking-spots').hide();
			$('#maximum-occupancy').hide();
			$('#business-hours').hide();
			$('.priceShow').hide();
			$('#quote').hide();
			$('#number_appartement').val('');
			$('#number_floor').val('');
			$('#number_basement').val('');
			$('#number_elevator').val('');
			$('#number_compagny').val('');
			$('#number_corporate').val('');
			$('#number_parking').val('');
			$('#max_occupancy').val('');
			$('#business_hour').val('');
		}
		
//						RESIDENTIAL		
		
		if (selectedOption === 'residential') {
			$('#number-of-apartments').show();
			$('#number-of-floors').show();
			$('#number-of-basements').show();
			$('#number-of-elevators').hide();
			$('#number-of-companies').hide();
			$('#number-of-corporations').hide();
			$('#number-of-parking-spots').hide();
			$('#maximum-occupancy').hide();
			$('#business-hours').hide();
			$('.priceShow').show();
			$('#quote').show();
			$('#number_appartement').val('');
			$('#number_floor').val('');
			$('#number_basement').val('');
			$('#number_elevator').val('');
			$('#number_compagny').val('');
			$('#number_corporate').val('');
			$('#number_parking').val('');
			$('#max_occupancy').val('');
			$('#business_hour').val('');

			$("#div").change(function(){

				var number_appartement = $("#number_appartement").val()
				var residentialFloor = $("#number_floor").val()
				var resColumn = 1;

				var averageResidential = number_appartement / residentialFloor
				var resCage = (averageResidential  / 6) + 1 ;

				if (residentialFloor >= 20){
					if (residentialFloor % 20 === 0 ) {
						resColumn = residentialFloor / 20
					} else {
						resColumn = Math.trunc(residentialFloor / 20)  + 1
					}
				}	
			
				 var finalRes = Math.round(Math.trunc(resCage) * resColumn)
				
				 if (finalRes === Infinity){
					 finalRes = 0
				 }
			
				$("#elevatorShafts").text(finalRes);
				
			});
		}
//						RESIDENTIAL		

//						COMMERCIAL		

		if (selectedOption === 'commercial') {
			$('#number-of-apartments').hide();
			$('#number-of-floors').show();
			$('#number-of-basements').show();
			$('#number-of-elevators').show();
			$('#number-of-companies').show();
			$('#number-of-corporations').hide();
			$('#number-of-parking-spots').show();
			$('#maximum-occupancy').hide();
			$('#business-hours').hide();
			$('.priceShow').show();
			$('#quote').show();
			$('#number_appartement').val('');
			$('#number_floor').val('');
			$('#number_basement').val('');
			$('#number_elevator').val('');
			$('#number_compagny').val('');
			$('#number_corporate').val('');
			$('#number_parking').val('');
			$('#max_occupancy').val('');
			$('#business_hour').val('');

			$("#div").change(function(){
				var resultCommercial = $("#number_elevator").val()
				console.log("resultCommercial", resultCommercial)
				$("#elevatorShafts").text(resultCommercial);
			});
		}
//						COMMERCIAL		

//						CORPORATE	

		if (selectedOption === 'corporate') {
			$('#number-of-apartments').hide();
			$('#number-of-floors').show();
			$('#number-of-basements').show();
			$('#number-of-elevators').hide();
			$('#number-of-companies').hide();
			$('#number-of-corporations').show();
			$('#number-of-parking-spots').show();
			$('#maximum-occupancy').show();
			$('#business-hours').hide();
			$('.priceShow').show();
			$('#quote').show();
			$('#number_appartement').val('');
			$('#number_floor').val('');
			$('#number_basement').val('');
			$('#number_elevator').val('');
			$('#number_compagny').val('');
			$('#number_corporate').val('');
			$('#number_parking').val('');
			$('#max_occupancy').val('');
			$('#business_hour').val('');

			$("#div").change(function(){
				var corporateMaxOccupancy = $("#max_occupancy").val();
				var corporateFloor = $("#number_floor").val();
				var corporateBasements = $("#number_basement").val();

				var totalOccupancy = corporateMaxOccupancy * (parseInt(corporateFloor) + parseInt(corporateBasements));
				var elevator = totalOccupancy / 1000;
				var shaft = (parseInt(corporateFloor) + parseInt(corporateBasements)) / 20;
				var averageShaft = elevator / Math.round(shaft)
				var resultCorporate = Math.round(averageShaft) * Math.round(shaft)


				$("#elevatorShafts").text(Math.round(resultCorporate));
			});
		}
//						CORPORATE	

//						HYBRID	

		if (selectedOption === 'hybrid') {
			$('#number-of-apartments').hide();
			$('#number-of-floors').show();
			$('#number-of-basements').show();
			$('#number-of-elevators').hide();
			$('#number-of-companies').show();
			$('#number-of-corporations').hide();
			$('#number-of-parking-spots').show();
			$('#maximum-occupancy').show();
			$('#business-hours').show();
			$('.priceShow').show();
			$('#quote').show();
			$('#number_appartement').val('');
			$('#number_floor').val('');
			$('#number_basement').val('');
			$('#number_elevator').val('');
			$('#number_compagny').val('');
			$('#number_corporate').val('');
			$('#number_parking').val('');
			$('#max_occupancy').val('');
			$('#business_hour').val('');

			$("#div").change(function(){
				var MaxOccupancy = $("#max_occupancy").val();
				var Floor = $("#number_floor").val();
				var Basements = $("#number_basement").val();

				var totalOccupancy = MaxOccupancy * (parseInt(Floor) + parseInt(Basements));
				var Elevator = totalOccupancy / 1000;
				var Shaft = (parseInt(Floor) + parseInt(Basements)) / 20;
				var averageShaft = Elevator / Math.round(Shaft)
				var resultHybrid = Math.round(averageShaft) * Math.round(Shaft)

				$("#elevatorShafts").text(Math.round(resultHybrid));
			});
		}
		
	})
	//						HYBRID	


	//////////			BOUTON RADIO



	$("#elevator_type").change(function() {
		var selectedRadio = $("#elevator_type input[type='radio']:checked");
		
//						STANDARD	

		if (selectedRadio.val() === 'standard'){
			ele_price_unit = 7565
			ele_total_price = $("#elevatorShafts").text() * ele_price_unit
			inst_fee = Math.round(((ele_total_price * 10 / 100) + Number.EPSILON) * 100) / 100 
			final_price = ele_total_price + inst_fee

			$("#ele_price_unit").val(ele_price_unit.toLocaleString() + '$')
			$("#ele_total_price").val(ele_total_price.toLocaleString() + '$')
			$("#inst_fee").val(inst_fee.toLocaleString() + '$')
			$("#final_price").val(final_price.toLocaleString() + '$')
		}
//						STANDARD	

//						PREMIUM			
		if (selectedRadio.val() === 'premium'){
			ele_price_unit = 12345
			ele_total_price = $("#elevatorShafts").text() * ele_price_unit
			inst_fee = Math.round(((ele_total_price * 13 / 100) + Number.EPSILON) * 100) / 100 
			final_price = ele_total_price + inst_fee

			$("#ele_price_unit").val(ele_price_unit.toLocaleString() + '$')
			$("#ele_total_price").val(ele_total_price.toLocaleString() + '$')
			$("#inst_fee").val(inst_fee.toLocaleString() + '$')
			$("#final_price").val(final_price.toLocaleString() + '$')
		}
//						PREMIUM	

//						EXCELIUM			
		if (selectedRadio.val() === 'excelium'){
			ele_price_unit = 15400
			ele_total_price = $("#elevatorShafts").text() * ele_price_unit
			inst_fee = Math.round(((ele_total_price * 16 / 100) + Number.EPSILON) * 100) / 100 
			final_price = ele_total_price + inst_fee

			$("#ele_price_unit").val(ele_price_unit.toLocaleString() + '$')
			$("#ele_total_price").val(ele_total_price.toLocaleString() + '$')
			$("#inst_fee").val(inst_fee.toLocaleString() + '$')
			$("#final_price").val(final_price.toLocaleString() + '$')
			
		}
//						EXCELIUM		


		$("#ele_amount").val($("#elevatorShafts").text())
		
	})

	
	//////////			BOUTON RADIO


})
