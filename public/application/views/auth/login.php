<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $this->load->view("auth/header") ?>

<div class="container">
<body class="text-center">
    <form class="form-signin" method="post" action="<?= site_url('auth/login/' . $module) ?>">

      <img class="mb-4" src="https://getbootstrap.com/docs/4.0/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
      <h1 class="h3 mb-3 font-weight-normal">Sign in <?= $all_module[$module] ?></h1>

      <label for="inputUsername" class="sr-only">Username</label>
      <input type="text" id="inputUsername" class="form-control" placeholder="Username" name="username" value=" " required autofocus>

      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" value=" " required>

      <!--<div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>-->

      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>

    </form>
</body>
<?php $this->load->view("auth/footer") ?>

<script>
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>