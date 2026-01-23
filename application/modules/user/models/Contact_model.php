<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Contact_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

   
	public function get_contact(){
        $this->db->select('c.*');
        $this->db->from('contact_us_info as c');
        $this->db->order_by('c.added_date', 'DESC'); 
        $result_obj = $this->db->get();
        $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
        return $ret_data;
    }
    
    
}
