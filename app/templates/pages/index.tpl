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
    }
    console.log(map);
    google.maps.event.addDomListener(window, 'load', initialize);

    for(var i = 0; i <4; i++)
    {
        console.log(map);
    }
    </script>
{/literal}
<div id="map-canvas" style="height: 300px"></div>
