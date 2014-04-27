<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 18:43:40
         compiled from "./templates/pages/notifications.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1082247197535d25ac6fe653-34411245%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '87a3982ed08599448a95e407326ca7ba5b1df9b6' => 
    array (
      0 => './templates/pages/notifications.tpl',
      1 => 1398613373,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1082247197535d25ac6fe653-34411245',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'notifications' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535d25ac737db7_25971545',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535d25ac737db7_25971545')) {function content_535d25ac737db7_25971545($_smarty_tpl) {?><br />
<div class="col-lg-10 col-lg-offset-1">
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
<div class="alert alert-dismissable alert-success">
    <button type="button" class="close" data-dismiss="alert">×</button>
    <strong><?php echo $_smarty_tpl->tpl_vars['notifications']->value[$_smarty_tpl->getVariable('smarty')->value['section']['val']['index']]['name'];?>
</strong> successfully added <a href="#" class="alert-link">click here</a>.
</div>
<?php endfor; endif; ?>
</div><?php }} ?>
