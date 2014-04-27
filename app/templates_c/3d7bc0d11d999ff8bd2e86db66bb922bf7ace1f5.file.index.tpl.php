<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 21:21:07
         compiled from "./templates/pages/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:549760989535d21a5d1ea47-93724849%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3d7bc0d11d999ff8bd2e86db66bb922bf7ace1f5' => 
    array (
      0 => './templates/pages/index.tpl',
      1 => 1398622866,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '549760989535d21a5d1ea47-93724849',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535d21a5d21ce1_77914093',
  'variables' => 
  array (
    'business_id' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535d21a5d21ce1_77914093')) {function content_535d21a5d21ce1_77914093($_smarty_tpl) {?><div class="modal" id="modal">
    <div class="modal-dialog" id="reservation">
        <div class="modal-content">
            <form role="form" method="post">
                <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" onclick="closeModal()" aria-hidden="true">×</button>
                    <h4 class="modal-title">Резервация</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group"><input class="input-sm my-extended datepicker" type="text" name="date" placeholder="date"></div>
                    <div class="form-group">
                    <input class="input-sm my-extended" type="text" name="hour" placeholder="hour"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="p_count" placeholder="people count"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="name" placeholder="name"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="phone" placeholder="phone"></div>
                    <div class="form-group"><input class="input-sm my-extended" type="text" name="email" placeholder="email"></div>
                    <div class="form-group"><input type="hidden" name="page" value="save_reserve"></div>
                    <div class="form-group"><input type="hidden" name="business_id" id="business_id" value="<?php echo $_smarty_tpl->tpl_vars['business_id']->value;?>
"></div>
                    <div class="form-group"><input class="btn btn-default btn-sm btn-block" type="submit" name="save" value="Save"></div>
                </div>
            </form>
        </div>
    </div>
</div>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>

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
		if(!position.coords) var coords=new google.maps.LatLng(42, 23);
		else var coords =new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
      var mapOptions = {
        zoom: 8,
        center: coords
      };

      map = new google.maps.Map(document.getElementById('map-canvas'),
          mapOptions);
		  get_marks(coords);
    }


	google.maps.event.addDomListener(window , 'load' ,initialize);
	function get_marks(position)  {
	  new google.maps.Marker({
					position: position,
					map: map
				});	
					console.log(position);

	$.ajax({type: "POST",
	url:'ajax.php',
	data: {action:'get_business',
	my_lon:position.A,
	my_lat:position.k,
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
							infoWindow.setContent("<div class='desc' style='color:black; width:200px'><strong>"+object.name+'</strong><br>'+object.description+'</div><br><button class="btn btn-sm btn-block" onclick=reserve('+object.id+')>Reserve</button><button style="display: block" class="btn btn-sm btn-block" onclick=view('+object.id+')>View</button>');
							infoWindow.open(map, marker);
							infoWindow.class("desc");
							
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

	function view(id){
	    window.location = "?page=view&id="+id;
	}

   // google.maps.event.addDomListener(window, 'load', initialize);

    
    </script>

<form role="form" class="my-inline-form form-inline">
    <div class="form-group">
        <input class="name-search my-input input-sm" type="text" id="name" onkeyup="search()"/>
        <input type="hidden" id="type" name="type" value="0" />
    </div>
    <div class="form-group">
        <div class="checkbox btn">
        <label><input type="checkbox" id="all" value="1"  onchange="search()"/>Заведения около мен</label></div>
    </div>
</form>
<div class="types">
    <button type="button" class="btn btn-default btn-selected">
        <span class="glyphicon glyphicon-globe"></span> Всички
        <input type="hidden" class="type-id" value="0" />
    </button>
    <button type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-glass"></span> Нощни клубове
      <input type="hidden" class="type-id" value="5" />
    </button>
    <button type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-cutlery"></span> Ресторанти
      <input type="hidden" class="type-id" value="4" />
    </button>
    <button type="button" class="btn btn-default">
      <span class="glyphicon glyphicon-bookmark"></span> Услуги
      <input type="hidden" class="type-id" value="6" />
    </button>
</div>
<div id="map-canvas" style="height: 350px"></div>

<div class="jumbotron">
	<h1>Make it big</h1>
    <p>Намерете най-добрите услуги близо до вас</p>
    <div class="jumbo-image"></div>
</div>


<script type="text/javascript">
    $(document).ready(function(){
        $(".types .btn").click(function(){
            $(this).parent().children().removeClass("btn-selected");
            $(this).addClass("btn-selected");
            $(".my-inline-form #type").val($(this).find(".type-id").val());
            search();
        });
    });
</script>
<?php }} ?>
