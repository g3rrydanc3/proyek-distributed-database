<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $this->load->view("travelagent/header") ?>

<div class="container pt-3">
	<div class="jumbotron">
		<h1 class="display-2">
			<?= strtoupper($hotel_name)?>
		</h1>
		<p>Best night you ever had!</p>
	</div>

	<div class="card">
		<div class="card-body">
			<form action="" method="get">

				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" class="fa fa-search"><i class="fa fa-search" aria-hidden="true"></i></span>
					</div>
					<input type="text" class="form-control" placeholder="Rooms">
				</div>

				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" class="fa fa-calendar"><i class="fa fa-calendar" aria-hidden="true"></i></span>
					</div>
					<input type="date" class="form-control">
					<input type="date" class="form-control">
				</div>

				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text" class="fa fa-bed"><i class="fa fa-bed" aria-hidden="true"></i></span>
					</div>
					<input type="number" class="form-control" placeholder="Rooms">
				</div>

				<button type="submit" class="btn btn-primary btn-block">Search</button>

			</form>
		</div>
	</div>

</div>

<?php $this->load->view("travelagent/footer") ?>
