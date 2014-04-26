<!DOCTYPE html>


<html class="no-js" dir="ltr" lang="bg"><!--<![endif]-->

<head>

{include file='head.tpl'}

</head>

<body class="dashboard"> 



<!-- Start: Header -->
{if $user_info} <a href="?page=business">biznes</a> | <a href="?page=business">biznes</a> | {/if}


<!-- End: Header --> 

<!-- Start: Main -->

<div id="main"> 

  <!-- Start: Sidebar -->


  <!-- End: Sidebar --> 

  <!-- Start: Content -->

  <section id="content">


    <div class="wrapper">
	<div style="display:none" id="reservation">
    	<form method="post">
        	<input type="text" name="date" class="datepicker" placeholder="date">
        	<input type="text" name="hour" class="" placeholder="hour">
        	<input type="text" name="p_count" class="" placeholder="people count">
        	<input type="text" name="name" class="" placeholder="name">
        	<input type="text" name="phone" class="" placeholder="phone">
        	<input type="text" name="email" class="" placeholder="email">
            <input type="hidden" name="page" value="save_reserve">
            <input type="hidden" name="business_id" id="business_id">
            <input type="submit" name="save" value="Save">
        
        </form>
        </div>
      {if !$page} {include file='pages/index.tpl'} {/if}

      {if $page eq 'business'} {include file='pages/business.tpl'} {/if}

      {if $page eq 'tables'} {include file='pages/tables.tpl'} {/if}

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

