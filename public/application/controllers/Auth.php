<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends MY_Controller {

	private $all_module = array(
		'frontoffice' => 'Front Office', 
		'laundry' => 'Laundry', 
		'restaurant' => 'Restaurant', 
		'travelagent' => 'Travel Agent'
	);

	public function login($module = null){
		if($module !== null){
			if($this->input->post('username') !== null && 
			$this->input->post('password') !== null){
				//PROCESS LOGIN
				switch ($module) {
					case 'frontoffice':
						
						break;
					case 'laundry':

						break;
					case 'restaurant':

						break;
					case 'travelagent':

						break;
				}
			}
			else{
				//SHOW LOGIN VIEW
				if(array_key_exists($module, $this->all_module)){
					$this->dataView['title'] = "Login " . $this->all_module[$module];
					$this->dataView['module'] = $module;
					$this->dataView['all_module'] = $this->all_module;
					$this->load->view('auth/login', $this->dataView);
				}
				else{
					show_404();
				}
			}
		}
		else{
			show_404();
		}
	}

	public function logout(){

	}
}
