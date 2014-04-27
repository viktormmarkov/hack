<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 11:04:53
         compiled from ".\templates\pages\view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:530535c96e75c8053-68548744%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eb932d99d3cc24dfb63018d557d338c59f625adf' => 
    array (
      0 => '.\\templates\\pages\\view.tpl',
      1 => 1398589490,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '530535c96e75c8053-68548744',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535c96e75cea39_24622598',
  'variables' => 
  array (
    'info' => 0,
    'action' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535c96e75cea39_24622598')) {function content_535c96e75cea39_24622598($_smarty_tpl) {?><?php echo $_smarty_tpl->tpl_vars['info']->value['name'];?>
<br />
<?php echo $_smarty_tpl->tpl_vars['info']->value['description'];?>
<br />



<script>
function set_calemdar(events) {
		$('#calendar').fullCalendar({
			editable: false,
			today: false,
			events: events
		});
	
}
	$(document).ready(function() {
	
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();
		var events;
			$.ajax({type: "POST",
			url:'ajax.php',
			data: {action:'reservation',
			table_id:1,
			business_id:5},
			dataType: "json",
			success: function(data){
				set_calemdar(data);
			}
			});
		
	});


</script>

<input type="hidden" name="action" value="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" id="action">
<div id='calendar'></div>
<?php }} ?>
