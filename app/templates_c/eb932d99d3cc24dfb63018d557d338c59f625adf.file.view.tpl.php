<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 09:23:37
         compiled from ".\templates\pages\view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:530535c96e75c8053-68548744%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'eb932d99d3cc24dfb63018d557d338c59f625adf' => 
    array (
      0 => '.\\templates\\pages\\view.tpl',
      1 => 1398583416,
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

<link href='js/fullcallendar/fullcalendar.css' rel="stylesheet" type="text/css">
<link href='js/fullcallendar/fullcalendar.print.css' rel="stylesheet" type="text/css" media='print'>
<script src='js/fullcallendar/fullcalendar.min.js'></script>


<script>

$(function() {
$('#calendar').fullCalendar({
		editable: false,
		firstDay:1,
		allDayDefault: true,
		events:  '/ajax.php?action=reservation&room_id='+$('#action').val()
	});
})
</script>

<input type="hidden" name="action" value="<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
" id="action">
<div id='calendar'></div>
<?php }} ?>
