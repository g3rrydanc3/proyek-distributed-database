<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {
	function __construct() {
        parent::__construct();
        $this->dataView['title'] .= " - Laundry";
	}
	
	public function index()
	{
		$this->load->view('laundry/home', $this->dataView);
	}
}
