<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Gallary extends MY_Controller {
	public function __construct() {
        parent::__construct();
        $this->load->model('Gallary_model');
    }
	public function index() {
		$data['base_url'] = base_url();
		$this->smarty->loadView('login.tpl',$data,'No','No');
	}
	
	
	public function gallary()
	{
		$data['gallery'] = $this->Gallary_model->get_gallery();
		$this->smarty->loadView('gallary.tpl', $data,'Yes','Yes');
	}

	public function add_gallary()
{
    $ret_arr = [];
    $msg = '';
    $success = 1;

    $config['upload_path'] = './public/uploads/gallary/'; 
    $config['allowed_types'] = 'jpg|jpeg|png|gif|mp4|webm';
    $config['max_size'] = 5242880;
    $config['encrypt_name'] = TRUE;

    $this->load->library('upload', $config);

    if (!$this->upload->do_upload('image_Video')) {
        $ret_arr['msg'] = $this->upload->display_errors();
        $ret_arr['success'] = 0;
        echo json_encode($ret_arr);
        return; 
    }

    $upload_data = $this->upload->data();
    $image_path = $upload_data['file_name'];

    $data = [
        'type' => $this->input->post("type"),
        'image_Video' => $image_path,
        'added_date' => date("Y-m-d H:i:s"),
        'added_by' => $this->session->userdata('user_id'),
    ];

    $insert_query = $this->Gallary_model->add_gallery($data);

    if ($insert_query) {
        $msg = 'Image/Video added successfully.';
    } else {
        $msg = 'Error occurred while adding the brand. Please try again.';
        $success = 0;
    }

    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;
    echo json_encode($ret_arr);
}

public function update_gallery()
{
    $ret_arr = [];
    $msg = '';
    $success = 1;
    
    $gallery_id = $this->input->post("gallery_id");
    $hidden_image_Video = $this->input->post("hidden_image_Video"); 
    
    $image_path = $hidden_image_Video; 

    if (!empty($_FILES['image_Video']['name'])) {
       
        $config['upload_path'] = './public/uploads/gallary/';
        $config['allowed_types'] = 'jpg|jpeg|png|gif|mp4|webm';
        $config['max_size'] = 5242880;
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('image_Video')) {
          
            $upload_data = $this->upload->data();
            $image_path = $upload_data['file_name'];

            if (!empty($hidden_image_Video) && file_exists($hidden_image_Video)) {
                unlink($hidden_image_Video);
            }
        } 
    }

    $data = [
        'type' => $this->input->post("type"),
        'image_Video' => $image_path,
        'update_date' => date("Y-m-d H:i:s"),
        'update_by' => $this->session->userdata('user_id'),
        'status' => $this->input->post("status"),
    ];

    $update_query = $this->Gallary_model->update_gallery($data, $gallery_id);

    if ($update_query) {
        $msg = 'Image/Video updated successfully.';
    } else {
        $msg = 'Error occurred while updating the brand. Please try again.';
        $success = 0;
    }

    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;
    echo json_encode($ret_arr);
}

	
public function delete_gallery_image_vedio()
{
    // pr($_POST);
    $ret_arr = [];
    $msg = '';
    $success = 1;
    $gallery_id = $this->input->post("gallery_id");
    $data = array(
        'is_delete'  => "1",
        'update_date'=> date("Y-m-d H:i:s"),
        'update_by'=> $this->session->userdata('user_id'),
        
    );
    $update_query = $this->Gallary_model->update_gallery($data,$gallery_id);
    // pr($this->db->last_query());
    if ($update_query) {
        $msg = 'Gallery -Image/Video  delete successfully.';
    } else {
        $msg = 'Error occurred while delete the Gallery -Image/Video. Please try again.';
        $success = 0;
    }
    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;
    echo json_encode($ret_arr);
}
	
	
}

