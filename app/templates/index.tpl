<!DOCTYPE html>
<html class="no-js" dir="ltr" lang="bg">
<head>
    {include file='head.tpl'}
</head>
<body onLoad="getLocation()">
<div class="navbar navbar-default">
    <div class="wrapper">
        <div class="navbar-header">
          <a href="/hack/app" class="navbar-brand"><span class="glyphicon glyphicon-home"></span> Make It Big</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
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
{include file = "pages/register.tpl"}

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
        <div class="navbar-collapse collapse" id="navbar-main">
        {if $user_info}
              <ul class="nav navbar-nav">
                <li>
                     <a href="?page=business"><span class="glyphicon glyphicon-briefcase"></span> Create Business</a>
                </li>
                <li>
                     <a href="?page=business"><span class="glyphicon glyphicon-th-large"></span> My Businesses</a>
                </li>
                <li>
                     <a href="?page=business"><span class="glyphicon glyphicon-bell"></span> Notifications <span class="badge">3</span></a>
                </li>
              </ul>
              <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-user"></span> Hello, {$user_info.username}</a>
                    </li>
                    <li><a href="?page=logout"><span class="glyphicon glyphicon-off"></span> Logout</a></li>
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