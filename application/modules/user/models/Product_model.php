<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_model extends CI_Model {

    public function __construct() {
        parent::__construct();
    }
     public function get_products(){
        $this->db->select('p.*');
        $this->db->from('product as p');
        $this->db->where('p.is_delete', "0");
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
    
    public function add_product($insert_data = array()){
        $this->db->insert("product", $insert_data);
        $insert_id = $this->db->insert_id();
        return  $insert_id;
    }

    public function update_product($update_data = array(),$product_id = 0){
       
        $this->db->where('product_id', $product_id);
        $this->db->update('product', $update_data);
        $affected_rows = $this->db->affected_rows() == 0 ? 1 : $this->db->affected_rows();
       
        return $affected_rows;
    }

    public function get_categories(){
        $this->db->select('c.*');
        $this->db->from('categories as c');
        $this->db->where("c.status",'Active');
        $this->db->where('c.is_delete', "0");
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
    
}
