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

  
	{if !$user_info} {include file='pages/login.tpl'} {include file='pages/register.tpl'} {/if}
    <div class="container">

      {if !$page} {include file='pages/index.tpl'} {/if}

      {if $page eq 'business'} {include file='pages/business.tpl'} {/if}

      
            



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

