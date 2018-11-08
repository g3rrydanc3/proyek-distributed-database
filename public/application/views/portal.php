<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<?php $this->load->view("_load_global_css")?>
	<link rel="stylesheet" type="text/css" href="<?= base_url('asset/css/portal.css') ?>">

	<title><?= $title?></title>
</head>

<body>
	<div class="portal-button-list">
		<div class="portal-button">
			<a href="<?= site_url('auth/login/frontoffice')?>"><button class="btn btn-lg btn-primary btn-block">Front Office</button></a>
		</div>
		<div class="portal-button">
			<a href="<?= site_url('auth/login/laundry')?>"><button class="btn btn-lg btn-primary btn-block">Laundry</button></a>
		</div>
		<div class="portal-button">
			<a href="<?= site_url('auth/login/restaurant')?>"><button class="btn btn-lg btn-primary btn-block">Restaurant</button></a>
		</div>
		<div class="portal-button">
			<a href="<?= site_url('auth/login/travelagent')?>"><button class="btn btn-lg btn-primary btn-block">Travel Agent</button></a>
		</div>
	</div>
</body>
<?php $this->load->view("_load_global_js")?>
</html>