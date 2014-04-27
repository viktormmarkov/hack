<div class="modal" id="modal">
    <div class="modal-dialog" id="reservation">
        <div class="modal-content">
            <form role="form" method="post">
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" onclick="closeModal()" aria-hidden="true">×</button>
                    <h4 class="modal-title">Резервация</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="date" class="datepicker" placeholder="date"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="hour" class="" placeholder="hour"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="p_count" class="" placeholder="people count"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="name" class="" placeholder="name"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="phone" class="" placeholder="phone"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="email" class="" placeholder="email"></div>
                    <div class="form-group"><input type="hidden" name="page" value="save_reserve"></div>
                    <div class="form-group"><input type="hidden" name="business_id" id="business_id"></div>
                    <div class="form-group"><input class="btn btn-default btn-sm btn-block" type="submit" name="save" value="Save"></div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
{literal}
<script>
    function closeModal(){
        $("#modal").removeClass("shown");
    }
    var map;
	
	function getLocation()
	  {
	  if (navigator.geolocation)
		{
		navigator.geolocation.getCurrentPosition(initialize);
		}
	  }

    function initialize(position) {
		console.log(position);
		if(!position.coords) var coords=new google.maps.LatLng(42, 23);
		else var coords =new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
      var mapOptions = {
        zoom: 8,
        center: coords
      };

      map = new google.maps.Map(document.getElementById('map-canvas'),
          mapOptions);
		  get_marks(position);
    }


	google.maps.event.addDomListener(window , 'load' ,initialize);
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
	all:$('#all:checked').val(),
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
	
	function search() {
		 if (navigator.geolocation)
		{
		navigator.geolocation.getCurrentPosition(initialize);
		}
		
	}
	function reserve(id) {
		$('#business_id').val(id)
		$('#modal').addClass("shown")
	}

   // google.maps.event.addDomListener(window, 'load', initialize);

    
    </script>
{/literal}
<form role="form" class="my-inline-form form-inline">
    <div class="form-group">
        <input class="name-search my-input input-sm" type="text" id="name" onchange="search()"/>
    </div>
    <div class="form-group">
        <select class="input-sm type-search" id="type" name="type"  onchange="search()">
               <option value="0">Избери</option>
               {html_options options=$types selected=$user_info.type_id}
        </select>
    </div>
    <div class="form-group">
        <div class="checkbox btn">
        <label><input type="checkbox" id="all" value="1"  onchange="search()"/>Заведения около мен</label></div>
    </div>
</form>
<div id="map-canvas" style="height: 350px"></div>
<div class="jumbotron">
	<h1>Make it big</h1>
    <p>Намерете най-добрите услуги близо до вас</p>
</div>