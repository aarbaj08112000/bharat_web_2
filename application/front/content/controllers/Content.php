<?php
defined('BASEPATH') || exit('No direct script access allowed');

/**
 * Description of Content Controller
 *
 * @category front
 *            
 * @package content
 * 
 * @subpackage controllers
 * 
 * @module Content
 * 
 * @class Content.php
 * 
 * @path application\front\content\controllers\Content.php
 *
 * @version 4.0
 * 
 * @author CIT Dev Team
 *
 * @since 01.08.2016
 */

 use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

class Content extends MX_Controller
{

    /**
     * __construct method is used to set controller preferences while controller object initialization.
     */
    public function __construct()
    {
        parent::__construct();
        
        $routes = $this->router->routes;
        $current_route = $this->uri->segment(1);
        $controller_route = $this->uri->rsegments[1];
        $route_string = explode ('/',$routes[$current_route]);
        $current_folder = $route_string[0];
        $this->current_folder = $current_folder;
        $this->smarty->setTemplateDir(APPPATH.'front/'.$current_folder.'/views/');
        $this->load->model('Content_model');
        $products = $this->Content_model->get_products();
        $this->config->set_item("products", $products);
        $banner = $this->Content_model->get_banner();
        $this->config->set_item("banner", $banner);
        $categories = $this->Content_model->get_categories();
        $this->config->set_item("categories", $categories);
        
    }

    /**
     * index method is used to initialize index function.
     */
   

    public function about()
    {
        $data = [];
        $this->smarty->loadFrontView('pages/about.tpl',$data,'Yes','Yes');
    }

    public function index()
    {
        $data = [];
        $data['rating_review'] = $this->Content_model->get_rating_review();
        $this->smarty->loadFrontView('pages/index.tpl',$data,'Yes','Yes');
    }

    public function blogDetails()
    {
        $data = [];
        $this->smarty->loadFrontView('pages/blog-details.tpl',$data,'Yes','Yes');
    }
    public function blog()
    {
        $data = [];
        $this->smarty->loadFrontView('pages/blog.tpl',$data,'Yes','Yes');
    }
    public function contact()
    {
        $data = [];
        $this->smarty->loadFrontView('pages/contact.tpl',$data,'Yes','Yes');
    }
    public function gallery()
    {
        $data = [];
        $data['image'] = $this->Content_model->get_image_data();
        $data['video'] = $this->Content_model->get_vedio_data();
        $this->smarty->loadFrontView('pages/gallery.tpl',$data,'Yes','Yes');
    }
    public function product()
    {
        $data = [];
        $category = $_GET['c']; 
        $category = ucwords(str_replace('_', ' ', $category));
        $data['products'] = $this->Content_model->get_category_products($category);
        $this->smarty->loadFrontView('pages/product.tpl',$data,'Yes','Yes');
    }
    public function service()
    {
        $data = [];
        $this->smarty->loadFrontView('pages/service.tpl',$data,'Yes','Yes');
    }
    public function termscondition()
    {
        $data = [];
        $this->smarty->loadFrontView('pages/termscondition.tpl',$data,'Yes','Yes');
    }
    public function save_visitor_data()
    {
        $ret_arr = [];
        $msg = '';
        $success = 1;

    $data = [
        'name' => $this->input->post("name"),
        'city' => $this->input->post("city"),
        'phone_number' => $this->input->post("phone"),
        'product' => $this->input->post("product"),
        'quantity' => $this->input->post("quantity"),
        'email' => $this->input->post("email"),
        'device_id' => "",
        'added_date' => date("Y-m-d H:i:s"),
    ];

    $insert_query = $this->Content_model->save_visitor_data($data);

    if ($insert_query) {
        $msg = 'Thank you. Your details have been submitted successfully.';
    } else {
        $msg = 'Error occurred while adding the data. Please try again.';
        $success = 0;
    }

    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;
    echo json_encode($ret_arr);

    }
    public function save_contact_data()
{
    $ret_arr = [];
    $msg = '';
    $success = 1;

    // Collect form data
    $data = [
        'first_name'  => $this->input->post("first_name"),
        'last_name'   => $this->input->post("last_name"),
        'email'       => $this->input->post("email"),
        'subject'     => $this->input->post("subject"),
        'message'     => $this->input->post("message"),
        'added_date'  => date("Y-m-d H:i:s"),
    ];

    // Save data into DB
    $insert_query = $this->Content_model->save_contact_data($data);

    if ($insert_query) {
        $email = $data['email'];
        $user_name = $data['first_name'];
        $subject = $data['subject'];
        $message = $data['message'];

        // HTML email body
        $email_data['msg'] = '
        <html>
        <head>
            <title>Contact Form Submission</title>
            <style>
                body { font-family: Arial, sans-serif; color: #333; }
                .container { padding: 20px; border: 1px solid #ddd; border-radius: 8px; }
                .header { font-size: 18px; font-weight: bold; color: #444; }
                .content { margin-top: 10px; }
                p { margin: 5px 0; }
                strong { color: #000; }
            </style>
        </head>
        <body>
            <div class="container">
                <p class="header">New Contact Form Submission</p>
                <div class="content">
                    <p><strong>Name:</strong> ' . htmlspecialchars($user_name) . '</p>
                    <p><strong>Email:</strong> ' . htmlspecialchars($email) . '</p>
                    <p><strong>Subject:</strong> ' . htmlspecialchars($subject) . '</p>
                    <p><strong>Message:</strong><br>' . nl2br(htmlspecialchars($message)) . '</p>
                </div>
            </div>
        </body>
        </html>';

        // Send email
        $admin_email = $this->sent_email($email_data, $email);

        if ($admin_email) {
            $msg = 'Thank you. Your details have been submitted successfully.';
        } else {
            $msg = 'Failed to send email.';
            $success = 0;
        }
    } else {
        $msg = 'Error occurred while adding the data. Please try again.';
        $success = 0;
    }

    // Return JSON response
    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;

    echo json_encode($ret_arr);
}




function sent_email($data = array(), $email = "")
{
    
    require_once(APPPATH . 'third_party/PHPMailer/Exception.php');
    require_once(APPPATH . 'third_party/PHPMailer/PHPMailer.php');
    require_once(APPPATH . 'third_party/PHPMailer/SMTP.php');

    $mail = new PHPMailer(true);

    try {
        // SMTP configuration
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com';
        $mail->SMTPAuth   = true;
        $mail->SMTPDebug  = 0;
        $mail->Username   = "mullaaarbaj10@gmail.com";
        $mail->Password   = "qnow eyjy mbrr yykp"; // Use App Password
        $mail->SMTPSecure = 'tls';
        $mail->Port       = 587;

        // Sender
        $mail->setFrom($email, 'Bharat ID Card Solution Contact Info');

        // Recipient
        $mail->addAddress('work.gayatrihedau@gmail.com');

        // Email content
        $mail->isHTML(true);
        $mail->Subject = "Contact Form Submission";
        $mail->Body    = $data['msg'];
        $mail->AltBody = strip_tags($data['msg']);

        return $mail->send();
    } catch (Exception $e) {
        log_message('error', 'Email sending failed: ' . $mail->ErrorInfo);
        return false;
    }
}




public function download_product_catalog() {
    require_once(APPPATH . 'libraries/tcpdf/tcpdf.php');

    $this->load->library('smarty'); // or parser depending on your syntax
    $products = $this->Content_model->get_products();

    $pdf = new TCPDF();
    $pdf->SetTitle('Product Catalog');
    $pdf->SetMargins(15, 5, 15);
    $pdf->setPrintHeader(false);
    $pdf->setPrintFooter(false);
    $pdf->SetFont('helvetica', '', 11);

    foreach ($products as $product) {
        $this->smarty->assign('u', $product);

        // Render only one product's HTML block
        $htmlContent = $this->smarty->fetch('pages/product_catalog.tpl');  // 🧩 Create a separate template for single product

        $pdf->AddPage(); // ⬅️ Each product on a new page
        $pdf->writeHTML($htmlContent, true, false, true, false, '');
    }

    $pdf->Output('product_catalog.pdf', 'D');
}

public function save_review_data(){
    // pr($_POST,1);
    $ret_arr = [];
    $msg = '';
    $success = 1;

    $data = [
        'name'  => $this->input->post("name"),
        'review'   => $this->input->post("review"),
        'rating'       => $this->input->post("rating"),
        'added_date'  => date("Y-m-d H:i:s"),
    ];

    $insert_query = $this->Content_model->save_review_data($data);
    if ($insert_query) {
        $msg = 'Thank you. Your details have been submitted successfully.';
   
    } else {
        $msg = 'Error occurred while adding the data. Please try again.';
        $success = 0;
    }

    $ret_arr['msg'] = $msg;
    $ret_arr['success'] = $success;

    echo json_encode($ret_arr);
}

public function product_details()
	{
		$data['base_url'] = base_url();
        // $product_id = $this->uri->segment(2); 
        $product_id = $_GET['p']; 
		$data['products'] = $this->Content_model->get_products_details($product_id);
		$data['products_image'] = $this->Content_model->get_products_image($product_id);
        // pr($data);
		// $this->smarty->loadView('product_details.tpl', $data, 'Yes', 'Yes');
        $this->smarty->loadFrontView('pages/product_details.tpl',$data,'Yes','Yes');

	}

}