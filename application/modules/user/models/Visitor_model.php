<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Visitor_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

   
	public function get_visitor(){
        $this->db->select('v.*');
        $this->db->from('visitor as v');
        $this->db->order_by('v.added_date', 'DESC'); 
        $result_obj = $this->db->get();
        $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
        return $ret_data;
    }
    
}
