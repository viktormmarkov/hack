<form role="form" class = "well form-horizontal col-md-6" method="post" enctype="multipart/form-data">

    <div class="form-group">
        <label class="col-lg-2 control-label">Name</label>
        <div class="col-lg-10">
            <input class="form-control input-sm" type="text" name="name" id="name" value="{$info.name}" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label">Latitude</label>
        <div class="col-lg-10">
            <input class="form-control-inline  input-sm inline" type="text" name="lat" id="lat" value="{$info.lat}" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label">Lontitude</label>
        <div class="col-lg-10">
            <input class="form-control-inline input-sm inline" type="text" name="lon" id="lon" value="{$info.lon}" />
        </div>
    </div>
    <div class="form-group">
          <label class="col-lg-2 control-label">Description</label>
          <div class="col-lg-10">
              <textarea class="form-control input-sm" name="description"> {$info.description}</textarea>
          </div>
    </div>
    <div class="form-group">
          <label class="col-lg-2 control-label">Work Time</label>
          <div class="col-lg-10">
              <input class="form-control input-sm" type="text" id="worktime" name="worktime" value="{$info.worktime}" />
          </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label">Type</label>
        <div class="col-lg-10">
           <select class="my-extended input-sm" name="type">
               {html_options options=$types selected=$user_info.type_id}
           </select>
        </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label">Image</label>
        <div class="col-lg-10">
            <input class="form-control input-sm" type="file" name="photo"/>
        </div>
    </div>

    <input type="hidden" name="page" value="{$page}" />
    <input type="hidden" name="action" value="edit" />
    <input type="hidden" name="id" value="{$id}" />

    <div class="form-group">
        <div class="col-lg-10 col-lg-offset-2">
            <input class="btn btn-primary" type="submit" name="save" value="Save" />
        </div>
    </div>
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

                  $('#lat').val(object.latLng.k);
                  $('#lon').val(object.latLng.A);
                  if(marker){
                        marker.setMap(null);
                        marker = null;
                  }
                  var myLatlng = new google.maps.LatLng(parseFloat(object.latLng.k),parseFloat(object.latLng.A));
                  marker = new google.maps.Marker({
                  					position: myLatlng,
                  					map: map,
                  					title: object.name
                  				});

              });

    }
    google.maps.event.addDomListener(window, 'load', initialize);
              console.log(map);



</script>
{/literal}
<div class="col-lg-6" id="map-canvas" style="height: 360px"></div>


