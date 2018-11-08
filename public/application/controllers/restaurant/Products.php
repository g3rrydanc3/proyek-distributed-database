<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends MY_Controller {
	public function list()
	{
        $this->dataView['title'] = "Hotel ABC";
        $this->load->view('restaurant/header');
        $this->load->view('restaurant/products/list', $this->dataView);
        $this->load->view('restaurant/footer');
    }
    public function add()
    {
        $this->dataView['title'] = "Hotel ABC";
        $this->load->view('restaurant/header');
        $this->load->view('restaurant/products/add', $this->dataView);
        $this->load->view('restaurant/footer');
    }
}
