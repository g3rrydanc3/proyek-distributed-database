<?php
defined('BASEPATH') OR exit('No direct script access allowed');

abstract class MY_Controller extends CI_Controller {
    public $dataView;

    function __construct() {
        parent::__construct();
        $this->dataView['title'] = "Title";
    }
}
