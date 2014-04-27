<!DOCTYPE html>
<html class="no-js" dir="ltr" lang="bg">
<head>
    {include file='head.tpl'}
</head>
<body onLoad="getLocation()">
<div class="navbar navbar-default">
    <div class="wrapper">
        <div class="navbar-header">
          <a href="/hack/app" class="navbar-brand">Make It Big</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        {literal}
<script>
 	function open_login() {
		$('#login').attr('style','display:block');
		
	}
	function close_login() {
		
		$('#login').attr('style','display:none');
	}

</script>
{/literal}
{include file = "pages/login.tpl"}

{literal}
<script>
 	function open_register() {
		$('#register').attr('style','display:block');
		
	}
	function close_register() {
		
		$('#register').attr('style','display:none');
	}

</script>
{/literal}
<div class="modal" id="register" style="display:none">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" onclick="close_register()" aria-hidden="true">×</button>
                      <h4 class="modal-title">Вход</h4>
                    </div>
                    <form method="post">
                    <div class="modal-body">
                        <input type="text" placeholder="Username" name="username" />
                        <input type="password" placeholder="Password" name="password" />
                        <input type="text" placeholder="Name" name="name" />
                        <input type="text" placeholder="Phone" name="phone" />
                        <input type="text" placeholder="Email" name="email" />
                        <input type="hidden" value="register" name="page"  />
                        <input type="submit" name="login" value="Register" />
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-default" data-dismiss="modal" onclick="close_register()">Close</button>
                      <input type="submit" name="login" value="Login" />
                    </div>
                   </form>               
                  </div>
                </div>
              </div>
        <div class="navbar-collapse collapse" id="navbar-main">
        {if $user_info}
              <ul class="nav navbar-nav">
                <li>
                     <a href="?page=business">Create Business</a>
                </li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                  <li><a href="?page=logout">Logout</a></li>
                </ul>
         {else}
              <ul class="nav navbar-nav navbar-right">
                <li><a href="javascript:void(0)" onClick="open_register();">Register</a></li>
                <li><a href="javascript:void(0)" onClick="open_login();">Login</a></li>
              </ul>
          {/if}
        </div>
      </div>
</div>
<div class="wrapper">
    <div class="row-fluid">
      <div class="col-lg-12">
            {if !$page} {include file='pages/index.tpl'} {/if}
            {if $page eq 'business'} {include file='pages/business.tpl'} {/if}
            {if $page eq 'tables'} {include file='pages/tables.tpl'} {/if}
            {if $page eq 'view'} {include file='pages/view.tpl'} {/if}
      </div>
    </div>
</div>
</body>
</html>