<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Customer extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */

	public function check_login()
	{
		if(!UID)
			redirect("login");
	} 

	public function add($ref="")
	{
		// 	customer_id	customer_firstname	customer_lastname	customer_TCno	customer_city	customer_country	customer_telephone	customer_email
		$data = $this->input->post();
		/*if($data["customer_TCno"])
		{
			$this->customer_m->add_customer($data);
			redirect("/$ref");
		}*/

		$viewdata = array('reference' => 'reservation');
		$data = array('title' => 'Add Customer - DB Hotel Management System', 'page' => 'reservation');
		$this->load->view('frontoffice/header', $data);
		$this->load->view('frontoffice/customer/add',$viewdata);
		$this->load->view('frontoffice/footer');
	}
	
	public function index()
	{
		//$rooms = $this->room_m->get_rooms();
		//$viewdata = array('rooms' => $rooms);
		$viewdata = "";
		$data = array('title' => 'Customer - Vixion', 'page' => 'customer');
		$this->load->view('frontoffice/header', $data);
		$this->load->view('frontoffice/customer/list',$viewdata);
		$this->load->view('frontoffice/footer');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */