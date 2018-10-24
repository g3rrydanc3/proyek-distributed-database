<?php $this->load->view('_header')?>
<link rel="stylesheet" type="text/css" href="asset/css/portal.css">
<body>
	<div class="form-signin">
		<div class="form-label-group">
			<a href="<?= site_url('frontoffice/home')?>"><button class="btn btn-lg btn-primary btn-block">Front Office</button></a>
		</div>
		<div class="form-label-group">
			<a href="<?= site_url('laundry/home')?>"><button class="btn btn-lg btn-primary btn-block">Laundry</button></a>
		</div>
		<div class="form-label-group">
			<a href="<?= site_url('restaurant/home')?>"><button class="btn btn-lg btn-primary btn-block">Restaurant</button></a>
		</div>
		<div class="form-label-group">
			<a href="<?= site_url('travelagent/home')?>"><button class="btn btn-lg btn-primary btn-block">Travel Agent</button></a>
		</div>
	</div>
</body>
<?php $this->load->view('_footer')?>