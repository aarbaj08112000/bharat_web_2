<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Contact extends MY_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->model('Contact_model');
    }
	public function index() {
		$data['base_url'] = base_url();
		$this->smarty->loadView('login.tpl',$data,'No','No');
	}
	
	
	public function contact()
	{
		$data['contact'] = $this->Contact_model->get_contact();
		$this->smarty->loadView('contact.tpl', $data,'Yes','Yes');
	}


	
	
}

