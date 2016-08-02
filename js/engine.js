/**
*  Ajax sending data 
*/	

	$(document).ready(function() {

		$('#myForm').submit(function() {
	
		$.ajax({
			type: 'POST',
			url: "ajaxHandler.php",
			data: $('#myForm').serialize(), 

			beforeSend: function() {
    			$('#submitButton').html('Sending..');
  			},

 			success: function() {
   				$('#success-alert').show('fast').delay(4000).fadeOut();
   				$('#submitButton').addClass('btn btn-block btn-success disabled');
   				update();
   			},

  			error: function() {
   				$('#danger-alert').show('fast').delay(4000).fadeOut();
   				$('#submitButton').html('Try again');
   			}

            })
		
		return false;
		
		});
	});	

/**
*  Ajax get data 
*/	

$(document).ready(function() {

		
    google.charts.load('current', {'packages':['corechart']});
      
    
    google.charts.setOnLoadCallback(drawChart);
      
    function drawChart() {
      var jsonData = $.ajax({
          url: "getData.php",
          dataType: "json",
          })

      	  .done(function(jsonData) {

      	  var data = new google.visualization.DataTable(jsonData);
            
          var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
          chart.draw(data, {width: 400, height: 240});

  		  });
  		  
    }
    setInterval(drawChart, 5000);
});	
