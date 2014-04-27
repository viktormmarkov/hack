<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 20:24:27
         compiled from "./templates/pages/business.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2040967648535d260e43abe2-46649249%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '85b50905b0163e65d9905b89f3635ea1a63d6d8f' => 
    array (
      0 => './templates/pages/business.tpl',
      1 => 1398619417,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2040967648535d260e43abe2-46649249',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535d260e463a46_55319503',
  'variables' => 
  array (
    'CONFIG_HOST' => 0,
    'info' => 0,
    'types' => 0,
    'user_info' => 0,
    'page' => 0,
    'id' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535d260e463a46_55319503')) {function content_535d260e463a46_55319503($_smarty_tpl) {?><?php if (!is_callable('smarty_function_html_options')) include '/var/www/html/rq/app/lib/smarty/libs/plugins/function.html_options.php';
?><form role="form" class = "well form-horizontal col-md-6" method="post" action="<?php echo $_smarty_tpl->tpl_vars['CONFIG_HOST']->value;?>
/index.php" enctype="multipart/form-data">

    <div class="form-group">
        <label class="col-lg-2 control-label">Name</label>
        <div class="col-lg-10">
            <input class="form-control input-sm" type="text" name="name" id="name" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['name'];?>
" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label">Latitude</label>
        <div class="col-lg-10">
            <input class="form-control-inline  input-sm inline" type="text" name="lat" id="lat" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['lat'];?>
" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label">Lontitude</label>
        <div class="col-lg-10">
            <input class="form-control-inline input-sm inline" type="text" name="lon" id="lon" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['lon'];?>
" />
        </div>
    </div>
    <div class="form-group">
          <label class="col-lg-2 control-label">Description</label>
          <div class="col-lg-10">
              <textarea class="form-control input-sm" name="description"> <?php echo $_smarty_tpl->tpl_vars['info']->value['description'];?>
</textarea>
          </div>
    </div>
    <div class="form-group">
          <label class="col-lg-2 control-label">Work Time</label>
          <div class="col-lg-10">
              <input class="form-control input-sm" type="text" id="worktime" name="worktime" value="<?php echo $_smarty_tpl->tpl_vars['info']->value['worktime'];?>
" />
          </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label">Type</label>
        <div class="col-lg-10">
           <select class="my-extended input-sm" name="type">
           <option value="0">Select </option>
               <?php echo smarty_function_html_options(array('options'=>$_smarty_tpl->tpl_vars['types']->value,'selected'=>$_smarty_tpl->tpl_vars['user_info']->value['type_id']),$_smarty_tpl);?>

           </select>
        </div>
    </div>
    <div class="form-group">
        <label class="col-lg-2 control-label">Image</label>
        <div class="col-lg-10">
            <input class="form-control input-sm" type="file" name="photo"/>
        </div>
    </div>

    <input type="hidden" name="page" value="<?php echo $_smarty_tpl->tpl_vars['page']->value;?>
" />
    <input type="hidden" name="action" value="edit" />
    <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
" />

    <div class="form-group">
        <div class="col-lg-10 col-lg-offset-2">
            <input class="btn btn-primary" type="submit" name="save" value="Save" />
        </div>
    </div>
</form>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>


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

<div class="col-lg-6" id="map-canvas" style="height: 360px"></div>


<?php }} ?>
