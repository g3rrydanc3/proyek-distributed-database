<?php defined('BASEPATH') OR exit('No direct script access allowed');

//https://avenir.ro/codeigniter-tutorials/no-more-my_controller-how-you-can-create-more-than-one-base-controller/
function load_core_controller()
{
  spl_autoload_register('my_own_controllers');
}
function my_own_controllers($class)
{
  if (strpos($class, 'CI_') !== 0)
  {
    if (is_readable(APPPATH . 'core/' . $class . '.php'))
    {
      require_once(APPPATH . 'core/' . $class . '.php');
    }
  }
}