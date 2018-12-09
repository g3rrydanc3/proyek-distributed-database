<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="span4">
        <a href="<?= site_url(); ?>/frontoffice/customer/add/reservation" class="btn btn-success btn-large">Add Customer</a>

        <div class="account-container">
          
          <div class="content">
            
            <form action="/reservation/check" method="post">
            
              <h1>Search for Rooms</h1>    
      <? //if(isset($error)) {?>
           <!-- <div class="alert alert-danger">
              <button type="button" class="close" data-dismiss="alert">×</button>
              <strong>Error!</strong> <?//=$error?>
            </div>-->
      <? //} ?>
      <? //if(isset($success)) {?>
            <!--<div class="alert alert-success">
              <button type="button" class="close" data-dismiss="alert">×</button>
              <strong>Success!</strong> <?//=$success?>
            </div>-->
      <? //} ?>
      <div class="add-fields">

        <div class="field">
          <label for="customer_Name">Customer Name:</label>
          <input type="text" id="customer_Name" name="customer_Name" required value="" placeholder="Customer Name"/>
        </div> <!-- /field -->

        <div class="field">
          <label for="room_type">Room Type:</label>
          <select id="room_type" name="room_type">
            <option value="a">a</option>
          </select>
        </div> <!-- /field -->
        
        <div class="field">
          <label for="checkin_date">Check-in Date:</label>
          <input type="date" id="checkin_date" name="checkin_date" required value=""/>
        </div> <!-- /field -->

        <div class="field">
          <label for="checkout_date">Check-out Date:</label>
          <input type="date" id="checkout_date" name="checkout_date" required value=""/>
        </div> <!-- /field -->

        <!--div class="field">
          <label for="room_quantity">Quantity:</label>
          <input type="number" min="1" id="quantity" name="quantity" value="" placeholder="Quantity"/>
        </div--> <!-- /field -->

      </div> <!-- /login-fields -->
      
      <div class="login-actions">
        
        <button class="button btn btn-success btn-large">List Available</button>
        
      </div> <!-- .actions -->
      
    </form>
    
  </div> <!-- /content -->
</div> <!-- /account-container -->
</div>
<div class="span7">
			<a href="<?php  echo site_url() ?>/frontoffice/room/add" class="btn btn-small btn-primary"><i class="btn-icon-only icon-plus"></i>Add Rooms</a>
			<br><br>
			<table class="table table-striped table-bordered">
				<thead>
				  <tr>
				    <th> Room No </th>
				    <th> Customer </th>
            <th> CheckIn </th>
            <th> CheckOut </th>
				    <th> Status </th>
				  </tr>
				</thead>
				<tbody>
				  <!--<tr>
				    <td> <?//=$rm->room_type ?> </td>
				    <td> <?//=$rm->min_id ?> </td>
				    <td> <?//=$rm->max_id?> </td>
				    <td> <?//=($rm->max_id-$rm->min_id+1) ?> </td>
				    <td class="td-actions">
				    	<a href="/room/edit/<?//=$rm->room_type?>/<?//=$rm->min_id?>/<?//=$rm->max_id?>" class="btn btn-small btn-primary"><i class="btn-icon-only icon-edit"> </i></a>
				    	<a href="/room/delete/<?//=$rm->min_id?>/<?//=$rm->max_id?>" onclick="return confirm('Are you sure ?')" class="btn btn-danger btn-small"><i class="btn-icon-only icon-remove"> </i></a>
				    </td>
				  </tr>-->
				</tbody>
			</table>
		</div>
  <style type="text/css">.account-container{margin-top: 10px;padding-bottom: 15px;}</style>
 
    </div>
  </div>
</div>
