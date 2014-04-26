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


{if $user_info} <a href="?page=business">biznes</a> | <a href="?page=business">biznes</a> | {/if}
    <div class="wrapper">

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

</body>



</html>

