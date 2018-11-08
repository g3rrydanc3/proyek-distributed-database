<?php
defined('BASEPATH') OR exit('No direct script access allowed');

abstract class MY_Controller extends CI_Controller {
  public $dataView;

  function __construct() {
    parent::__construct();
    $this->dataView['hotel_name'] = "Hotel Vixion";
    $this->dataView['title'] = $this->dataView['hotel_name'];
  }

  protected $all_module = array(
    'frontoffice' => 'Front Office', 
    'laundry' => 'Laundry', 
    'restaurant' => 'Restaurant', 
    'travelagent' => 'Travel Agent'
  );
    
  protected function check_logged_in($module){
		if($this->session->userdata("id" . $module) !== null){
			return true;
		}

		return false;
	}
}
