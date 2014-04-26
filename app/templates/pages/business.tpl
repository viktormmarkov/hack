<form method="post" enctype="multipart/form-data">
<label>name</label><br />
<input type="text" name="name" id="name" value="{$info.name}" /><br />
<label>latitude</label><br />
<input type="text" name="lat" id="lat" value="{$info.lat}" /><br />
<label>lontitude</label><br />
<input type="text" name="lon" id="lon" value="{$info.lon}" /><br />
<label>description</label><br />
<textarea name="description"> {$info.description}</textarea><br />
<label>type</label><br />
<select name="type"><br />
<option value="0">izberi</option>

                            {html_options options=$types selected=$user_info.type_id} 
</select>   
<label>hour?</label><br />
<input type="checkbox" name="hour" id="name" value="{$info.name}" /><br />
<label>image</label><br />
<input type="file" name="photo"/><br />
<input type="hidden" name="page" value="{$page}" />
<input type="hidden" name="action" value="edit" />
<input type="hidden" name="id" value="{$id}" />
<input type="submit" name="save" value="Save" />
</form>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>

{literal}
<script>
var map;
    function initialize() {
          var mapOptions = {
            zoom: 8,
            center: new google.maps.LatLng(42.397, 23.644)
          };
          map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
            google.maps.event.addDomListener(map, 'click', function(object){

                  $('#lat').val(object.latLng.A);
                  $('#lon').val(object.latLng.k);

              });

    }
    google.maps.event.addDomListener(window, 'load', initialize);
              console.log(map);



</script>
{/literal}
<div id="map-canvas" style="width: 400px;height: 300px;float:right; position:absolute;"></div>



