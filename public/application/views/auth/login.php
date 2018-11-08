<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<?php $this->load->view("auth/header") ?>
  <div class="auth-back">
    <button type="button" onclick="goBack()" class="btn btn-light btn-lg">
      <i class="fas fa-arrow-alt-circle-left"></i>
    </button>
  </div>

  <form class="form-signin" method="post" action="<?= site_url('auth/login/' . $module) ?>">
    
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

<?php $this->load->view("auth/footer") ?>