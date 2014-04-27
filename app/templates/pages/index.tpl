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
	
	function getLocation()
	  {
	  if (navigator.geolocation)
		{
		navigator.geolocation.getCurrentPosition(initialize);
		}
	  }

    function initialize(position) {
      var mapOptions = {
        zoom: 8,
        center: new google.maps.LatLng(position.coords.latitude, position.coords.longitude)
      };

      map = new google.maps.Map(document.getElementById('map-canvas'),
          mapOptions);
		  get_marks(position);
    }



	function get_marks(position)  {
	  new google.maps.Marker({
					position: new google.maps.LatLng(parseFloat(position.coords.latitude), parseFloat(position.coords.longitude)),
					map: map,
					icon: "img/food.png"
				});	
	$.ajax({type: "POST",
	url:'ajax.php',
	data: {action:'get_business',
	my_lat:position.coords.latitude,
	my_lon:position.coords.longitude,
	type:$('#type').val(),
	all:$('#all').val(),
	name:$('#name').val()},
	dataType: "json",
	success: function(data){
		console.log(data);
		for(var i = 0, object; object = data[i]; i++){
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
							infoWindow.setContent("<div style='color:black; width:200px'>"+object.description+object.description+object.description+object.description+'</div><br><button onclick=reserve('+object.id+')>Reserve</button>');
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

   // google.maps.event.addDomListener(window, 'load', initialize);

    
    </script>
{/literal}
<input class="name-search input-sm" type="text" id="name"/>
<select class="input-sm type-search" id="type" name="type"><br />
       <option value="0">Избери</option>
       {html_options options=$types selected=$user_info.type_id}
</select>
<checkbox id="all" value="1">
</checkbox>
<div id="map-canvas" style="height: 350px"></div>

<div class="jumbotron">
	<h1>Make it big</h1>
    <p>Намерете най-добрите услуги близо до вас</p>
</div>