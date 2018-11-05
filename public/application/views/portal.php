<?php $this->load->view('_header')?>
<link rel="stylesheet" type="text/css" href="<?= base_url('asset/css/portal.css') ?>">
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
<?php $this->load->view('_footer')?>