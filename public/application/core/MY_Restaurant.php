<?php
defined('BASEPATH') OR exit('No direct script access allowed');

abstract class MY_Restaurant extends MY_Controller {
    function __construct() {
        parent::__construct();
        
        $this->load->database('restaurant');
        $this->dataView['title'] = $this->dataView['hotel_name'];
    }
}