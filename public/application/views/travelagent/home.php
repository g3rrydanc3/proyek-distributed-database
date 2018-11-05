<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $this->load->view("travelagent/header") ?>

<!-- Page Content -->
<!-- Home -->

	<div class="home">
		<div class="home_background" style="background-image:url(<?php  echo base_url() ?>asset/images/home.jpg)"></div>
		<div class="home_content">
			<div class="home_content_inner">
				<div class="home_text_large">discover</div>
				<div class="home_text_small">Discover new worlds</div>
			</div>
		</div>
	</div>

	

	<!-- Top Destinations -->

	<div class="top">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h2>Top destinations in Europe</h2>
						<div>take a look at these offers</div>
					</div>
				</div>
			</div>
			<div class="row top_content">

				<div class="col-lg-3 col-md-6 top_col">

					<!-- Top Destination Item -->
					<div class="top_item">
						<a href="#">
							<div class="top_item_image"><img src="<?php  echo base_url() ?>asset/images/top_1.jpg" alt="https://unsplash.com/@sgabriel"></div>
							<div class="top_item_content">
								<div class="top_item_price">From Rp. 890</div>
								<div class="top_item_text">Alun - Alun Kediri</div>
								
								<!-- On Click Order -->
								<button class="btn btn-danger" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
								<div id="id01" class="modal">
									<div class="form-style-5">
										<form>
										<fieldset>
										<legend><span class="number">1</span> Customer Info</legend>
										<input type="text" name="field1" placeholder="Your Name *">
										<input type="email" name="field2" placeholder="Your Email *">
										<textarea name="field3" placeholder="Address*"></textarea>
										<input type="text" name="field4" placeholder="Your Phone *">
										    
										</fieldset>
										
										<fieldset>
										<legend><span class="number">2</span> Order Info</legend>
										<label for="job">Hotel Name : </label>
										<input type="text" name="field4" placeholder="Hotel Name" readonly>
										<label for="job">Rooms :</label>
										<input type="number" id="myNumber" min="1" value="1">
										<label for="job">Duration (night):</label>
										<input type="number" id="myNumber" min="1" value="1">
										<label for="job">Check In:</label>
										<input type="date" name="cin">
										<label for="job">Check Out:</label>
										<input type="date" name="cout">
										</fieldset>
										<input type="submit" value="Apply" />
										</form>
									</div>
								</div>
								<!-- Pop Up End -->
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 top_col">

					<!-- Top Destination Item -->
					<div class="top_item">
						<a href="#">
							<div class="top_item_image"><img src="<?php  echo base_url() ?>asset/images/top_2.jpg" alt="https://unsplash.com/@jenspeter"></div>
							<div class="top_item_content">
								<div class="top_item_price">From Rp. 890</div>
								<div class="top_item_text">Suramadu</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 top_col">

					<!-- Top Destination Item -->
					<div class="top_item">
						<a href="#">
							<div class="top_item_image"><img src="<?php  echo base_url() ?>asset/images/top_3.jpg" alt="https://unsplash.com/@anikindimitry"></div>
							<div class="top_item_content">
								<div class="top_item_price">From Rp. 890</div>
								<div class="top_item_text">Kampung Warna - Warni</div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 top_col">

					<!-- Top Destination Item -->
					<div class="top_item">
						<a href="#">
							<div class="top_item_image"><img src="<?php  echo base_url() ?>asset/images/top_4.jpg" alt="https://unsplash.com/@hellolightbulb"></div>
							<div class="top_item_content">
								<div class="top_item_price">From Rp. 890</div>
								<div class="top_item_text">Surabaya NorthQuay</div>
							</div>
						</a>	
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Popular -->

	<div class="popular">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h2>Popular destinations in 2018</h2>
						<div>take a look at these offers</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="popular_content d-flex flex-md-row flex-column flex-wrap align-items-md-center align-items-start justify-content-md-between justify-content-start">
						
						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="<?php  echo base_url() ?>asset/images/popular_1.jpg" alt="image by Egzon Bytyqi">
								<div class="popular_item_content">
									<div class="popular_item_price">From Rp. 890</div>
									<div class="popular_item_title">Turkey</div>
								</div>
							</a>	
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="<?php  echo base_url() ?>asset/images/popular_2.jpg" alt="https://unsplash.com/@michael75">
								<div class="popular_item_content">
									<div class="popular_item_price">From Rp. 890</div>
									<div class="popular_item_title">Hawai</div>
								</div>
							</a>	
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="<?php  echo base_url() ?>asset/images/popular_3.jpg" alt="https://unsplash.com/@sapegin">
								<div class="popular_item_content">
									<div class="popular_item_price">From Rp. 890</div>
									<div class="popular_item_title">Ireland</div>
								</div>
							</a>	
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="<?php  echo base_url() ?>asset/images/popular_4.jpg" alt="https://unsplash.com/@kensuarez">
								<div class="popular_item_content">
									<div class="popular_item_price">From Rp. 890</div>
									<div class="popular_item_title">Thailand</div>
								</div>
							</a>
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="<?php  echo base_url() ?>asset/images/popular_5.jpg" alt="https://unsplash.com/@noahbasle">
								<div class="popular_item_content">
									<div class="popular_item_price">From Rp. 890</div>
									<div class="popular_item_title">Croatia</div>
								</div>
							</a>
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="<?php  echo base_url() ?>asset/images/popular_6.jpg" alt="https://unsplash.com/@seb">
								<div class="popular_item_content">
									<div class="popular_item_price">From Rp. 890</div>
									<div class="popular_item_title">Bali</div>
								</div>
							</a>
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="<?php  echo base_url() ?>asset/images/popular_7.jpg" alt="https://unsplash.com/@nevenkrcmarek">
								<div class="popular_item_content">
									<div class="popular_item_price">From Rp. 890</div>
									<div class="popular_item_title">France</div>
								</div>
							</a>	
						</div>

						<!-- Popular Item -->
						<div class="popular_item">
							<a href="offers.html">
								<img src="<?php  echo base_url() ?>asset/images/popular_8.jpg" alt="https://unsplash.com/@bergeryap87">
								<div class="popular_item_content">
									<div class="popular_item_price">From Rp. 890</div>
									<div class="popular_item_title">Vietnam</div>
								</div>
							</a>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Special -->

	<div class="special">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
						<h2>Special offers</h2>
						<div>take a look at these offers</div>
					</div>
				</div>
			</div>
		</div>
		<div class="special_content">
			<div class="special_slider_container">
				<div class="owl-carousel owl-theme special_slider">
					
					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item">
							<div class="special_item_background"><img src="<?php  echo base_url() ?>asset/images/special_1.jpg" alt="https://unsplash.com/@garciasaldana_"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Visiting</div>
								<div class="special_title"><a href="offers.html">Indonesia</a></div>
							</div>
						</div>
					</div>

					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item d-flex flex-column align-items-center justify-content-center">
							<div class="special_item_background"><img src="<?php  echo base_url() ?>asset/images/special_2.jpg" alt="https://unsplash.com/@varshesh"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Culture</div>
								<div class="special_title"><a href="offers.html">India</a></div>
							</div>
						</div>
					</div>

					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item d-flex flex-column align-items-center justify-content-center">
							<div class="special_item_background"><img src="<?php  echo base_url() ?>asset/images/special_3.jpg" alt="https://unsplash.com/@paulgilmore_"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Sunbathing</div>
								<div class="special_title"><a href="offers.html">Thailand</a></div>
							</div>
						</div>
					</div>

					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item d-flex flex-column align-items-center justify-content-center">
							<div class="special_item_background"><img src="<?php  echo base_url() ?>asset/images/special_4.jpg" alt="https://unsplash.com/@hellolightbulb"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Visiting</div>
								<div class="special_title"><a href="offers.html">Bali</a></div>
							</div>
						</div>
					</div>

					<!-- Special Offers Item -->
					<div class="owl-item">
						<div class="special_item d-flex flex-column align-items-center justify-content-center">
							<div class="special_item_background"><img src="<?php  echo base_url() ?>asset/images/special_5.jpg" alt="https://unsplash.com/@dnevozhai"></div>
							<div class="special_item_content text-center">
								<div class="special_category">Visiting</div>
								<div class="special_title"><a href="offers.html">France</a></div>
							</div>
						</div>
					</div>

				</div>

				<div class="special_slider_nav d-flex flex-column align-items-center justify-content-center">
					<img src="<?php  echo base_url() ?>asset/images/special_slider.png" alt="">
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<div class="newsletter">
		<!-- Image by https://unsplash.com/@garciasaldana_ -->
		<div class="newsletter_background" style="background-image:url(<?php  echo base_url() ?>asset/images/newsletter.jpg)"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="newsletter_content">
						<div class="newsletter_title text-center">Subscribe to our Newsletter</div>
						<div class="newsletter_form_container">
							<form action="#" id="newsletter_form" class="newsletter_form">
								<div class="d-flex flex-md-row flex-column align-content-center justify-content-between">
									<input type="email" id="newsletter_input" class="newsletter_input" placeholder="Your E-mail Address">
									<button type="submit" id="newsletter_button" class="newsletter_button">Subscribe</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
<?php $this->load->view("travelagent/footer") ?>