<?php
defined('BASEPATH') or exit('No direct script access allowed');

#------------ Login -----------------------------
$route['default_controller'] = 'content/index';
// $route['login'] = 'LogonDashboard/login';
/* login & forgot password */
$route['login'] = 'user/login/index';
$route['forgot_password/(:any)/(:any)'] = 'user/login/forgot_password/$1/$2';
$route['logout'] = 'user/login/logout';

/* admin */
$route['sitemap'] = 'user/login/site_map';
$route['user_list'] = 'user/user/user_list';
$route['group_master'] = 'user/user/groupMaster';
$route['group_menu'] = 'user/user/groupMenu';
$route['contact'] = 'user/contact/contact';
$route['visitor'] = 'user/visitor/visitor';
$route['review'] = 'user/review/review';
$route['gallary'] = 'user/gallary/gallary';
$route['add_gallary'] = 'user/gallary/add_gallary';
$route['update_gallery'] = 'user/gallary/update_gallery';
$route['delete_gallery_image_vedio'] = 'user/gallary/delete_gallery_image_vedio';
$route['product'] = 'user/product/product';
$route['add_product'] = 'user/product/add_product';
$route['save_product_data'] = 'user/product/save_product_data';
$route['update_product_data'] = 'user/product/update_product_data';
$route['delete_product_data'] = 'user/product/delete_product_data';
$route['delete_product_image'] = 'user/product/delete_product_image';
$route['update_product/(:any)'] = 'user/product/add_product/$1';
$route['product_details/(:any)'] = 'user/product/product_details/$1';
$route['category'] = 'user/category/category';
$route['delete_category'] = 'user/category/delete_category';
$route['update_categories'] = 'user/category/update_categories';
$route['add_categories'] = 'user/category/add_categories';
$route['banner'] = 'user/banner/banner';
$route['add_banner'] = 'user/banner/add_banner';
$route['update_banner'] = 'user/banner/update_banner';
$route['delete_banners'] = 'user/banner/delete_banners';
$route['dashboard'] = 'user/user/dashboard';





// front pages
$route[''] = 'content/index';
$route['index.html'] = 'content/index';
$route['blog-details.html'] = 'content/blogDetails';
$route['blog.html'] = 'content/blog';
$route['contact.html'] = 'content/contact';
$route['gallery.html'] = 'content/gallery';
$route['product.html'] = 'content/product';
$route['service.html'] = 'content/service';
$route['about.html'] = 'content/about';
$route['tnc.html'] = 'content/termscondition';
$route['save_visitor_data'] = 'content/save_visitor_data';
$route['save_contact_data'] = 'content/save_contact_data';
$route['save_review_data'] = 'content/save_review_data';
$route['product_details.html'] = 'content/product_details';
$route['download_product_catalog'] = 'content/download_product_catalog';
