<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MY_Controller {

	function __construct() {
		parent::__construct();
	}
	
	private function check_logged_in($module){
		$this->load->library('session');

		foreach ($this->all_module as $key => $value) {
			if($this->session->userdata("id" . $key) !== null){
				return true;
				break;
			}
		}
		
		return false;
	}

	private function show_login($module){
		$this->dataView['title'] = "Login " . $this->all_module[$module];
		$this->dataView['module'] = $module;
		$this->dataView['all_module'] = $this->all_module;
		$this->load->view('auth/login', $this->dataView);
	}

	private function process_login($module){
		switch ($module) {
			case 'frontoffice':
				redirect(site_url('frontoffice/home'));
				break;
			case 'laundry':
				redirect(site_url('laundry/home'));
				break;
			case 'restaurant':
				redirect(site_url('restaurant/home'));
				break;
			case 'travelagent':
				redirect(site_url('travelagent/home'));
				break;
		}
	}

	public function login($module = null){
		if($module !== null && array_key_exists($module, $this->all_module)){

			if(!$this->check_logged_in($module)){
				
				if($this->input->post('username') !== null && 
				$this->input->post('password') !== null){
					$this->process_login($module);
				}
				else{
					$this->show_login($module);
				}

			}

		}
		else{
			show_404();
		}
	}

	public function logout($module = null){
		if($module !== null && array_key_exists($module, $this->all_module)){
			$this->session->unset_userdata('id' . $module);
			redirect(site_url('portal'));
		}
		else{
			show_404();
		}
	}
}
