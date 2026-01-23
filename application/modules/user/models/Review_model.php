<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Review_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

   
    public function get_rating_review(){
        $this->db->select('r.*');
        $this->db->from('review_rating as r');
        $this->db->where("r.is_delete",'0');
        $this->db->order_by("r.added_date", "DESC");
        $result_obj = $this->db->get();
        $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
        return $ret_data;
    }
    
}
