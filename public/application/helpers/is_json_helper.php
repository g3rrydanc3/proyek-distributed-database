<?php if (! defined('BASEPATH')) { exit('No direct script access allowed');}

if (! function_exists('is_json')) {
    /**
    * @return bool JSON is valid or not.
    */
    function is_json($string)
    {
        json_decode($string);
        return (json_last_error() == JSON_ERROR_NONE);
    }
}
