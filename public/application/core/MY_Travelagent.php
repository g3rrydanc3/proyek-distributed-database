<?php
defined('BASEPATH') OR exit('No direct script access allowed');

abstract class MY_Travelagent extends MY_Controller {
    function __construct() {
        parent::__construct();
        
        $this->load->database('travelagent');
        $this->dataView['title'] = $this->dataView['hotel_name'];
    }
}