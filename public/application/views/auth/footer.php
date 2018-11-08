<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  </body>
  <?php $this->load->view('_load_global_js')?>
  <script>
    function goBack() {
      if (document.referrer == "") {
        window.location.href = "<?= site_url()?>";
      } else {
        window.history.back();
      }
        
    }
  </script>
</html>