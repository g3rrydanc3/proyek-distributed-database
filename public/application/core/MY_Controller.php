<?php
defined('BASEPATH') OR exit('No direct script access allowed');

abstract class MY_Controller extends CI_Controller {
    public $dataView;

    protected $all_module = array(
		'frontoffice' => 'Front Office', 
		'laundry' => 'Laundry', 
		'restaurant' => 'Restaurant', 
		'travelagent' => 'Travel Agent'
	);

    function __construct() {
        parent::__construct();
        $this->dataView['title'] = "Title";
    }
}
