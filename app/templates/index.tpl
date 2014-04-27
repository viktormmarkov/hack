<!DOCTYPE html>
<html class="no-js" dir="ltr" lang="bg">
<head>
    {include file='head.tpl'}
</head>
<body onLoad="getLocation()">
<div class="navbar navbar-default">
    <div class="wrapper">
        <div class="navbar-header">
          <a href="" class="navbar-brand">Make It Big</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
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