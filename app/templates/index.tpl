<!DOCTYPE html>


<html class="no-js" dir="ltr" lang="bg"><!--<![endif]-->

<head>

{include file='head.tpl'}

</head>

<body class="dashboard"> 



<!-- Start: Header -->



<!-- End: Header --> 

<!-- Start: Main -->

<div id="main"> 

  <!-- Start: Sidebar -->

  

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




</body>



</html>

