<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 19:06:00
         compiled from "./templates/pages/login.tpl" */ ?>
<?php /*%%SmartyHeaderCode:701980999535d21a5d1c943-10636808%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '378200c759d5ff8e1ddada58642b81474998b993' => 
    array (
      0 => './templates/pages/login.tpl',
      1 => 1398614758,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '701980999535d21a5d1c943-10636808',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535d21a5d1dc45_96368126',
  'variables' => 
  array (
    'CONFIG_HOST' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535d21a5d1dc45_96368126')) {function content_535d21a5d1dc45_96368126($_smarty_tpl) {?>
<script>
 	function one_login() {
		$('#login').attr('style','display:block');
		
	}
	function close_login() {
		
		$('#login').attr('style','display:none');
	}

</script>

<div class="modal" id="login" style="display:none">
    <div class="modal-dialog" id="login-inside">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" onclick="close_login()" aria-hidden="true">×</button>
          <h4 class="modal-title">Вход</h4>
        </div>
        <div class="modal-body">
        <form  role="form" method="post" action="<?php echo $_smarty_tpl->tpl_vars['CONFIG_HOST']->value;?>
/index.php">
            <div class="form-group">
                <input class = "input-sm my-extended" type="text" placeholder="Username" name="username" />
            </div>
            <div class="form-group">
                <input class = "input-sm my-extended" type="password" placeholder="Password" name="password" />
            </div>
            <input type="hidden" value="login" name="page"  />
            <div class="form-group"><input class="btn btn-sm btn-block" type="submit" name="login" value="Login" /></div>
        </form>
        </div>
      </div>
    </div>
    </div><?php }} ?>
