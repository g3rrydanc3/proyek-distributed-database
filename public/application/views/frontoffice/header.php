<!DOCTYPE html>
<html>
  <head>
    <title><?=$title?></title>
    <meta charset="utf8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="<?php  echo base_url() ?>asset/css/frontoffice/bootstrap.min.css" rel="stylesheet">
	<link href="<?php  echo base_url() ?>asset/css/frontoffice/bootstrap-responsive.min.css" rel="stylesheet">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
	        rel="stylesheet">
	<link href="<?php  echo base_url() ?>asset/css/frontoffice/font-awesome.css" rel="stylesheet">
	<link href="<?php  echo base_url() ?>asset/css/frontoffice/style.css" rel="stylesheet">
	<link href="<?php  echo base_url() ?>asset/css/frontoffice/pages/dashboard.css" rel="stylesheet">
	<link href="<?php  echo base_url() ?>asset/css/frontoffice/pages/signin.css" rel="stylesheet" type="text/css">
  <!--<link href="<?php  echo base_url() ?>asset/js/frontoffice/guidely/guidely.css" rel="stylesheet"> -->

	<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
  </head>
  <body style="margin-bottom: 50px;">
  <div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"><span
                    class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span> </a><a class="brand" href="/"><i class="icon-home"></i> <?=HOTEL_NAME?></a>
      <?
        if(UID){?>
          <div class="nav-collapse">
            <ul class="nav pull-right">
              <!-- <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                class="icon-cog"></i> Account <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="javascript:;">Settings</a></li>
                  <li><a href="javascript:;">Help</a></li>
                </ul>
              </li> -->
                <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                  class="icon-user"></i> <?= "IMMANUEL"; ?> (<?="NUEL"?>) <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  
                    <li><a href="<?= site_url(); ?>/auth/logout/frontoffice">Logout</a></li>
                  </ul>
                </li>
              </ul>
          </div>
          <!--/.nav-collapse --> 
      <? } ?>
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->
<?
  if(UID)
{?>
      <div class="subnavbar">
        <div class="subnavbar-inner">
          <div class="container">
            <ul class="mainnav">
              <li <?php if($page == "reservation"){ echo 'class="active"'; } ?> > <a href="<?php  echo site_url() ?>/frontoffice/reservation"><i class="icon-list-alt"></i><span>Reservation</span> </a> </li>
              <li class="dropdown <?php if($page == "room" || $page == "room_type"){ echo 'active'; } ?> "> <a href="javascript:void;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-home"></i><span>Rooms</span> <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="<?php  echo site_url() ?>/frontoffice/room">Rooms</a></li>
                  <li><a href="<?php  echo site_url() ?>/frontoffice/room_type">Room Types</a></li>
                </ul>
              </li>
              <li > <a href="<?php  echo site_url() ?>/frontoffice/customer"><i class="icon-user"></i><span>Customer</span> </a></li>
              <li > <a href="<?php  echo site_url() ?>/frontoffice/employee"><i class="icon-user"></i><span>Employee</span> </a></li>
            </ul>
          </div>
          <!-- /container --> 
        </div>
        <!-- /subnavbar-inner --> 
      </div>
<? } ?>
<!-- /subnavbar -->