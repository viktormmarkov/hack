<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js ie-old" dir="ltr" lang="bg"><![endif]-->
<!--[if IE 7]><html  class="no-js ie ie7 lte-ie9 lte-ie8 lte-ie7" dir="ltr" lang="bg"><![endif]-->
<!--[if IE 8]><html  class="no-js ie ie8 lte-ie9 lte-ie8" dir="ltr" lang="bg"><![endif]-->
<!--[if IE 9]><html  class="no-js ie ie9 lte-ie9" dir="ltr" lang="bg"><![endif]-->
<!--[if (gt IE 9) | !(IE)]><!-->
<html class="no-js" dir="ltr" lang="bg"><!--<![endif]-->
<head>
{include file='head.tpl'}
</head>
<body class="dashboard"> 

<!-- Start: Header -->
<header class="navbar navbar-fixed-top">
  <div class="pull-left"> <a class="navbar-brand" href="dashboard.html">
    <div class="navbar-logo"><img src="{$CONFIG_HOST}/img/logos/logo-red.png" class="img-responsive" alt="logo"/></div>
    </a> </div>
  <div class="pull-right header-btns">
    <div class="messages-menu">
      <button type="button" class="btn btn-sm dropdown-animate" data-toggle="dropdown"> <span class="glyphicon glyphicon-comment"></span> <b>4</b> </button>
      <ul class="dropdown-menu checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Recent Messages <span class="pull-right glyphicons glyphicons-comment"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-avatar"><img src="{$CONFIG_HOST}/img/avatars/header/2.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Maggie</b> - <small class="text-muted">12 minutes ago</small><br />
                Great work Yesterday!</div>
            </li>
            <li>
              <div class="item-avatar"><img src="{$CONFIG_HOST}/img/avatars/header/3.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Robert</b> - <small class="text-muted">3 hours ago</small><br />
                Is the Titan Project still on?</div>
            </li>
            <li>
              <div class="item-avatar"><img src="{$CONFIG_HOST}/img/avatars/header/1.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Cynthia</b> - <small class="text-muted">14 hours ago</small><br />
                Don't forget about the staff meeting tomorrow</div>
            </li>
            <li>
              <div class="item-avatar"><img src="{$CONFIG_HOST}/img/avatars/header/4.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Matt</b> - <small class="text-muted">2 days ago</small><br />
                Thor Project cancelled, Sorry.</div>
            </li>
          </ul>
        </li>
        <li class="dropdown-footer"><a href="messages.html">View All Messages <i class="fa fa-caret-right"></i> </a></li>
      </ul>
    </div>
    <div class="alerts-menu">
      <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-bell"></span> <b>3</b> </button>
      <ul class="dropdown-menu checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Recent Alerts <span class="pull-right glyphicons glyphicons-bell"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-icon"><i style="color: #0066ad;" class="fa fa-facebook"></i> </div>
              <div class="item-message"><a href="#">Facebook likes reached <b>8,200</b></a></div>
            </li>
            <li>
              <div class="item-icon"><i style="color: #5cb85c;" class="fa fa-check"></i> </div>
              <div class="item-message"><a href="#">Robert <b>completed task</b> - Client SEO Revamp</a></div>
            </li>
            <li>
              <div class="item-icon"><i style="color: #f0ad4e" class="fa fa-user"></i> </div>
              <div class="item-message"><a href="#"><b>Marko</b> logged 12 hours</a></div>
            </li>
          </ul>
        </li>
        <li class="dropdown-footer"><a href="#">View All Alerts <i class="fa fa-caret-right"></i> </a></li>
      </ul>
    </div>
    <div class="tasks-menu">
      <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-tag"></span> <b>7</b> </button>
      <ul class="dropdown-menu dropdown-checklist checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Recent Tasks <span class="pull-right glyphicons glyphicons-tag"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-icon"><i class="fa fa-pencil"></i> </div>
              <div class="item-message text-slash"><a>Try Clicking me!</a></div>
              <div class="item-label"><span class="label label-danger">Urgent</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-phone"></i> </div>
              <div class="item-message text-slash"><a>Contact Client and request Approval</a></div>
              <div class="item-label"><span class="label label-info">Normal</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-flask"></i> </div>
              <div class="item-message text-slash"><a>Find new Python Developer </a></div>
              <div class="item-label"><span class="label label-success">Completed</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-facebook"></i> </div>
              <div class="item-message text-slash"><a>Update Facebook Page with Halloween Pictures</a></div>
              <div class="item-label"><span class="label label-primary">In Progress</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-group"></i> </div>
              <div class="item-message text-slash"><a>Organize next Staff Meeting</a></div>
              <div class="item-label"><span class="label label-success">Completed</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-plane"></i> </div>
              <div class="item-message text-slash"><a>Interview new applicant</a></div>
              <div class="item-label"><span class="label label-warning">Moderate</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
          </ul>
        </li>
        <li class="dropdown-footer"><a href="#">View All Tasks <i class="fa fa-caret-right"></i> </a></li>
      </ul>
    </div>
    <div class="btn-group user-menu">
      <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-user"></span> <b>{$user_info.name}</b> </button>
      <button type="button" class="btn btn-sm dropdown-toggle padding-none" data-toggle="dropdown"> <img src="{if $user_info.photo}{$CONFIG_HOST}/uploads/avatars/{$user_info.id}_s.jpg{else}{if $user_info.sex eq '2'}{$CONFIG_HOST}/img/avatars/default_woman_s.jpg{else}{$CONFIG_HOST}/img/avatars/default_man_s.jpg{/if}{/if}" alt="user avatar" width="28" height="28" /> </button>
      <ul class="dropdown-menu checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Your Account <span class="pull-right glyphicons glyphicons-user"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-icon"><i class="fa fa-envelope-o"></i> </div>
              <a class="item-message" href="{$CONFIG_HOST}/page/profile">{$lang.profile}</a> </li>
            <li>
              <div class="item-icon"><i class="fa fa-sign-out"></i></div> <a href="login.html" class="item-message">Sign Out</a>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</header>
<!-- End: Header --> 
<!-- Start: Main -->
<div id="main"> 
  <!-- Start: Sidebar -->
  <aside id="sidebar">
    <div id="sidebar-menu">
      <ul class="nav sidebar-nav">
        {if $user_r.right_view}<li {if $page eq 'right'}class="active" {/if}> <a href="{$CONFIG_HOST}/page/right"><span class="glyphicons glyphicons-star"></span><span class="sidebar-title">{$lang.group_right}</span></a> </li>{/if}
        <li {if $page eq 'games'}class="active" {/if}> <a class="accordion-toggle menu-open" href="#resources"><span class="glyphicons glyphicons-settings"></span><span class="sidebar-title">{$lang.games}</span><span class="caret"></span></a>
          <ul id="resources" class="nav sub-nav"><br>
		{section loop=$categories name=val}
            <li><a href="{$CONFIG_HOST}/page/games/current/{$categories[val].id}"><span style="width: 15px;" class="glyphicons glyphicons-edit"></span>{$categories[val].name}</a></li>
            {/section}
            <li><a href="{$CONFIG_HOST}/page/games/current"><span style="width: 15px;" class="glyphicons glyphicons-edit"></span>{$lang.all_games}</a></li>
          </ul>
        </li>
        
        {if $user_r.view_users}<li {if $page eq 'users'}class="active" {/if}> <a href="{$CONFIG_HOST}/page/users"><span class="glyphicons glyphicons-star"></span><span class="sidebar-title">{$lang.users}</span></a> </li>{/if}
        {if $user_r.view_game}<li {if $page eq 'games_panel'}class="active" {/if}> <a href="{$CONFIG_HOST}/page/games_panel"><span class="glyphicons glyphicons-star"></span><span class="sidebar-title">{$lang.games_panel}</span></a> </li>{/if}
        {if $user_r.view_questions}<li {if $page eq 'questions'}class="active" {/if}> <a href="{$CONFIG_HOST}/page/questions"><span class="glyphicons glyphicons-star"></span><span class="sidebar-title">{$lang.questions}</span></a> </li>{/if}
      </ul>
    </div>
  </aside>
  <!-- End: Sidebar --> 
  <!-- Start: Content -->
  <section id="content">
  
    <div class="container">
      {if !$page} {include file='pages/index.tpl'} {/if}
      {if $page eq 'right' and $user_r.right_view} {include file='pages/right.tpl'} {/if}
      {if $page eq 'games'} {include file='pages/games.tpl'} {/if}
      {if $page eq 'users' and $user_r.view_users} {include file='pages/users.tpl'} {/if}
      {if $page eq 'games_panel' and $user_r.view_game} {include file='pages/games_panel.tpl'} {/if}
      {if $page eq 'questions' and $user_r.view_questions} {include file='pages/questions.tpl'} {/if}
      {if $page eq 'profile'} {include file='pages/profile.tpl'} {/if}
      {if $page eq 'winners'} {include file='pages/winners.tpl'} {/if}
      {if $page eq 'game'} {include file='pages/game.tpl'} {/if}
            

    </div>
  </section>
  <!-- End: Content --> 
</div>
<!-- End: Main --> 

<!-- Begin: Front Page Loading Animation --> 
<div id="page-loader"><span class="glyphicon glyphicon-cog fa-spin cog-1"></span></div>
<!-- End: Front Page Loading Animation --> 
<!-- Core Javascript - via CDN -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
<script src="{$CONFIG_HOST}/js/bootstrap.min.js"></script> <!-- Plugins - Via CDN -->
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/flot/0.8.1/jquery.flot.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery-sparklines/2.1.2/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/fullcalendar/1.6.4/fullcalendar.min.js"></script>

<!-- Plugins - Via Local Storage
<script type="text/javascript" src="vendor/plugins/jqueryflot/jquery.flot.min"></script>
<script type="text/javascript" src="vendor/plugins/sparkline/jquery.sparkline.min.js"></script>
<script type="text/javascript" src="vendor/plugins/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="vendor/plugins/calendar/fullcalendar.min.js"></script>
-->

<!-- Plugins -->
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/calendar/gcal.js"></script><!-- Calendar Addon -->
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/jqueryflot/jquery.flot.resize.min.js"></script><!-- Flot Charts Addon -->
<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/datatables/js/datatables.js"></script><!-- Datatable Bootstrap Addon -->

<!-- Theme Javascript -->
<script type="text/javascript" src="{$CONFIG_HOST}/js/uniform.min.js"></script>
<script type="text/javascript" src="{$CONFIG_HOST}/js/main.js"></script>
<!--<script type="text/javascript" src="js/plugins.js"></script>-->
<script type="text/javascript" src="{$CONFIG_HOST}/js/custom.js"></script>

<script type="text/javascript" src="{$CONFIG_HOST}/vendor/plugins/datepicker/bootstrap-datepicker.js"></script> 
<link rel="stylesheet" type="text/css" href="{$CONFIG_HOST}/vendor/plugins/datepicker/datepicker.css">

{literal}
<script type="text/javascript">
  jQuery(document).ready(function() {
	  
	// Init Theme Core 	  
	Core.init();
 $('.datepicker').datepicker({format: 'yyyy-mm-dd'});
  });
</script>
{/literal}

</body>

</html>
