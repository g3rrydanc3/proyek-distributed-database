<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MY_Controller {
	public function index_old()
	{
		$this->dataView['title'] = "Hotel ABC";
		$this->load->view('restaurant/chintya/home', $this->dataView);
	}
	public function index()
	{
		$this->load->view('restaurant/header');
		$this->load->view('restaurant/home');
	}
}
