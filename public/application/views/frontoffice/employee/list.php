<div class="main">
  <div class="main-inner">
    <div class="container">
      <div class="row">
        <div class="span12">
			<a href="<?= site_url(); ?>/frontoffice/customer/add/reservation" class="btn btn-small btn-primary"><i class="btn-icon-only icon-plus"></i>Add Employee</a>
			<br><br>
			<table class="table table-striped table-bordered">
				<thead>
				  <tr>
				    <th> Employee ID </th>
				    <th> First Name </th>
				    <th> Last Name </th>
						<th> Username </th>
						<th> Password </th>
				    <th class="td-actions"> Actions </th>
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
	  </div>
	</div>
  </div>
</div>