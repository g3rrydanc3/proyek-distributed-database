<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MY_Controller {

	//--------------------------
	//LOGIN 
	//--------------------------
	//MEMAKAI NAMA SESSION
	//"id"+<module>
	//CTH : idfrontoffice

	//--------------------------
	//CHECK LOGIN
	//--------------------------
	//$this->check_logged_in($module)
	//

	function __construct() {
		parent::__construct();
		$this->dataView['title'] = "Login " .$this->dataView["hotel_name"];
	}

	private function show_login($module){
		$this->dataView['title'] .= " - " . $this->all_module[$module];
		$this->dataView['module'] = $module;
		$this->dataView['all_module'] = $this->all_module;
		$this->load->view('auth/login', $this->dataView);
	}

	private function process_login($module){
		switch ($module) {
			case 'frontoffice':
				$this->session->set_userdata("id". $module, "1");
				$this->redirect($module);
				break;
			case 'laundry':
				$this->session->set_userdata("id". $module, "1");
				$this->redirect($module);
				break;
			case 'restaurant':
				$this->session->set_userdata("id". $module, "1");
				$this->redirect($module);
				break;
			case 'travelagent':
				$this->session->set_userdata("id". $module, "1");
				$this->redirect($module);
				break;
		}
	}

	private function redirect($module){
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
			else{
				$this->redirect($module);
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
