<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
{literal}
<script>
    var map;
	var json=[{"id":"4","datein":"2014-04-26 15:35:45","name":"\u0413\u0435\u043e\u0440\u0433\u0438","lat":"13","lon":"215","user_id":"1","type_id":"1","hour":"0","img":"","description":"fafasf","type_code":"food"},{"id":"5","datein":"2014-04-26 15:40:52","name":"\u0413\u0435\u043e\u0440\u0433\u0438","lat":"13","lon":"45","user_id":"1","type_id":"1","hour":"0","img":"","description":" gfafga","type_code":"food"}];
    function initialize() {
      var mapOptions = {
        zoom: 8,
        center: new google.maps.LatLng(42.397, 23.644)
      };
      map = new google.maps.Map(document.getElementById('map-canvas'),
          mapOptions);
		  get_marks();
    }


	function get_marks()  {
	$.ajax({type: "POST",
	url: 'ajax.php',
	data: {action:'get_business'},
	dataType: "json",
	async: true,
	success: function(data){
		
	},error: function (jqXHR, textStatus, errorThrown) {
	console.log(textStatus);
	console.log(errorThrown);
	}
});

  }
  

    console.log(map);
    google.maps.event.addDomListener(window, 'load', initialize);

    
    </script>
{/literal}
<div id="map-canvas" style="height: 300px"></div>
