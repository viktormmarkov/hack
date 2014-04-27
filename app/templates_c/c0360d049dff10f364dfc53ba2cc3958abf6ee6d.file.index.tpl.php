<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 19:07:22
         compiled from "./templates/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1802859679535d21a5cbd1d8-40456424%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c0360d049dff10f364dfc53ba2cc3958abf6ee6d' => 
    array (
      0 => './templates/index.tpl',
      1 => 1398614841,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1802859679535d21a5cbd1d8-40456424',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535d21a5d18572_70833794',
  'variables' => 
  array (
    'CONFIG_HOST' => 0,
    'user_info' => 0,
    'business_id' => 0,
    'notifications_c' => 0,
    'page' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535d21a5d18572_70833794')) {function content_535d21a5d18572_70833794($_smarty_tpl) {?><!DOCTYPE html>
<html class="no-js" dir="ltr" lang="bg">
<head>
    <?php echo $_smarty_tpl->getSubTemplate ('head.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

</head>
<body onLoad="getLocation()">
<div class="navbar navbar-default">
    <div class="wrapper">
        <div class="navbar-header">
          <a href="<?php echo $_smarty_tpl->tpl_vars['CONFIG_HOST']->value;?>
" class="navbar-brand"><span class="glyphicon glyphicon-home"></span> Make It Big</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
          </button>
        </div>
        
<script>
 	function open_login() {
		$('#login').attr('style','display:block');
		
	}
	function close_login() {
		
		$('#login').attr('style','display:none');
	}

</script>

<?php echo $_smarty_tpl->getSubTemplate ("pages/login.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ("pages/register.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>



<script>
 	function open_register() {
		$('#register').attr('style','display:block');
		
	}
	function close_register() {
		
		$('#register').attr('style','display:none');
	}

</script>

        <div class="navbar-collapse collapse" id="navbar-main">
        <?php if ($_smarty_tpl->tpl_vars['user_info']->value) {?>
              <ul class="nav navbar-nav">
                <li>
                     <a href="?page=business"><span class="glyphicon glyphicon-briefcase"></span> Create Business</a>
                </li>
                <?php if ($_smarty_tpl->tpl_vars['business_id']->value['id']) {?>
                <li>
                     <a href="?page=tables&id=<?php echo $_smarty_tpl->tpl_vars['business_id']->value['id'];?>
"><span class="glyphicon glyphicon-th-large"></span> Manage Business</a>
                </li>
                
                <li>
                     <a href="?page=tables&id=<?php echo $_smarty_tpl->tpl_vars['business_id']->value['id'];?>
"><span class="glyphicon glyphicon-bell"></span> Notifications
                      <span class="badge"><?php echo $_smarty_tpl->tpl_vars['notifications_c']->value;?>
</span></a>
                </li><?php }?>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-user"></span> Hello, <?php echo $_smarty_tpl->tpl_vars['user_info']->value['username'];?>
</a>
                    </li>
                    <li><a href="?page=logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
                </ul>
         <?php } else { ?>
              <ul class="nav navbar-nav navbar-right">
                <li><a href="javascript:void(0)" onClick="open_register();">Register</a></li>
                <li><a href="javascript:void(0)" onClick="open_login();">Login</a></li>
              </ul>
          <?php }?>
        </div>
      </div>
</div>
<div class="wrapper">
    <div class="row-fluid">
      <div class="col-lg-12">
            <?php if (!$_smarty_tpl->tpl_vars['page']->value) {?> <?php echo $_smarty_tpl->getSubTemplate ('pages/index.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
 <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['page']->value=='business') {?> <?php echo $_smarty_tpl->getSubTemplate ('pages/business.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
 <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['page']->value=='tables') {?> <?php echo $_smarty_tpl->getSubTemplate ('pages/tables.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
 <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['page']->value=='view') {?> <?php echo $_smarty_tpl->getSubTemplate ('pages/view.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
 <?php }?>
            <?php if ($_smarty_tpl->tpl_vars['page']->value=='notifications') {?> <?php echo $_smarty_tpl->getSubTemplate ('pages/notifications.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array(), 0);?>
 <?php }?>
      </div>
    </div>
</div>
</body>
</html><?php }} ?>
