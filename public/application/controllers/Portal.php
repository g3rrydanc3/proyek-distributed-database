<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Portal extends MY_Controller {
	public function index()
	{
		$this->load->view('portal', $this->dataView);
	}
}