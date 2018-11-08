<!--<html lang="en">
<head>
	<title>Contact V2</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" type="text/css" href="<?php  //echo base_url() ?>asset/main.css"/>
	<link rel="icon" type="image/png" href="<?php  //echo base_url() ?>asset/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="<?php  //echo base_url() ?>asset/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?php  //echo base_url() ?>asset/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?php  //echo base_url() ?>asset/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="<?php  //echo base_url() ?>asset/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="<?php  //echo base_url() ?>asset/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="<?php  //echo base_url() ?>asset/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?php  //echo base_url() ?>asset/css/main.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
	  
	<style>
		ul {
			list-style-type: none;
			margin: 0;
			padding: 0;
			overflow: hidden;
			background-color: #333;
		}

		li {
			float: left;
		}

		li a {
			display: block;
			color: white;
			text-align: center;
			padding: 14px 16px;
			text-decoration: none;
		}

		li a:hover:not(.active) {
			background-color: #111;
		}

		.active {
			background-color: #000000;
		}

	</style>
</head>-->

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>POS | SimplePOS</title>
    <link rel="shortcut icon" href="https://spos.tecdiary.com/themes/default/assets/images/icon.png"/>
    <link href="https://spos.tecdiary.com/themes/default/assets/dist/css/styles.css" rel="stylesheet" type="text/css" />
        <script src="https://spos.tecdiary.com/themes/default/assets/plugins/jQuery/jQuery-2.1.4.min.js"></script>
</head>
<body class="skin-green sidebar-collapse sidebar-mini pos">
    <div class="wrapper rtl rtl-inv">

        <header class="main-header">
            <a href="https://spos.tecdiary.com/" class="logo">
                                <span class="logo-mini">POS</span>
                <span class="logo-lg">Simple<b>POS</b></span>
                            </a>
            <nav class="navbar navbar-static-top" role="navigation">
                <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <li><a href="#" class="clock"></a></li>
                                <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="https://spos.tecdiary.com/uploads/avatars/thumbs/male.png" class="user-image" alt="Avatar" />
                                    <span>Admin Admin</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="user-header">
                                        <img src="https://spos.tecdiary.com/uploads/avatars/male.png" class="img-circle" alt="Avatar" />
                                        <p>
                                            <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="8aebeee7e3e4cafeefe9eee3ebf8f3a4e9e5e7">[email&#160;protected]</a>                                            <small>Member since Thu 25 Jun 2015 11:59 AM</small>
                                        </p>
                                    </li>
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="https://spos.tecdiary.com/users/profile/1" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="https://spos.tecdiary.com/logout" class="btn btn-default btn-flat sign_out">Sign Out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>

            <aside class="main-sidebar">
                <section class="sidebar">
                    <ul class="sidebar-menu">
                        <li class="mm_welcome"><a href="<?= site_url(); ?>/restaurant/home"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>

                        <li class="treeview mm_products">
                            <a href="#">
                                <i class="fa fa-barcode"></i>
                                <span>Products</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li id="products_index"><a href="<?= site_url(); ?>/restaurant/products/list"><i class="fa fa-circle-o"></i> List Products</a></li>
                                <li id="products_add"><a href="<?= site_url(); ?>/restaurant/products/add"><i class="fa fa-circle-o"></i> Add Products</a></li>
                            </ul>
                        </li>
                    </ul>
                </section>
            </aside>