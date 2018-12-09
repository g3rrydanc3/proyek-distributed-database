<div class="account-container" style="margin: 0 auto;">
	
	<div class="content clearfix">
		
		<form action="/customer/add/<?=$reference?>" method="post">
		
			<h1>Add Customer</h1>		
			<? //if(isset($error)) {?>
			<!--<div class="alert alert-danger">
              <button type="button" class="close" data-dismiss="alert">×</button>
              <strong>Error!</strong> <?//=$error?>
            </div> -->
			<? //} ?>

			<div class="add-fields">
				
				<div class="field">
					<label for="customer_firstname">First name:</label>
					<input type="text" id="firstname" name="customer_firstname" required value="" placeholder="Firstname"/>
				</div> <!-- /field -->

				<div class="field">
					<label for="customer_lastname">Last name:</label>
					<input type="text" id="lastname" name="customer_lastname" required value="" placeholder="Lastname"/>
				</div> <!-- /field -->

				<div class="field">
					<label for="customer_address">Address:</label>
					<input type="text" id="address" name="customer_address" required value="" placeholder="Address"/>
				</div> <!-- /field -->

				<div class="field">
					<label for="customer_phone">Phone:</label>
					<input type="text" id="phone" name="customer_phone" value="" placeholder="Phone"/>
				</div> <!-- /field -->

			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<button class="button btn btn-success btn-large">Add</button>
				
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->
<br>