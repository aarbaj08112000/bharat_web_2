<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Review extends MY_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->model('Review_model');
    }
	public function index() {
		$data['base_url'] = base_url();
		$this->smarty->loadView('login.tpl',$data,'No','No');
	}
	
	
	public function review()
	{
		$data['review'] = $this->Review_model->get_rating_review();
		$this->smarty->loadView('review.tpl', $data,'Yes','Yes');
	}


	
	
}

