<!DOCTYPE html>
<html>
<title>Restaurant</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Raleway", sans-serif}
.center {
    margin: auto;
    width: 80%;
    padding: 10px;
}
.isi{
	background-image: url("<?php  echo base_url() ?>asset/images/restaurant-bg.jpg");
}
#portfolio{
	background-color:rgba(0,0,0,0.5);
	color:white;
}
.bottom-left {
    position: absolute;
    bottom: 8px;
    left: 16px;
}

.container_banner {
    position: relative;
    text-align: center;
    color: white;
}
</style>
<body class="w3-light-grey w3-content center isi" style="max-width:1600px">

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main">

  <!-- Header -->
  <header id="portfolio">
    <a href="#"><img src="/w3images/avatar_g2.jpg" style="width:65px;" class="w3-circle w3-right w3-margin w3-hide-large w3-hover-opacity"></a>
    <span class="w3-button w3-hide-large w3-xxlarge w3-hover-text-grey" onclick="w3_open()"><i class="fa fa-bars"></i></span>
    <div class="w3-container"><center>
    <h1><b>Food & Beverages</b></h1>
    <div class="w3-section w3-bottombar w3-padding-16">
      <span class="w3-margin-right">Filter:</span> 
      <button class="w3-button" style="border-style: solid;border-width: thin;"><i class="fa fa-coffee w3-margin-right" style="font-size:24px; margin-left:15px;color:transparent;" ></i><br>ALL</button>
      <button class="w3-button" style="border-style: solid;border-width: thin;"><i class="fa fa-coffee w3-margin-right" style="font-size:24px; margin-left:15px;color:white;" ></i><br>Beverages</button>
      <button class="w3-button" style="border-style: solid;border-width: thin;"><i class="fa fa-coffee w3-margin-right" style="font-size:24px; margin-left:15px;color:white;" ></i><br>Pasta</button>
      <button class="w3-button" style="border-style: solid;border-width: thin;"><i class="fa fa-coffee w3-margin-right" style="font-size:24px; margin-left:15px;color:white;" ></i><br>Chinese</button>
    </div></center>
    </div>
  </header>
  
  <!--banner-->
	<div class="container_banner" style="margin-top:10px;margin-bottom:30px">
		<img src="<?php  echo base_url() ?>asset/images/phd_banner.jpg" alt="Snow" style="width:100%;">
		<div class="bottom-left"><h1><b>PIZZA</b></h1></div>
	</div>
  <!--banner end-->
  
  <!-- First Photo Grid--><center>
  <div class="w3-row-padding">
    <div class="w3-half w3-container w3-margin-bottom" style="background-color:rgba(77, 77, 77, 0.47);">
      <img src="<?php  echo base_url() ?>asset/images/food1.png" alt="Norway" style="width:50%" class="w3-hover-opacity">
      <div class="w3-container">
        <h4 style="color:gold"><b>Lorem Ipsum</b></h4>
        <p style="color:white">Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
		<button class="btn btn-warning">+ Extra Cheese</button>
		<button class="btn btn-danger">Order Now</button>
      </div>
    </div>
    <div class="w3-half w3-container w3-margin-bottom" style="background-color:rgba(77, 77, 77, 0.47);">
      <img src="<?php  echo base_url() ?>asset/images/food1.png" alt="Norway" style="width:50%" class="w3-hover-opacity">
      <div class="w3-container">
        <h4 style="color:gold"><b>Lorem Ipsum</b></h4>
        <p style="color:white">Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
		<button class="btn btn-warning">+ Extra Cheese</button>
		<button class="btn btn-danger">Order Now</button>
      </div>
    </div>
  </div>
  
  <!-- Second Photo Grid-->
  <div class="w3-row-padding">
    <div class="w3-half w3-container w3-margin-bottom" style="background-color:rgba(77, 77, 77, 0.47);">
      <img src="<?php  echo base_url() ?>asset/images/food2.png" alt="Norway" style="width:50%" class="w3-hover-opacity">
      <div class="w3-container">
        <h4 style="color:gold"><b>Lorem Ipsum</b></h4>
        <p style="color:white">Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
		<button class="btn btn-warning">+ Extra Cheese</button>
		<button class="btn btn-danger">Order Now</button>
      </div>
    </div>
    <div class="w3-half w3-container" style="background-color:rgba(77, 77, 77, 0.47);">
      <img src="<?php  echo base_url() ?>asset/images/food2.png" alt="Norway" style="width:50%" class="w3-hover-opacity">
      <div class="w3-container">
        <h4 style="color:gold"><b>Lorem Ipsum</b></h4>
        <p style="color:white">Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
		<button class="btn btn-warning">+ Extra Cheese</button>
		<button class="btn btn-danger">Order Now</button>
      </div>
    </div>
  </div></center>
  
	<div style="color:white">
		<h4>Stock</h4>
		<!-- Progress bars / Skills -->
		<p>Beverages</p>
		<div class="w3-grey">
		  <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:95%">95%</div>
		</div>
		<p>Pasta</p>
		<div class="w3-grey">
		  <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:85%">85%</div>
		</div>
		<p>Chinese</p>
		<div class="w3-grey">
		  <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:80%">80%</div>
		</div>
		<p>
		  <button class="w3-button w3-dark-grey w3-padding-large w3-margin-top w3-margin-bottom">
			<i class="fa fa-download w3-margin-right"></i>Download Sheets
		  </button>
		</p>
	</div>
    <hr>
    
  
<?php $this->load->view('restaurant/footer')?>
<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
    document.getElementById("mySidebar").style.display = "block";
    document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
    document.getElementById("mySidebar").style.display = "none";
    document.getElementById("myOverlay").style.display = "none";
}
</script>

</body>
</html>
