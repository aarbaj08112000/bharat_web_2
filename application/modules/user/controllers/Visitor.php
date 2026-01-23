<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Visitor extends MY_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->model('Visitor_model');
    }
	public function index() {
		$data['base_url'] = base_url();
		$this->smarty->loadView('login.tpl',$data,'No','No');
	}
	
	
	public function visitor()
	{
		$data['visitor'] = $this->Visitor_model->get_visitor();
		$this->smarty->loadView('visitor.tpl', $data,'Yes','Yes');
	}


	
	
}

