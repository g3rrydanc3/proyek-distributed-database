<div class="account-container" style="margin: 0 auto;">
	
	<div class="content clearfix">
		
		<form action="/room/add" method="post">
		
			<h1>Add Rooms</h1>		
<? //if(isset($error)) {?>
	<!--		<div class="alert alert-danger">
              <button type="button" class="close" data-dismiss="alert">×</button>
              <strong>Error!</strong> <?//=$error?>
            </div>-->
<? //} ?>

			<div class="add-fields">
				<div class="field">
					<label for="room_range">Room No:</label>
					<input type="text" id="room_no" name="room_no" />
				</div> <!-- /field -->
				<div class="field">
					<label for="room_range">Room Type:</label>
					<select id="room_type" name="room_type">
						<option value="tes">tes</option>
					</select>
				</div> <!-- /field -->
			</div> <!-- /login-fields -->
			
			<div class="login-actions">
				
				<button class="button btn btn-success btn-large">Add</button>
				
			</div> <!-- .actions -->
			
		</form>
		
	</div> <!-- /content -->
	
</div> <!-- /account-container -->
<br>