<?php /* Smarty version Smarty-3.1.16, created on 2014-04-27 19:05:24
         compiled from "./templates/pages/register.tpl" */ ?>
<?php /*%%SmartyHeaderCode:635646376535d259cd47e35-28177532%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2aa6df054d4201e5527950ca4dde1690bd8d12a0' => 
    array (
      0 => './templates/pages/register.tpl',
      1 => 1398614712,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '635646376535d259cd47e35-28177532',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.16',
  'unifunc' => 'content_535d259cd48d36_39421676',
  'variables' => 
  array (
    'CONFIG_HOST' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_535d259cd48d36_39421676')) {function content_535d259cd48d36_39421676($_smarty_tpl) {?><div class="modal" id="register" style="display:none">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" onclick="close_register()" aria-hidden="true">×</button>
                      <h4 class="modal-title">Вход</h4>
                    </div>
                    <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['CONFIG_HOST']->value;?>
">
                    <div class="modal-body">
                    <div class="form-group"><input class = "input-sm my-extended" type="text" placeholder="Username" name="username" /></div>

                    <div class="form-group"><input class = "input-sm my-extended" type="password" placeholder="Password" name="password" /></div>

                    <div class="form-group"><input class = "input-sm my-extended" type="text" placeholder="Name" name="name" /></div>


                    <div class="form-group"> <input class = "input-sm my-extended" type="text" placeholder="Phone" name="phone" /></div>

                    <div class="form-group"><input class = "input-sm my-extended"  type="text" placeholder="Email" name="email" /></div>

                        <input type="hidden" value="register" name="page"  />
                    <div class="form-group"><input class="btn btn-sm btn-block" type="submit" name="login" value="Register" /></div>

                    </div>
                   </form>
                  </div>
                </div>
              </div><?php }} ?>
