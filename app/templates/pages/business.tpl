<form role="form" class = "well col-md-6" method="post" enctype="multipart/form-data">

    <div class="form-group">
        <label>name</label><br />
        <input class="form-control input-sm" type="text" name="name" id="name" value="{$info.name}" /><br />
    </div>
    <div class="form-group inline col-lg-6">
        <label>latitude</label><br />
        <input class="form-control-inline  input-sm inline" type="text" name="lat" id="lat" value="{$info.lat}" /><br />
    </div>
    <div class="form-group inline col-lg-6">
        <label>lontitude</label><br />
        <input class="form-control-inline  input-sm inline" type="text" name="lon" id="lon" value="{$info.lon}" /><br />
    </div>
    <div class="form-group">
        <label>description</label><br />
        <textarea class="form-control  input-sm" name="description"> {$info.description}</textarea><br />
    </div>
    <div class="form-group inline col-lg-6">
    <label>type</label><br />
        <select class="my-extended input-sm" name="type"><br />
        <option value="0">izberi</option>

                                    {html_options options=$types selected=$user_info.type_id}
        </select>
    </div>
</br>
    <div class="form-group inline col-lg-6">
    <div class="checkbox"><label><input type="checkbox" name="hour" id="name" value="{$info.name}"  />hour? </label>
        </div></div>

    <label >image</label><br />
    <input class="btn btn-primary btn-inversed" type="file" name="photo"/><br />
    <input type="hidden" name="page" value="{$page}" />
    <input type="hidden" name="action" value="edit" />
    <input type="hidden" name="id" value="{$id}" />
    <input class="btn btn-primary" type="submit" name="save" value="Save" />
</form>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>

{literal}
<script>
var map;
var marker;
    function initialize() {
          var mapOptions = {
            zoom: 8,
            center: new google.maps.LatLng(42.397, 23.644)
          };
          map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            google.maps.event.addDomListener(map, 'click', function(object){

                  $('#lat').val(object.latLng.A);
                  $('#lon').val(object.latLng.k);
                  if(marker){
                        marker.setMap(null);
                        marker = null;
                  }
                  var myLatlng = new google.maps.LatLng(parseFloat(object.latLng.k),parseFloat(object.latLng.A));
                  marker = new google.maps.Marker({
                  					position: myLatlng,
                  					map: map,
                  					title: object.name,
                  					icon: "img/food.png"
                  				});

              });

    }
    google.maps.event.addDomListener(window, 'load', initialize);
              console.log(map);



</script>
{/literal}
<div class="col-lg-6" id="map-canvas" style="height: 550px"></div>


