<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Product extends MY_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->model('Product_model');
    }
	public function index() {
		$data['base_url'] = base_url();
		$this->smarty->loadView('login.tpl',$data,'No','No');
	}
	/* add update user module */
	
	public function product()
	{
		$data['products'] = $this->Product_model->get_products();
		$this->smarty->loadView('product_list.tpl', $data,'Yes','Yes');
	}

	public function add_product()
	{
		$data['base_url'] = base_url();
		$product_id = $this->uri->segment(2); 
        $categories = $this->Product_model->get_categories();
        $data['categories'] = $categories;
		if($product_id != ""){
			$data['products'] = $this->Product_model->get_products_details($product_id);
            $data['products_image'] = $this->Product_model->get_products_image($product_id);
		}
		// pr($data);
		$this->smarty->loadView('add_product.tpl', $data,'Yes','Yes');
	}
	

	public function product_details()
	{
		$data['base_url'] = base_url();
        $product_id = $this->uri->segment(2); 
		$data['products'] = $this->Product_model->get_products_details($product_id);
		$data['products_image'] = $this->Product_model->get_products_image($product_id);
        // pr($data);
		$this->smarty->loadView('product_details.tpl', $data, 'Yes', 'Yes');
	}
	

	public function save_product_data()
	{
		// pr($_POST,1);
		

		$ret_arr = [];
		$msg = '';
		$success = 1;

    $config['upload_path'] = './public/uploads/product/'; 
    $config['allowed_types'] = 'jpg|jpeg|png';
    $config['max_size'] = 5242880;
    $config['encrypt_name'] = TRUE;

    $this->load->library('upload', $config);

    if (!$this->upload->do_upload('image')) {
        $ret_arr['msg'] = $this->upload->display_errors();
        $ret_arr['success'] = 0;
        echo json_encode($ret_arr);
        return; 
    }

    $upload_data = $this->upload->data();
    $image_path = $upload_data['file_name'];

    $data = [
        'product_name' => $this->input->post("product_name"),
        'category_name' => $this->input->post("category"),
        'description' => $this->input->post("content"),
        'image' => $image_path,
        'status' => "Active",
        'added_date' => date("Y-m-d H:i:s"),
        'added_by' => $this->session->userdata('user_id'),
    ];

    $insert_query = $this->Product_model->add_product($data);
   

    if ($insert_query) {
        $product_id = $insert_query;

    // Create a folder for the product images
    $product_image_path = './public/uploads/product/' . $product_id . '/';
    if (!file_exists($product_image_path)) {
        mkdir($product_image_path, 0777, true);
    }

    // Loop through multiple uploaded files
    $files = $_FILES['product_images'];
    $count = count($files['name']);
    for ($i = 0; $i < $count; $i++) {
        $_FILES['single_image']['name']     = $files['name'][$i];
        $_FILES['single_image']['type']     = $files['type'][$i];
        $_FILES['single_image']['tmp_name'] = $files['tmp_name'][$i];
        $_FILES['single_image']['error']    = $files['error'][$i];
        $_FILES['single_image']['size']     = $files['size'][$i];

        $config['upload_path']   = $product_image_path;
        $config['allowed_types'] = 'jpg|jpeg|png';
        $config['max_size']      = 5242880;
        $config['encrypt_name']  = TRUE;

        $this->upload->initialize($config);
        if ($this->upload->do_upload('single_image')) {
            $uploadData = $this->upload->data();
            $imgData = [
                'product_id' => $product_id,
                'image'      => $uploadData['file_name']
            ];
            $this->db->insert('product_image', $imgData);
        }
    }


        $msg = 'Product added successfully.';
    } else {
        $msg = 'Error occurred while adding the Product. Please try again.';
        $success = 0;
    }

    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;
    echo json_encode($ret_arr);

	}
    public function update_product_data()
    {
        // pr($_POST,1);
        $ret_arr = [];
    $msg = '';
    $success = 1;
    
    $product_id = $this->input->post("product_id");
    $hidden_product_image = $this->input->post("product_image"); 
    
    $image_path = $hidden_product_image; 

    if (!empty($_FILES['image']['name'])) {
       
        $config['upload_path'] = './public/uploads/product/';
        $config['allowed_types'] = 'jpg|jpeg|png';
        $config['max_size'] = 5242880;
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('image')) {
          
            $upload_data = $this->upload->data();
            $image_path = $upload_data['file_name'];

            if (!empty($hidden_product_image) && file_exists($hidden_product_image)) {
                unlink($hidden_product_image);
            }
        } 
    }

    $data = [
        'product_name' => $this->input->post("product_name"),
        'category_name' => $this->input->post("category"),
        'description' => $this->input->post("content"),
        'image' => $image_path,
        'updated_date' => date("Y-m-d H:i:s"),
        'updated_by' => $this->session->userdata('user_id'),
        'status' => "Active",
    ];

    $update_query = $this->Product_model->update_product($data,$product_id);;
    // pr($this->db->last_query());
    if ($update_query) {
        $product_image_path = './public/uploads/product/' . $product_id . '/';
        if (!file_exists($product_image_path)) {
            mkdir($product_image_path, 0777, true);
        }
        $this->load->library('upload');

        // Process multiple image uploads
        if (!empty($_FILES['product_images']['name'][0])) {
            $files = $_FILES['product_images'];
            $count = count($files['name']);
            for ($i = 0; $i < $count; $i++) {
                $_FILES['single_image']['name']     = $files['name'][$i];
                $_FILES['single_image']['type']     = $files['type'][$i];
                $_FILES['single_image']['tmp_name'] = $files['tmp_name'][$i];
                $_FILES['single_image']['error']    = $files['error'][$i];
                $_FILES['single_image']['size']     = $files['size'][$i];

                $config['upload_path']   = $product_image_path;
                $config['allowed_types'] = 'jpg|jpeg|png';
                $config['max_size']      = 5242880;
                $config['encrypt_name']  = TRUE;

                // Reinitialize config for each file
                $this->upload->initialize($config);

                if ($this->upload->do_upload('single_image')) {
                    $uploadData = $this->upload->data();
                    $imgData = [
                        'product_id' => $product_id,
                        'image'      => $uploadData['file_name']
                    ];
                    $this->db->insert('product_image', $imgData);
                }
            }
        }

        
        $msg = 'Product updated successfully.';
    } else {
        $msg = 'Error occurred while updating the Product. Please try again.';
        $success = 0;
    }

    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;
    echo json_encode($ret_arr);


    }
    
	
	public function delete_product_data()
{
    $ret_arr = [];
    $msg = '';
    $success = 1;
    $product_id = $this->input->post("product_id");
    $data = array(
        'is_delete'  => "1",
        'updated_date'=> date("Y-m-d H:i:s"),
        'updated_by'=> $this->session->userdata('user_id'),
        
    );
    $update_query = $this->Product_model->update_product($data,$product_id);
    if ($update_query) {
        $msg = 'Product delete successfully.';
    } else {
        $msg = 'Error occurred while delete the Product. Please try again.';
        $success = 0;
    }
    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;
    echo json_encode($ret_arr);
}
	

public function delete_product_image()
{
    $ret_arr = ['success' => 0, 'msg' => ''];

    $product_image_id = $this->input->post('product_image_id');
    $filename = $this->input->post('filename');
    $product_id = $this->input->post('product_id');

    if ($product_image_id && $filename && $product_id) {

        // File path
        $filepath = FCPATH . "public/uploads/product/" . $product_id . "/" . $filename;

        // Delete file from server
        if (file_exists($filepath)) {
            unlink($filepath);
        }

        // Delete from database
        $this->db->where('product_image_id', $product_image_id);
        $this->db->delete('product_image');

        if ($this->db->affected_rows() > 0) {
            $ret_arr['success'] = 1;
            $ret_arr['msg'] = 'Image deleted successfully.';
        } else {
            $ret_arr['msg'] = 'Image record not found in database.';
        }
    } else {
        $ret_arr['msg'] = 'Invalid input parameters.';
    }

    echo json_encode($ret_arr);
}




}

