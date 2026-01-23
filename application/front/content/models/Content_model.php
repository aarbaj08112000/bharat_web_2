<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Content_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

	public function save_visitor_data($insert_data = array()){
        $this->db->insert("visitor", $insert_data);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }

    public function save_contact_data($insert_data = array()){
        $this->db->insert("contact_us_info", $insert_data);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }

    public function get_image_data(){
        $this->db->select('g.*');
        $this->db->from('gallery as g');
        $this->db->where('g.type','image');
        $this->db->where('g.status','Active'); 
        $result_obj = $this->db->get();
        $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
        return $ret_data;
    }
    public function get_vedio_data(){
        $this->db->select('g.*');
        $this->db->from('gallery as g');
        $this->db->where('g.type','video'); 
        $this->db->where('g.status','Active'); 
        $result_obj = $this->db->get();
        $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
        return $ret_data;
    }
       
    public function get_products(){
    $this->db->select('p.*');
    $this->db->from('product as p');
    $this->db->where('p.is_delete', "0");
    $this->db->where('p.status', 'Active');
    $this->db->order_by('p.product_name', 'ASC'); 
    $result_obj = $this->db->get();
    $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
    return $ret_data;
}

    
     public function get_category_products($category=""){
        $this->db->select('p.*');
        $this->db->from('product as p');
        $this->db->where('p.is_delete', "0");
        if($category !=""){
            $this->db->where('p.category_name', $category);
        }
         $this->db->order_by('p.product_name', 'ASC'); 
        $result_obj = $this->db->get();
        $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
        return $ret_data;
    }

    public function get_banner(){
        $this->db->select('b.*');
        $this->db->from('banners as b');
        $this->db->where("b.is_delete",'0');
        $this->db->where('b.status','Active'); 
        $result_obj = $this->db->get();
        $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
        return $ret_data;
    }
    public function get_categories(){
            $this->db->select('c.*');
            $this->db->from('categories as c');
            $this->db->where("c.is_delete",'0');
            $this->db->where("c.status",'Active');
            $result_obj = $this->db->get();
            $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
            return $ret_data;
        }
        public function save_review_data($insert_data = array()){
            $this->db->insert("review_rating", $insert_data);
            $insert_id = $this->db->insert_id();
            return  $insert_id;
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
        public function get_products_image($product_id = 0){
            $this->db->select('*');
            $this->db->from('product_image');
            $this->db->where('product_id', $product_id);
            $result_obj = $this->db->get();
            $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
            return $ret_data;
        }
        public function get_products_details($product_id = 0){
            $this->db->select('p.*');
            $this->db->from('product as p');
            $this->db->where('p.product_id', $product_id);
            $result_obj = $this->db->get();
            $ret_data = is_object($result_obj) ? $result_obj->result_array() : [];
            return $ret_data;
        }
        
}
