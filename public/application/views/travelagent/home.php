<?php
defined('BASEPATH') OR exit('No direct scr
ipt access allowed');
?>
<?php $this->load->view("travelagent/header") ?>

<head>
	<ul>
		<li><a href="#home">Travel Agent</a></li>
		<li><a href="#contact">Contact</a></li>
		<li style="float:right"><a class="active" href="#about">Logout</a></li>
	</ul>
	<style>
	</style>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body  style="background-image:url(<?php  echo base_url() ?>asset/images/travelagent.png); background-size: contain, cover;background-repeat: no-repeat;">
  <br>
<div class="container">
  <div class="row">
    <div class="col-sm-6">
      <h3 style="color:white">HOTELS, HOMES, HOSTELS AND MORE</h3>
      <p style="color:white">Get the best prices on 2,000,000+ properties, worldwide</p>
	  
	  <form action="/action_page.php">
		<div class="input-group mb-3">
			<div class="input-group-prepend">
			  <span class="input-group-text" class="fa fa-search"><i class="fa fa-search" aria-hidden="true"></i></span>
			</div>
			<input type="text" class="form-control" placeholder="Rooms" readonly>
		</div>
		<div class="input-group mb-3">
			<div class="input-group-prepend">
			  <span class="input-group-text" class="fa fa-calendar"><i class="fa fa-calendar" aria-hidden="true"></i></span>
			</div>
			<input type="date" class="form-control" placeholder="First Name">
			<input type="date" class="form-control" placeholder="Last Name">
		</div>
		<div class="input-group mb-3">
			<div class="input-group-prepend">
			  <span class="input-group-text" class="fa fa-bed"><i class="fa fa-bed" aria-hidden="true"></i></span>
			</div>
			<input type="number" class="form-control" placeholder="Rooms">
		</div>
		<button type="submit" class="btn btn-primary">Submit</button>
	  </form>
	  
    </div>
	<div class="col-sm-6" style="background-color:rgba(0,0,0,0.5);">
		<div class="row">
			<div class="col-sm-6">
				  <div style="background-color:white;height:260px;margin-top:10px">
						<img src="<?php  echo base_url() ?>asset/images/vip_rooms.jpg" alt="Snow" style="width:100%;height:100px;">
						<center>
							<h3 color="white">NAMA HOTEL</h3>
							<h2>10%</h2>
							<p><b>VIP Room</b></p>
							<button class="btn btn-danger">Book Now</button>
						</center>
				  </div>
			</div>
			<div class="col-sm-6">
				  <div style="background-color:white;height:260px;margin-left:10px;margin-top:10px">
						<img src="<?php  echo base_url() ?>asset/images/poor_rooms.jpg" alt="Snow" style="width:100%;height:100px">
						<center>
							<h3 color="white">NAMA HOTEL</h3>
							<h2>10%</h2>
							<p><b>Poor Room</b></p>
							<button class="btn btn-danger">Book Now</button>
						</center>
				  </div>
			</div>
		</div>
	</div>
  </div>
  <div class="row">
	<div class="col-sm-6">
	</div>
	<div class="col-sm-6" style="background-color:rgba(0,0,0,0.5);margin-top:10px">
		<div id="demo" class="carousel slide" data-ride="carousel">
		  <ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
		  </ul>
		  <div class="carousel-inner">
			<div class="carousel-item active">
			  <img src="<?php  echo base_url() ?>asset/images/carousel_promo1.jpg" alt="Los Angeles" height="200px" style="margin-top:10px;margin-bottom:10px">
			  <div class="carousel-caption">
				<h3></h3>
				<p></p>
			  </div>   
			</div>
			<div class="carousel-item">
			  <img src="<?php  echo base_url() ?>asset/images/carousel_promo2.jpg" alt="Chicago"  height="200px" style="margin-top:10px;margin-bottom:10px">
			  <div class="carousel-caption">
				<h3></h3>
				<p></p>
			  </div>   
			</div>
			<div class="carousel-item">
			  <img src="<?php  echo base_url() ?>asset/images/carousel_promo3.jpg" alt="New York"  height="200px" style="margin-top:10px;margin-bottom:10px">
			  <div class="carousel-caption">
				<h3></h3>
				<p></p>
			  </div>   
			</div>
		  </div>
		  <a class="carousel-control-prev" href="#demo" data-slide="prev">
			<span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		  </a>
		</div>
	</div>
  </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>


</body>
</html>
