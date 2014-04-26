<!DOCTYPE html>
<html class="no-js" dir="ltr" lang="bg">
<head>
    {include file='head.tpl'}
</head>
<body>
<div class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
          <a href="../" class="navbar-brand">Project Name</a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
        <div class="navbar-collapse collapse" id="navbar-main">
          <ul class="nav navbar-nav">
            <li>
                {if $user_info} <a href="?page=business">biznes</a> | <a href="?page=business">biznes</a> | {/if}
            </li>
            <li>
                <a href="#">ala bala</a>
            </li>
            <li>
                <a href="#">lutenica</a>
            </li>
            <form class="navbar-form navbar-left">
                <input type="text" class="form-control col-lg-8" placeholder="Search">
            </form>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="http://builtwithbootstrap.com/" target="_blank">Register</a></li>
            <li><a href="https://wrapbootstrap.com/?ref=bsw" target="_blank">Login</a></li>
          </ul>
        </div>
      </div>
</div>
<div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h1>Some header</h1>
        <p>
            {if !$page} {include file='pages/index.tpl'} {/if}
            {if $page eq 'business'} {include file='pages/business.tpl'} {/if}
        </p>
      </div>
    </div>
</div>
</body>
</html>

