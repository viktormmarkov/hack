<div class="hide" id="reservation">
    <form method="post">
        <input type="text" name="date" class="datepicker" placeholder="date">
        <input type="text" name="hour" class="" placeholder="hour">
        <input type="text" name="p_count" class="" placeholder="people count">
        <input type="text" name="name" class="" placeholder="name">
        <input type="text" name="phone" class="" placeholder="phone">
        <input type="text" name="email" class="" placeholder="email">
        <input type="hidden" name="page" value="save_reserve">
        <input type="hidden" name="business_id" id="business_id">
        <input type="submit" name="save" value="Save">
    </form>
</div>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
{literal}
<script>
    var map;

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
	url:'ajax.php',
	data: {action:'get_business'},
	dataType: "json",
	success: function(data){
		for(var i = 0, object; object = data[i]; i++){
			console.log(object);
			console.log(object.lat, object.lon);
			var myLatlng = new google.maps.LatLng(parseFloat(object.lat),parseFloat(object.lon));
				var infoWindow = new google.maps.InfoWindow();
				var marker = new google.maps.Marker({
					position: myLatlng,
					map: map,
					title: object.name,
					icon: "img/"+object.type_code + ".png"
				});

				google.maps.event.addListener(marker,'click',(function (marker,object) {
						return function () {
							infoWindow.setContent(object.description+'<br><button onclick=reserve('+object.id+')>Reserve</button>');
							infoWindow.open(map, marker);
						}
					})(marker,object)
				);
			}
	}
});
    }

	function reserve(id) {
		$('#business_id').val(id)
		$('#reservation').removeClass("hide")
	}

    google.maps.event.addDomListener(window, 'load', initialize);

    
    </script>
{/literal}
<div id="map-canvas" style="height: 300px"></div>
