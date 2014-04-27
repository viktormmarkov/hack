<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 20:57:15
         compiled from "./templates/pages/tables.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1412195648535d26801db3d8-93134904%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd57dbe2e266ea087a9e216d839ff7ce37fa8d323' => 
    array (
      0 => './templates/pages/tables.tpl',
      1 => 1398621404,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1412195648535d26801db3d8-93134904',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535d2680203b10_42399703',
  'variables' => 
  array (
    'action' => 0,
    'id' => 0,
    'CONFIG_HOST' => 0,
    'info' => 0,
    'notifications' => 0,
    'business_id' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535d2680203b10_42399703')) {function content_535d2680203b10_42399703($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/var/www/html/rq/app/lib/smarty/libs/plugins/modifier.date_format.php';
?>
<div id="table-container">
<?php if (!$_smarty_tpl->tpl_vars['action']->value) {?>
<a id="change" href="?page=tables&id=<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
&action=edit" class="btn btn-default">Промени </a>
<?php } else { ?>

<input id="bind" value="Bind" type="button" class="btn btn-default"/>
    <input id="unbind" value="UnBind" type="button" class="btn btn-default" />
    <input id="del" value="Delete" type="button"  class="btn btn-default"/>
    <input id="clr" value="Clear All" type="button" class="btn btn-default"/>
    <input id="copy" value="Copy" type="button" class="btn btn-default" />
    <input id="savechanges" type="button" value="Save changes"  class="btn btn-default"/>
</div>
<?php }?>
<input id="hidden_id" type="hidden" value=<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
  />
<div class="modal" id="calendar_modal" style="display:none;">
    <div class="modal-dialog" id="login-inside">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onclick="close_calendar()" aria-hidden="true">×</button>
          <h4 class="modal-title">Calendar</h4>
        </div>
        <div class="modal-body">
        <div id="calendar"></div>

        </div>
      </div>
    </div>
</div>


<div class="row">
    <div class="dvcl col-md-8" id="d1" style="background: url('<?php echo $_smarty_tpl->tpl_vars['CONFIG_HOST']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['info']->value['img'];?>
') center; background-size:1024px 500px; height: 500px; background-repeat: no-repeat"></div>

<script src="js/lib/Rafael.js"></script>
<script src="js/tables/tables.js"></script>
<?php if (!$_smarty_tpl->tpl_vars['action']->value) {?>
                        

<div class="notification col-md-4" >
<div class="modal-header" style=" border:0">  
          <h4 class="modal-title">Намери свободни маси</h4>
        </div>
        <form class="form-inline" role="form">
        <div class="form-group">
        <input type="text" id="filter-date" class="form-control input-sm datepicker"/>
        </div>
        <div class="form-group">
        <input type="text" id="filter-hour" class="form-control input-sm"/>
        </div>
        <div class="form-group">
        <a id="filter_search" value="Search" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></a></div>
        </form>
                        <div class="modal-header" style=" border:0">  
          <h4 class="modal-title">Резервации</h4>
        </div>

        <div class="notification-list">
        <?php if (isset($_smarty_tpl->tpl_vars['smarty']->value['section']['val'])) unset($_smarty_tpl->tpl_vars['smarty']->value['section']['val']);
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['loop'] = is_array($_loop=$_smarty_tpl->tpl_vars['notifications']->value) ? count($_loop) : max(0, (int) $_loop); unset($_loop);
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['name'] = 'val';
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['show'] = true;
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['max'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['loop'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['step'] = 1;
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['start'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['step'] > 0 ? 0 : $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['loop']-1;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['val']['show']) {
    $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['total'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['loop'];
    if ($_smarty_tpl->tpl_vars['smarty']->value['section']['val']['total'] == 0)
        $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['show'] = false;
} else
    $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['total'] = 0;
if ($_smarty_tpl->tpl_vars['smarty']->value['section']['val']['show']):

            for ($_smarty_tpl->tpl_vars['smarty']->value['section']['val']['index'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['start'], $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['iteration'] = 1;
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['iteration'] <= $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['total'];
                 $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['index'] += $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['step'], $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['iteration']++):
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['rownum'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['iteration'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['index_prev'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['index'] - $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['index_next'] = $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['index'] + $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['step'];
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['first']      = ($_smarty_tpl->tpl_vars['smarty']->value['section']['val']['iteration'] == 1);
$_smarty_tpl->tpl_vars['smarty']->value['section']['val']['last']       = ($_smarty_tpl->tpl_vars['smarty']->value['section']['val']['iteration'] == $_smarty_tpl->tpl_vars['smarty']->value['section']['val']['total']);
?>
        	<div class="notification-item" reserve_id="<?php echo $_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['id'];?>
" date="<?php echo $_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['date'];?>
" hour="<?php echo $_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['hour'];?>
" id="not_<?php echo $_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['id'];?>
">
        	   <span class="msg"><?php echo $_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['name'];?>
 - <?php echo smarty_modifier_date_format($_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['date'],"%Y.%m.%d");?>
 
               <?php if ($_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['hour']) {?> <?php echo $_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['hour'];?>
 часа<?php }?></span><a href="javascript:void(0)" class="btn btn-default fright" onclick="remove_notification(<?php echo $_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['id'];?>
)">x</a><br />
        	</div>
        <?php endfor; endif; ?>
        </div>
                <div class="modal-header" style=" border:0">  
          <h4 class="modal-title">Направи резервация</h4>
        </div>
        <form role="form" class="form-inline" action="<?php echo $_smarty_tpl->tpl_vars['CONFIG_HOST']->value;?>
/index.php" method="post">
        
        <div class="form-group"> <input class="datepicker input-sm" name="date" type="text" placeholder="date"/></div>
        <div class="form-group"> <input class="input-sm" name="hour" type="text" placeholder="hour"/></div>
        <div class="form-group"> <input class="input-sm" name="p_count" type="text" placeholder="people count"/></div>
        <div class="form-group"> <input id="" type="submit" value="Save reserve" name="save"  class="btn btn-default"/> </div>
            
            
            
            <input type="hidden" name="page" value="save_reserve">
            <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
">
            <input type="hidden" name="business_id" id="business_id" value="<?php echo $_smarty_tpl->tpl_vars['business_id']->value['id'];?>
">
            <input type="hidden" name="admin" id="business_id" value="1">
            
        </form>

</div>
<?php }?>
</div><?php }} ?>
