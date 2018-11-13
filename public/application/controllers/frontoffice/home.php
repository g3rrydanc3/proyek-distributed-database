<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Frontoffice {

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

	public function index()
	{
		$query = $this->db->query("select table_name from user_tables");

		var_dump($query->result());

		//UNTUK QUERY BUILDER, TAMBAHKAN PARAM KE2 FALSE AGAR TIDAK DI TAMBAHI "", JIKA TIDAK BISA QUERY MANUAL
		$query = $this->db->select("table_name from user_tables", false);

		var_dump($query->get());

		

		$this->check_login();

		//$today_stats = $this->report_m->today_stats();
		//$customer_pay_list = $this->report_m->get_customer_freq_list();
		//$customer_most_paid = $this->report_m->get_customer_most_paid();
		//$next_week_freq = $this->report_m->get_next_week_freq();
		
		$data = array('title' => 'DB Hotel Management System', 'page' => 'dashboard');
		$this->load->view('frontoffice/header', $data);

		/*$viewdata = array(
			'today_stats' => $today_stats,
			'customer_pay_list' => $customer_pay_list,
			'customer_most_paid' => $customer_most_paid,
			'next_week_freq' => $next_week_freq
		);*/
		$viewdata = " ";
		$this->load->view('frontoffice/home', $viewdata);
		$this->load->view('frontoffice/footer');
		//$this->load->view('frontoffice/footer', array("next_week_freq"=>$next_week_freq));
		$this->session->set_userdata('show_guide',true);
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */