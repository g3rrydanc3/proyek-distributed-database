<?php
defined('BASEPATH') OR exit('No direct scr
ipt access allowed');
?>
<?php $this->load->view("travelagent/header") ?>

<body>
	<ul>
		<li><a href="#home">Home</a></li>
		<li><a href="#contact">Contact</a></li>
		<li style="float:right"><a class="active" href="#about">About</a></li>
	</ul>


	<div class="bg-contact2" style="background-image: url('<?php  echo base_url() ?>asset/images/bg-01.jpg');">
		<div class="container-contact2">
			<div class="wrap-contact2">
				<form class="contact2-form validate-form">
					<span class="contact2-form-title">
						Contact Us
					</span>
					
					<h3 STYLE="COLOR:GREY">Customer Info</h3>
					<div class="wrap-input2 validate-input" data-validate="Name is required">
						<input class="input2" type="text" name="name">
						<span class="focus-input2" data-placeholder="YOUR NAME*"></span>
					</div>

					<div class="wrap-input2 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input2" type="text" name="email">
						<span class="focus-input2" data-placeholder="YOUR EMAIL*"></span>
					</div>

					<div class="wrap-input2 validate-input" data-validate = "Message is required">
						<INPUT TYPE = "TEXT" class="input2" name="message"></INPUT>
						<span class="focus-input2" data-placeholder="YOUR PHONE*"></span>
					</div>
					
					<br>
					<h3 STYLE="COLOR:GREY">Order Info</h3>
					<div class="wrap-input2 validate-input" data-validate="Name is required">
						<label  CLASS="input2" for="job">Hotel Name : </label>
						<input type="text" CLASS="input2" name="field4">
					</div>

					<div class="wrap-input2 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<label  CLASS="input2" for="job">Rooms :</label>
						<input  CLASS="input2"  type="number" id="myNumber" min="1" value="1">
					</div>

					<div class="wrap-input2 validate-input" data-validate = "Message is required">
						<label  class="input2" for="job">Duration (night):</label>
						<input  class="input2" type="number" id="myNumber" min="1" value="1">
					</div>
					
					<div class="wrap-input2 validate-input" data-validate = "Message is required">
						<label class = "input2" for="job">Check In:</label>
						<input class = "input2"  type="date" name="cin">
					</div>
					
					<div class="wrap-input2 validate-input" data-validate = "Message is required">
						<label class = "input2"  for="job">Check Out:</label>
						<input type="date" class = "input2"  name="cout">
					</div>

					<div class="container-contact2-form-btn">
						<div class="wrap-contact2-form-btn">
							<div class="contact2-form-bgbtn"></div>
							<button class="contact2-form-btn">
								Apply
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>




<!--===============================================================================================-->
	<script src="<?php  echo base_url() ?>asset/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php  echo base_url() ?>asset/vendor/bootstrap/js/popper.js"></script>
	<script src="<?php  echo base_url() ?>asset/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php  echo base_url() ?>asset/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="<?php  echo base_url() ?>asset/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script>

</body>
</html>
