<?php
defined('BASEPATH') or exit('No direct script access allowed');

abstract class MY_Controller extends CI_Controller
{
    public $dataView;

    public function __construct(){
        parent::__construct();
        $this->dataView['hotel_name'] = "Hotel Vixion";
        $this->dataView['title'] = $this->dataView['hotel_name'];
    }

    protected $all_module = array(
        'frontoffice' => 'Front Office',
        'laundry' => 'Laundry',
        'restaurant' => 'Restaurant',
        'travelagent' => 'Travel Agent'
    );
    
    protected function check_logged_in($module){
        if ($this->session->userdata("id" . $module) !== null) {
            return true;
        }

        return false;
    }

    /**
    * @return string Data from api.
    */
    public function api_curl($apimodule, $method, $fields = null){
        $this->config->load('api');
        $url = $this->config->item('api_url') . "$apimodule/$method";

        $fields_string = "";

        //url-ify the data for the POST
        foreach ($fields as $key=>$value) {
            $fields_string .= $key.'='.$value.'&';
        }
        rtrim($fields_string, '&');

        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POST, count($fields));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $fields_string);

        $curl_result = curl_exec($ch);

        curl_close($ch);

        if ($curl_result === false) {
            show_error(curl_error($ch), 400, 'Unknown error');
        }

        $this->load->helper('is_json');
        if(!is_json($curl_result)){
            show_error($curl_result);
        }

        return $curl_result;
    }

    /**
    * @return object Data from api converted to JSON.
    */
    public function api_curl_object($apimodule, $method, $fields = null){
        $curl_result = $this->api_curl($apimodule, $method, $fields);
        $result = json_decode($curl_result);

        if ($result === null && json_last_error() !== JSON_ERROR_NONE) {
            switch (json_last_error()) {
                case JSON_ERROR_NONE:
                    show_error($curl_result, 400, 'Unknown error');
                break;
                case JSON_ERROR_DEPTH:
                    show_error($curl_result, 400, 'Maximum stack depth exceeded');
                break;
                case JSON_ERROR_STATE_MISMATCH:
                    show_error($curl_result, 400, 'Underflow or the modes mismatch');
                break;
                case JSON_ERROR_CTRL_CHAR:
                    show_error($curl_result, 400, 'Unexpected control character found');
                break;
                case JSON_ERROR_SYNTAX:
                    show_error($curl_result, 400, 'Syntax error, malformed JSON');
                break;
                case JSON_ERROR_UTF8:
                    show_error($curl_result, 400, 'Malformed UTF-8 characters, possibly incorrectly encoded');
                break;
                default:
                    show_error($curl_result, 400, 'Unknown error');
                break;
            }
        }

        return $result;
    }
}
