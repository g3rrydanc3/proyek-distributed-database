<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $this->load->view("frontoffice/header") ?>

<!-- Page Content -->
<div class="container">

<div class="row">
  <div class="col-sm-8">
    <h2 class="mt-4">What We Do <i class="fas fa-camera-retro"></i></h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. A deserunt neque tempore recusandae animi soluta quasi? Asperiores rem dolore eaque vel, porro, soluta unde debitis aliquam laboriosam. Repellat explicabo, maiores!</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis optio neque consectetur consequatur magni in nisi, natus beatae quidem quam odit commodi ducimus totam eum, alias, adipisci nesciunt voluptate. Voluptatum.</p>
    <p>
      <a class="btn btn-primary btn-lg" href="#">Call to Action &raquo;</a>
    </p>
  </div>
  <div class="col-sm-4">
    <h2 class="mt-4">Contact Us</h2>
    <address>
      <strong>Start Bootstrap</strong>
      <br>3481 Melrose Place
      <br>Beverly Hills, CA 90210
      <br>
    </address>
    <address>
      <abbr title="Phone">P:</abbr>
      (123) 456-7890
      <br>
      <abbr title="Email">E:</abbr>
      <a href="mailto:#">name@example.com</a>
    </address>
  </div>
</div>
<!-- /.row -->

<div class="row">
  <div class="col-sm-4 my-4">
    <div class="card">
      <img class="card-img-top" src="http://placehold.it/300x200" alt="">
      <div class="card-body">
        <h4 class="card-title">Card title</h4>
        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque sequi doloribus.</p>
      </div>
      <div class="card-footer">
        <a href="#" class="btn btn-primary">Find Out More!</a>
      </div>
    </div>
  </div>
  <div class="col-sm-4 my-4">
    <div class="card">
      <img class="card-img-top" src="http://placehold.it/300x200" alt="">
      <div class="card-body">
        <h4 class="card-title">Card title</h4>
        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque sequi doloribus totam ut praesentium aut.</p>
      </div>
      <div class="card-footer">
        <a href="#" class="btn btn-primary">Find Out More!</a>
      </div>
    </div>
  </div>
  <div class="col-sm-4 my-4">
    <div class="card">
      <img class="card-img-top" src="http://placehold.it/300x200" alt="">
      <div class="card-body">
        <h4 class="card-title">Card title</h4>
        <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
      </div>
      <div class="card-footer">
        <a href="#" class="btn btn-primary">Find Out More!</a>
      </div>
    </div>
  </div>

</div>
<!-- /.row -->

<p class="currency">10000</p>

<table id="example" class="table table-striped table-bordered" style="width:100%">
    <thead>
        <tr>
            <th>Name</th>
            <th>Position</th>
            <th>Office</th>
            <th>Age</th>
            <th>Start date</th>
            <th>Salary</th>
        </tr>
    </thead>
    <tbody>
        <?php for($i=0; $i<= 100; $i++):?>
        <tr>
            <td>Tiger Nixon</td>
            <td>System Architect</td>
            <td>Edinburgh</td>
            <td>61</td>
            <td>2011/04/25</td>
            <td class="currency"><?= random_int(100, 1000000)?></td>
        </tr>
        <?php endfor;?>
    </tbody>
    <tfoot>
        <tr>
            <th>Name</th>
            <th>Position</th>
            <th>Office</th>
            <th>Age</th>
            <th>Start date</th>
            <th>Salary</th>
        </tr>
    </tfoot>
</table>

</div>

<?php $this->load->view("frontoffice/footer") ?>

<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>