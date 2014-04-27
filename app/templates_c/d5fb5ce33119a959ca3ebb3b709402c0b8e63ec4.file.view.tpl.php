<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 18:52:06
         compiled from "./templates/pages/view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1423145346535d27a6b86bf4-32248907%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd5fb5ce33119a959ca3ebb3b709402c0b8e63ec4' => 
    array (
      0 => './templates/pages/view.tpl',
      1 => 1398613373,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1423145346535d27a6b86bf4-32248907',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'info' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535d27a6ba7ee8_31947875',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535d27a6ba7ee8_31947875')) {function content_535d27a6ba7ee8_31947875($_smarty_tpl) {?><div class="container">
<div class="col-lg-12">
    <div class="bs-component">
        <h1>
            Business Title: <?php echo $_smarty_tpl->tpl_vars['info']->value['name'];?>

        </h1>
        <p>
            Business Date: <?php echo $_smarty_tpl->tpl_vars['info']->value['datein'];?>

        </p>
        <p>
            Business Info: <?php echo $_smarty_tpl->tpl_vars['info']->value['worktime'];?>

        </p>
        <p>
            Business Description: <?php echo $_smarty_tpl->tpl_vars['info']->value['description'];?>

        </p>
    </div>
</div>
</div><?php }} ?>
