<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {
	public function index()
	{
		$this->dataView['title'] = "Hotel ABC";
		$this->load->view('travelagent/home', $this->dataView);
	}
}
