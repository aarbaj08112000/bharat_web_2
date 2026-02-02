-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2025 at 08:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bharatidweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banner_image` varchar(255) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banner_image`, `added_date`, `added_by`, `update_date`, `update_by`, `status`, `is_delete`) VALUES
(1, 'b4080f73185debd8b16d2b4ad3f59f73.png', '2025-05-04 10:36:37', 1, '2025-05-04 10:39:33', 1, 'Active', '0'),
(2, '4711b57970285a40bfb91a6b51b02f17.png', '2025-05-04 10:39:19', 1, '2025-05-04 11:05:34', 1, 'Active', '0');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `added_date` timestamp NULL DEFAULT current_timestamp(),
  `added_by` int(11) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `parent_category_id`, `added_date`, `added_by`, `updated_date`, `updated_by`, `status`, `is_delete`) VALUES
(1, 'ID Card', NULL, '2025-03-20 07:14:34', 1, '2025-05-04 05:49:43', 1, 'Active', '0'),
(2, 'Lanyard', NULL, '2025-03-20 07:15:22', 1, '2025-03-25 12:29:16', 1, 'Active', '0'),
(3, 'Raw Material', NULL, '2025-05-04 04:47:24', 1, '2025-05-04 08:17:24', NULL, 'Active', '0'),
(4, 'Name Plate', NULL, '2025-05-04 05:52:16', 1, '2025-05-04 09:22:16', NULL, 'Active', '0'),
(5, 'Badges', NULL, '2025-05-04 05:52:28', 1, '2025-05-04 09:22:28', NULL, 'Active', '0'),
(6, 'Medals', NULL, '2025-05-04 05:52:42', 1, '2025-05-04 09:22:42', NULL, 'Active', '0'),
(7, 'Group Photo', NULL, '2025-05-04 05:52:57', 1, '2025-05-04 09:22:57', NULL, 'Active', '0'),
(8, 'Keychain', NULL, '2025-05-04 05:53:08', 1, '2025-05-04 09:23:08', NULL, 'Active', '0'),
(9, 'Keychain', NULL, '2025-05-04 05:53:18', 1, '2025-05-04 05:53:26', 1, 'Active', '1');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `client_unit` varchar(50) DEFAULT NULL,
  `client_name` varchar(50) NOT NULL,
  `contact_person` varchar(30) NOT NULL,
  `pan_no` varchar(20) NOT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `shifting_address` varchar(255) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `gst_number` varchar(50) NOT NULL,
  `created_id` int(11) DEFAULT NULL,
  `date` varchar(10) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `deleted` int(11) DEFAULT 0,
  `state` varchar(20) NOT NULL,
  `state_no` varchar(200) NOT NULL,
  `bank_details` text NOT NULL,
  `address1` varchar(100) NOT NULL,
  `location` varchar(50) NOT NULL,
  `pin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `client_unit`, `client_name`, `contact_person`, `pan_no`, `billing_address`, `shifting_address`, `phone_no`, `gst_number`, `created_id`, `date`, `time`, `timestamp`, `deleted`, `state`, `state_no`, `bank_details`, `address1`, `location`, `pin`) VALUES
(1, 'Talegaon Unit', 'TEST TECHNOPLAST', 'MR. Suresh Kamat', 'BIZPB5715', 'S.no. 123/4, Near PCMC water tank, Whalekarwadi Road, Pimple Goan, Pune-411111  Email: xxxxaaa@yahoo.com   PH: 1234567890', 'Gat no.5648, House no 133, near Hotel, Pimple Road, Pune-411111', '1111111110', '11ABCDE2222FGHI', 3, '03-04-2024', '10:58:33', '2024-02-09 08:27:30', 0, 'MAHARASHTRA', '27', 'ICICI BANK - Ac.No. 1111', 'xxxxx, xxxxxxxxxxx, xxxxxxxxxxxxxxxxxxxxxxx', 'Chinchwad', '411111'),
(2, 'Akurdi Unit', 'TEST TECHNOPLAST', 'MR. Suresh Kamat', 'BIZPB5715', 'S.no. 123/4, Near PCMC water tank, Whalekarwadi Road, Pimple Goan, Pune-411111  Email: xxxxaaa@yahoo.com   PH: 1234567890', 'Gat no.5648, House no 133, near Hotel, Pimple Road, Pune-411111', '1111111110', '11ABCDE2222FGHI', 3, '21-04-2024', '06:53:03', '2024-02-09 10:29:41', 0, 'Maharashtra', '27', 'ICICI BANK 1111', 'xxxxx, xxxxxxxxxxx, xxxxxxxxxxxxxxxxxxxxxxx', 'Chinchwad', '411111');

-- --------------------------------------------------------

--
-- Table structure for table `config_setting`
--

CREATE TABLE `config_setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` enum('check_box','input','date','file') NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `config_setting`
--

INSERT INTO `config_setting` (`id`, `name`, `title`, `value`, `description`, `type`, `company_id`) VALUES
(9, 'company_logo', 'Company Logo', 'public/assets/images/bharat_id_logo.png', 'Company logo', 'file', 0),
(10, 'company_name', 'Company name', 'Bharat Id Solution', 'Company name', 'input', 0),
(11, 'company_fav_icon', 'Company fav icon', 'public/assets/img/favicon/favicon.png', 'Company fav icon', 'file', 0),
(12, 'login_attempt', 'Login attempt', '5', 'Login attempt', 'input', 0),
(13, 'menu_type', 'Menu Type', 'horizontal', 'horizontal|vertical', 'input', 0),
(14, 'default_page_view_type', 'Default Page View Type for listing', '{\"User\":\"Grid\"}', 'Table/Grid', 'input', 0),
(15, 'smtp_user_name', 'SMTP User Name', 'mullaaarbaj10@gmail.com', 'SMTP User Name', 'input', 0),
(16, 'smtp_user_password', 'SMTP User Password', 'csoh fxfg hvfk egju', 'SMTP User Password', 'input', 0),
(17, 'company_email', 'Company Email', 'erp.system@gmail.com', 'Company Email', 'input', 0),
(18, 'password_link_expiry', 'Password Link Expiry', '10', 'Password Link Expiry In Minutes', 'input', 0),
(19, 'email_notification_enable', 'Email Notification Enable', 'Yes', 'Email Notification Enable', 'input', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us_info`
--

CREATE TABLE `contact_us_info` (
  `contact_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `added_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us_info`
--

INSERT INTO `contact_us_info` (`contact_id`, `first_name`, `last_name`, `email`, `subject`, `message`, `added_date`) VALUES
(1, 'Ritika', 'Sharma', 'ritika.sharma@example.com', 'ID Card Inquiry', 'I want to know more about your ID card services.', '2025-04-01 00:00:00'),
(2, 'Manav', 'Patel', 'manav.patel@example.com', 'Bulk Order', 'Can I place a bulk order for name plates?', '2025-04-02 00:00:00'),
(3, 'Deepa', 'Rao', 'deepa.rao@example.com', 'Pricing Request', 'Kindly share the price for medals.', '2025-04-03 00:00:00'),
(4, 'Rehan', 'Shah', 'rehan.shah@example.com', 'Badge Design', 'I have a custom badge design. Can you help?', '2025-04-04 00:00:00'),
(5, 'Pooja', 'Iyer', 'pooja.iyer@example.com', 'Group Photo Service', 'Do you provide high-resolution group photos?', '2025-04-05 00:00:00'),
(6, 'Nikhil', 'Verma', 'nikhil.verma@example.com', 'Keychain Inquiry', 'Need custom keychains with logos.', '2025-04-06 00:00:00'),
(7, 'Sneha', 'Joshi', 'sneha.joshi@example.com', 'Lanyard Options', 'What types of lanyards are available?', '2025-04-07 00:00:00'),
(8, 'Karan', 'Mehta', 'karan.mehta@example.com', 'Collaboration Request', 'Interested in collaborating with your brand.', '2025-04-07 00:00:00'),
(9, 'Yash', 'Rana', 'yash.rana@example.com', 'Delivery Time', 'What is the delivery time for products?', '2025-04-08 00:00:00'),
(10, 'Anjali', 'Chauhan', 'anjali.chauhan@example.com', 'Material Info', 'Please provide material details for ID cards.', '2025-04-09 00:00:00'),
(11, 'Gayatri', 'Hedau', 'hedau_gayatri.ex@ghrce.raisoni.net', 'Testing', 'testing data qwerty', '2025-04-11 08:29:05'),
(12, 'testt', 'test', 'test@gmail.com', 'Testing', 'test new info', '2025-04-11 08:38:21'),
(13, 'testt', 'test', 'test@gmail.com', 'Testing', 'test new info', '2025-04-11 08:39:05'),
(14, 'testt', 'test', 'test@gmail.com', 'Testing', 'test new info', '2025-04-11 08:39:08'),
(15, 'Test', 'tets', 'test@gmail.com', 'Testing', 'new info  ', '2025-04-11 08:39:31'),
(16, 'Test', 'tets', 'test@gmail.com', 'Testing', 'new info  ', '2025-04-11 08:39:38'),
(17, 'Test', 'tets', 'test@gmail.com', 'Testing', 'new info  ', '2025-04-11 08:43:52'),
(18, 'Test', 'tets', 'test@gmail.com', 'Testing', 'new info  ', '2025-04-11 08:44:01'),
(19, 'test', 'test', 'test@gmail.com', 'test', 'weriodkbcjkkckdkddc', '2025-04-11 08:47:11'),
(20, 'Gayatri', 'Hedau', 'hedau_gayatri.ex@ghrce.raisoni.net', 'Testing', 'testing data', '2025-04-11 08:49:21'),
(21, 'Gayatri', 'Hedau', 'gayatrihedau3@gmail.com', 'Looking for ID cards', 'Looking for ID cards', '2025-05-04 08:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `question`, `answer`, `added_date`, `added_by`, `update_date`, `update_by`, `status`, `is_delete`) VALUES
(1, 'How can I track my order?', 'You can track your order by logging into your account and visiting the \"My Orders\" section. Once your order is shipped, you\'ll receive a tracking link via email or SMS.', '2025-03-23 16:22:46', 1, NULL, NULL, 'Active', '0'),
(2, 'What payment methods do you accept?', 'We accept various payment methods, including Credit/Debit Cards, UPI, Net Banking, PayPal, and Cash on Delivery (COD) (where available).', '2025-03-23 16:23:59', 1, '2025-03-27 09:50:06', 1, 'Inactive', '0');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `gallery_id` int(11) NOT NULL,
  `type` enum('image','video') DEFAULT NULL,
  `image_Video` varchar(255) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`gallery_id`, `type`, `image_Video`, `added_date`, `added_by`, `update_date`, `update_by`, `status`, `is_delete`) VALUES
(1, 'image', 'b8a5177eb59525095c193326025725e0.jpg', '2025-04-08 16:08:34', 1, '2025-04-16 15:15:25', 2, 'Active', '0'),
(2, 'video', '540892506d09c2f43e0503e66f3b7b76.mp4', '2025-04-09 11:08:48', 1, NULL, NULL, 'Active', '0'),
(3, 'image', '10f014695c8198e1f9f42360e6c29e27.jpg', '2025-04-11 10:30:08', 1, '2025-04-16 15:15:10', 2, 'Active', '0'),
(4, 'image', '2c8098b542940fc5c06c83c0294086a6.jpg', '2025-04-11 10:30:55', 1, '2025-04-16 15:15:37', 2, 'Active', '0'),
(5, 'image', '020d01f114b078fe3aabbaae4b140c92.jpg', '2025-04-11 10:31:12', 1, '2025-04-16 15:16:07', 2, 'Active', '0'),
(6, 'image', '66631a9a931fe06cc9f5a2d44b38bc94.jpg', '2025-04-11 10:31:28', 1, '2025-04-16 15:16:22', 2, 'Active', '0'),
(7, 'image', 'd0fde83c70aa2f5952cb9c57a392cd46.jpg', '2025-04-11 10:31:49', 1, '2025-04-16 15:16:34', 2, 'Active', '0'),
(8, 'image', 'd8a93de35b68d8747838133ecc4c18bb.png', '2025-04-11 10:32:08', 1, NULL, NULL, 'Active', '0'),
(9, 'image', 'fc80f7b8ba7521369c82d5d571c6a62f.jpg', '2025-04-11 10:32:27', 1, '2025-04-16 15:20:18', 2, 'Active', '0'),
(10, 'image', 'c2d2f1a3e82069147bbe764e46540bff.jpg', '2025-04-16 15:20:35', 2, NULL, NULL, 'Active', '0'),
(11, 'image', '6c313368070dbc10cc78b99277404ec6.jpg', '2025-04-16 15:20:52', 2, NULL, NULL, 'Active', '0');

-- --------------------------------------------------------

--
-- Table structure for table `group_master`
--

CREATE TABLE `group_master` (
  `group_master_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `group_code` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_master`
--

INSERT INTO `group_master` (`group_master_id`, `group_name`, `group_code`, `status`) VALUES
(1, 'Admin', 'Admin', 'Active'),
(2, 'AROM', 'AROM', 'Active'),
(5, 'Purchase', 'purchase', 'Active'),
(6, 'Sales', 'sales', 'Active'),
(7, 'Quality', 'quality', 'Active'),
(13, 'Super Admin', 'super_admin', 'Active'),
(14, 'Super Admin2', 'super_adminw', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `group_rights`
--

CREATE TABLE `group_rights` (
  `group_rights_id` int(11) NOT NULL,
  `group_master_id` int(11) NOT NULL,
  `menu_master_id` int(11) NOT NULL,
  `list` enum('Yes','No') DEFAULT 'No',
  `add` enum('Yes','No') NOT NULL DEFAULT 'No',
  `update` enum('Yes','No') NOT NULL DEFAULT 'No',
  `delete` enum('Yes','No') NOT NULL DEFAULT 'No',
  `export` enum('Yes','No') NOT NULL DEFAULT 'No',
  `import` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `group_rights`
--

INSERT INTO `group_rights` (`group_rights_id`, `group_master_id`, `menu_master_id`, `list`, `add`, `update`, `delete`, `export`, `import`) VALUES
(26, 1, 1, 'No', 'No', 'No', 'Yes', 'No', 'No'),
(27, 1, 2, 'Yes', 'No', 'Yes', 'No', 'No', 'No'),
(28, 1, 3, 'Yes', 'No', 'Yes', 'No', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `menu_category`
--

CREATE TABLE `menu_category` (
  `menu_category_id` int(11) NOT NULL,
  `menu_category_code` varchar(255) NOT NULL,
  `menu_category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_category`
--

INSERT INTO `menu_category` (`menu_category_id`, `menu_category_code`, `menu_category_name`) VALUES
(1, 'user_managemnet', 'User Management'),
(2, 'purchase', 'Purchase');

-- --------------------------------------------------------

--
-- Table structure for table `menu_master`
--

CREATE TABLE `menu_master` (
  `menu_master_id` int(11) NOT NULL,
  `menu_category_id` int(11) NOT NULL,
  `diaplay_name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_master`
--

INSERT INTO `menu_master` (`menu_master_id`, `menu_category_id`, `diaplay_name`, `url`, `status`) VALUES
(1, 1, 'User', 'user_list', 'Inactive'),
(2, 1, 'Group Master', 'group_master', 'Inactive'),
(3, 2, 'Sitemap', 'sitemap', 'Inactive');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_delete` enum('0','1') DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `category_name`, `product_name`, `image`, `description`, `status`, `added_date`, `added_by`, `updated_date`, `updated_by`, `is_delete`) VALUES
(1, 'ID Card', 'Corporate ID Card', 'idcard1.jpg', 'Professional PVC ID card for company employees.', 'Active', '2025-04-11 14:49:10', 1, '2025-04-12 19:04:15', 1, '1'),
(2, 'Lanyard', 'Custom Printed Lanyard', 'lanyard1.jpg', 'Durable lanyard with custom print for events.', 'Active', '2025-04-11 14:49:10', 1, '2025-04-12 19:06:27', 1, '1'),
(3, 'ID Card', 'PVC ID Card', '9511bbf15611bc5784260da9a9348bd5.jpg', '<p data-start=\"69\" data-end=\"408\" class=\"\">Durable, secure, and sleek—our PVC ID cards are the perfect choice for schools, offices, and institutions. Made from high-quality plastic, these cards offer long-lasting performance with sharp, high-resolution printing for clear photos, text, and barcodes. Ideal for identification, access control, and branding purposes.</p><p data-start=\"410\" data-end=\"427\" class=\"\"><strong data-start=\"410\" data-end=\"425\">Highlights:</strong></p><p class=\"mt-3\" style=\"font-family: gilroymedium;\">\r\n\r\n</p><ul data-start=\"428\" data-end=\"614\">\r\n<li data-start=\"428\" data-end=\"463\" class=\"\">\r\n<p data-start=\"430\" data-end=\"463\" class=\"\">Printed on Premium PVC material</p>\r\n</li>\r\n<li data-start=\"464\" data-end=\"510\" class=\"\">\r\n<p data-start=\"466\" data-end=\"510\" class=\"\">Waterproof, tear-resistant, and fade-proof</p>\r\n</li>\r\n<li data-start=\"511\" data-end=\"565\" class=\"\">\r\n<p data-start=\"513\" data-end=\"565\" class=\"\">Customizable with photo, logo, barcode, or QR code</p>\r\n</li>\r\n<li data-start=\"566\" data-end=\"614\" class=\"\">\r\n<p data-start=\"568\" data-end=\"614\" class=\"\">Suitable for students, employees, and visitors</p></li></ul>', 'Active', '2025-04-11 14:49:10', 1, '2025-05-02 12:30:19', 2, '0'),
(4, 'Name Plate', 'Desk Name Plate', '9c7776df8b912708f816e1eed5c3e4c5.jpg', '<p data-start=\"60\" data-end=\"396\" class=\"\">Add a touch of professionalism and elegance to your workspace with our customized desk name plates. Perfect for offices, receptions, and home workstations, these name plates are crafted from premium materials and personalized with your name, title, or company logo. A stylish way to make a strong first impression!</p>\r\n<p data-start=\"398\" data-end=\"415\" class=\"\"><strong data-start=\"398\" data-end=\"413\">Highlights:</strong></p>\r\n<ul data-start=\"416\" data-end=\"607\">\r\n<li data-start=\"416\" data-end=\"464\" class=\"\">\r\n<p data-start=\"418\" data-end=\"464\" class=\"\">Customizable with name, designation, or logo</p>\r\n</li>\r\n<li data-start=\"465\" data-end=\"515\" class=\"\">\r\n<p data-start=\"467\" data-end=\"515\" class=\"\">Made from high-quality acrylic, wood, or metal</p>\r\n</li>\r\n<li data-start=\"516\" data-end=\"559\" class=\"\">\r\n<p data-start=\"518\" data-end=\"559\" class=\"\">Sleek, durable, and professional design</p>\r\n</li>\r\n<li data-start=\"560\" data-end=\"607\" class=\"\">\r\n<p data-start=\"562\" data-end=\"607\" class=\"\">Ideal for office desks, cabins, or receptions</p></li></ul>', 'Active', '2025-04-11 14:49:10', 1, '2025-05-04 14:21:05', 1, '0'),
(5, 'Lanyard', 'Lanyards', '3137c9f9de1a69298461cc88dc2ecc9a.jpg', '<p data-start=\"74\" data-end=\"361\" class=\"\">Keep your ID cards and badges secure in style with our high-quality lanyards. Designed for daily use, these lanyards are comfortable, durable, and fully customizable with your brand logo, text, or colors—making them perfect for schools, offices, events, and organizations.</p>\r\n<p data-start=\"363\" data-end=\"380\" class=\"\"><strong data-start=\"363\" data-end=\"378\">Highlights:</strong></p>\r\n<ul data-start=\"381\" data-end=\"560\">\r\n<li data-start=\"381\" data-end=\"419\" class=\"\">\r\n<p data-start=\"383\" data-end=\"419\" class=\"\">Strong and durable fabric material</p>\r\n</li>\r\n<li data-start=\"420\" data-end=\"471\" class=\"\">\r\n<p data-start=\"422\" data-end=\"471\" class=\"\">Available in plain, printed, or branded designs</p>\r\n</li>\r\n<li data-start=\"472\" data-end=\"514\" class=\"\">\r\n<p data-start=\"474\" data-end=\"514\" class=\"\">Comfortable to wear with smooth finish</p>\r\n</li>\r\n<li data-start=\"515\" data-end=\"560\" class=\"\">\r\n<p data-start=\"517\" data-end=\"560\" class=\"\">Ideal for ID cards, access badges, and keys</p></li></ul>', 'Active', '2025-04-11 14:49:10', 1, '2025-04-16 15:31:43', 2, '0'),
(6, 'Medals', 'Awards', '7b9599ac0e397224bd9b71f6ebfad402.jpg', '<p data-start=\"58\" data-end=\"427\" class=\"\">Celebrate excellence and recognize achievements with our premium custom awards. Whether for corporate events, academic milestones, or special occasions, our awards are designed to honor success with style and elegance. Crafted from high-quality materials like acrylic, crystal, wood, or metal—each piece is customized to reflect the prestige of your event.</p>\r\n<p data-start=\"429\" data-end=\"446\" class=\"\"><strong data-start=\"429\" data-end=\"444\">Highlights:</strong></p>\r\n<ul data-start=\"447\" data-end=\"685\">\r\n<li data-start=\"447\" data-end=\"501\" class=\"\">\r\n<p data-start=\"449\" data-end=\"501\" class=\"\">Fully customizable with names, logos, and messages</p>\r\n</li>\r\n<li data-start=\"502\" data-end=\"558\" class=\"\">\r\n<p data-start=\"504\" data-end=\"558\" class=\"\">Available in acrylic, wood, glass, and metal options</p>\r\n</li>\r\n<li data-start=\"559\" data-end=\"619\" class=\"\">\r\n<p data-start=\"561\" data-end=\"619\" class=\"\">Elegant designs for corporate, academic, or personal use</p>\r\n</li>\r\n<li data-start=\"620\" data-end=\"685\" class=\"\">\r\n<p data-start=\"622\" data-end=\"685\" class=\"\">Ideal for recognition, appreciation, and milestone celebrations</p></li></ul>', 'Active', '2025-04-11 13:05:46', 1, '2025-05-04 18:42:00', 1, '0'),
(7, 'Badges', 'Badges', 'b620af05ce29a4399656060dad6ab71e.jpg', '<p data-start=\"68\" data-end=\"389\" class=\"\">Make a lasting impression with our custom-designed badges—ideal for staff identification, events, branding, or recognition purposes. Available in a variety of shapes, sizes, and finishes, these badges are crafted for durability and clear visibility, helping your team or brand stand out with professionalism.</p>\r\n<p data-start=\"391\" data-end=\"408\" class=\"\"><strong data-start=\"391\" data-end=\"406\">Highlights:</strong></p>\r\n<ul data-start=\"409\" data-end=\"611\">\r\n<li data-start=\"409\" data-end=\"457\" class=\"\">\r\n<p data-start=\"411\" data-end=\"457\" class=\"\">Customizable with name, logo, or designation</p>\r\n</li>\r\n<li data-start=\"458\" data-end=\"512\" class=\"\">\r\n<p data-start=\"460\" data-end=\"512\" class=\"\">Available in plastic, metal, or laminated finishes</p>\r\n</li>\r\n<li data-start=\"513\" data-end=\"552\" class=\"\">\r\n<p data-start=\"515\" data-end=\"552\" class=\"\">Pin, magnetic, or clip-back options</p>\r\n</li>\r\n<li data-start=\"553\" data-end=\"611\" class=\"\">\r\n<p data-start=\"555\" data-end=\"611\" class=\"\">Perfect for corporate staff, volunteers, and event teams</p></li></ul>', 'Active', '2025-04-11 13:13:49', 1, '2025-04-16 15:34:09', 2, '0'),
(8, 'Group Photo', 'Group Photo Frame', '21a379f6d7e5d5d547a2b4efb4f10228.jpg', '<p data-start=\"94\" data-end=\"435\" class=\"\">Capture and showcase unforgettable moments with our elegant group photo frames. Perfect for schools, offices, teams, and special events, these frames are designed to highlight group memories in a stylish and lasting way. Available in multiple sizes and layouts, each frame is crafted for durability and visual appeal.</p>\r\n<p data-start=\"437\" data-end=\"454\" class=\"\"><strong data-start=\"437\" data-end=\"452\">Highlights:</strong></p>\r\n<ul data-start=\"455\" data-end=\"677\">\r\n<li data-start=\"455\" data-end=\"520\" class=\"\">\r\n<p data-start=\"457\" data-end=\"520\" class=\"\">Ideal for school/class photos, office teams, and event groups</p>\r\n</li>\r\n<li data-start=\"521\" data-end=\"579\" class=\"\">\r\n<p data-start=\"523\" data-end=\"579\" class=\"\">High-quality print with sturdy wooden or acrylic frame</p>\r\n</li>\r\n<li data-start=\"580\" data-end=\"633\" class=\"\">\r\n<p data-start=\"582\" data-end=\"633\" class=\"\">Customizable with names, logos, and event details</p>\r\n</li>\r\n<li data-start=\"634\" data-end=\"677\" class=\"\">\r\n<p data-start=\"636\" data-end=\"677\" class=\"\">Wall-mount and tabletop options available</p></li></ul>', 'Active', '2025-04-11 13:14:18', 1, '2025-04-16 15:34:57', 2, '0'),
(9, 'ID Card', 'Acrylic ID Card', '286d1b4b3be1c61401d4022e1fae6cf3.jpg', '<p data-start=\"70\" data-end=\"415\" class=\"\">Give your identity a premium look with our stylish acrylic ID cards. Crafted from high-quality clear or frosted acrylic, these cards offer a modern and professional appearance, perfect for executives, events, and premium staff use. Durable, waterproof, and easy to customize, they combine functionality with elegant design.</p>\r\n<p data-start=\"417\" data-end=\"434\" class=\"\"><strong data-start=\"417\" data-end=\"432\">Highlights:</strong></p>\r\n<ul data-start=\"435\" data-end=\"640\">\r\n<li data-start=\"435\" data-end=\"487\" class=\"\">\r\n<p data-start=\"437\" data-end=\"487\" class=\"\">Made from strong, transparent or frosted acrylic</p>\r\n</li>\r\n<li data-start=\"488\" data-end=\"533\" class=\"\">\r\n<p data-start=\"490\" data-end=\"533\" class=\"\">Scratch-resistant and long-lasting finish</p>\r\n</li>\r\n<li data-start=\"534\" data-end=\"583\" class=\"\">\r\n<p data-start=\"536\" data-end=\"583\" class=\"\">Customizable with name, photo, logo, and more</p>\r\n</li>\r\n<li data-start=\"584\" data-end=\"640\" class=\"\">\r\n<p data-start=\"586\" data-end=\"640\" class=\"\">Ideal for VIPs, corporate staff, and special occasions</p></li></ul>', 'Active', '2025-04-11 13:14:49', 1, '2025-04-16 15:35:57', 2, '0'),
(10, 'Raw Material', 'Raw Materials & Accessories', 'd0951c4b09c7e86329fc15d51607ea48.jpg', '<p data-start=\"164\" data-end=\"433\" class=\"\">We offer a wide range of high-quality raw materials and accessories to support your ID card solutions. Designed for durability and functionality, our selection includes everything from card holders to clips and hooks—ensuring a complete and professional identity setup.</p>\r\n<p data-start=\"435\" data-end=\"473\" class=\"\"><strong data-start=\"435\" data-end=\"473\">Available Materials &amp; Accessories:</strong></p>\r\n<ul data-start=\"475\" data-end=\"1153\">\r\n<li data-start=\"475\" data-end=\"545\" class=\"\">\r\n<p data-start=\"477\" data-end=\"545\" class=\"\"><strong data-start=\"477\" data-end=\"496\">PP Clear Holder</strong> – Lightweight and transparent for everyday use</p>\r\n</li>\r\n<li data-start=\"546\" data-end=\"617\" class=\"\">\r\n<p data-start=\"548\" data-end=\"617\" class=\"\"><strong data-start=\"548\" data-end=\"574\">Premium Pasting Holder</strong> – Sturdy and sleek with a refined finish</p>\r\n</li>\r\n<li data-start=\"618\" data-end=\"696\" class=\"\">\r\n<p data-start=\"620\" data-end=\"696\" class=\"\"><strong data-start=\"620\" data-end=\"654\">Executive Plate ID Card Holder</strong> – Stylish and durable for premium cards</p>\r\n</li>\r\n<li data-start=\"697\" data-end=\"764\" class=\"\">\r\n<p data-start=\"699\" data-end=\"764\" class=\"\"><strong data-start=\"699\" data-end=\"715\">Metal Holder</strong> – Strong and long-lasting for added protection</p>\r\n</li>\r\n<li data-start=\"765\" data-end=\"825\" class=\"\">\r\n<p data-start=\"767\" data-end=\"825\" class=\"\"><strong data-start=\"767\" data-end=\"781\">Box Holder</strong> – Compact and protective for bulk storage</p>\r\n</li>\r\n<li data-start=\"826\" data-end=\"890\" class=\"\">\r\n<p data-start=\"828\" data-end=\"890\" class=\"\"><strong data-start=\"828\" data-end=\"840\">Dog Hook</strong> – Classic metal hook for secure card attachment</p>\r\n</li>\r\n<li data-start=\"891\" data-end=\"947\" class=\"\">\r\n<p data-start=\"893\" data-end=\"947\" class=\"\"><strong data-start=\"893\" data-end=\"906\">Fish Hook</strong> – Flexible and easy-to-use clip option</p>\r\n</li>\r\n<li data-start=\"948\" data-end=\"1006\" class=\"\">\r\n<p data-start=\"950\" data-end=\"1006\" class=\"\"><strong data-start=\"950\" data-end=\"966\">England Hook</strong> – Stylish and secure fastening choice</p>\r\n</li>\r\n<li data-start=\"1007\" data-end=\"1071\" class=\"\">\r\n<p data-start=\"1009\" data-end=\"1071\" class=\"\"><strong data-start=\"1009\" data-end=\"1017\">Yoyo</strong> – Retractable badge reel for convenience and access</p>\r\n</li>\r\n<li data-start=\"1072\" data-end=\"1153\" class=\"\">\r\n<p data-start=\"1074\" data-end=\"1153\" class=\"\"><strong data-start=\"1074\" data-end=\"1109\">Metal Clip with Laser Engraving</strong> – Professional touch with engraved branding</p>\r\n</li>\r\n</ul>\r\n', 'Active', '2025-04-11 13:15:46', 1, '2025-04-16 15:38:28', 2, '0'),
(11, 'Keychain', 'Premium Photo Keychains', '8ecdbfff9f99abbe38743a697ceb0a40.jpg', '<p data-start=\"92\" data-end=\"474\" class=\"\">Keep your memories close with our premium photo keychains – a perfect blend of style and sentiment. Crafted with high-quality materials, these keychains feature sharp, vibrant photo prints that won’t fade over time. Ideal for personal use, gifting, or branding, each piece is lightweight, durable, and designed to make your keys or bags uniquely yours.</p>\r\n<p data-start=\"476\" data-end=\"493\" class=\"\"><strong data-start=\"476\" data-end=\"491\">Highlights:</strong></p>\r\n<ul data-start=\"494\" data-end=\"655\">\r\n<li data-start=\"494\" data-end=\"528\" class=\"\">\r\n<p data-start=\"496\" data-end=\"528\" class=\"\">High-resolution photo printing</p>\r\n</li>\r\n<li data-start=\"529\" data-end=\"572\" class=\"\">\r\n<p data-start=\"531\" data-end=\"572\" class=\"\">Scratch-resistant and fade-proof finish</p>\r\n</li>\r\n<li data-start=\"573\" data-end=\"614\" class=\"\">\r\n<p data-start=\"575\" data-end=\"614\" class=\"\">Available in various shapes and sizes</p>\r\n</li>\r\n<li data-start=\"615\" data-end=\"655\" class=\"\">\r\n<p data-start=\"617\" data-end=\"655\" class=\"\">Perfect for gifting or promotional use</p></li></ul>', 'Active', '2025-04-12 18:05:00', 1, '2025-04-16 15:27:10', 2, '0'),
(12, 'Keychain', 'Resin Art work', '6c287bc6c0bb17be770438ff20efbcdd.png', '<span style=\"font-weight: bold; text-decoration-line: underline; background-color: rgb(249, 203, 156);\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem Ipsum</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry.</span></span><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\"><br></span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">&nbsp;Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></div>', 'Active', '2025-05-02 14:31:12', 2, NULL, NULL, '0'),
(13, 'ID Card', 'Resin Art work', '36cf38e754bdca4b5e5a1b26f303fc36.png', 'testing', 'Active', '2025-05-04 17:47:22', 1, '2025-05-04 18:06:03', 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_image`
--

CREATE TABLE `product_image` (
  `product_image_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_image`
--

INSERT INTO `product_image` (`product_image_id`, `image`, `product_id`) VALUES
(2, '1159d6094fa8bcdd7fccfe775b4d8b4e.png', 13),
(4, '20794e2284c9f6b39a079747087317b7.png', 13),
(5, '94fd3f5130791b305ec2b3976ad4046e.jpg', 6),
(6, '28684a2c3c3411822de6a4cc708829bc.jpg', 6);

-- --------------------------------------------------------

--
-- Table structure for table `review_rating`
--

CREATE TABLE `review_rating` (
  `review_rating_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_rating`
--

INSERT INTO `review_rating` (`review_rating_id`, `name`, `review`, `rating`, `added_date`, `added_by`, `update_date`, `update_by`, `status`, `is_delete`) VALUES
(1, 'test', 'testing data', '5', '2025-05-04 14:37:57', NULL, NULL, NULL, 'Active', '0'),
(2, 'Gayatri Narayan Hedau', 'This is good ', '5', '2025-05-04 14:38:39', NULL, NULL, NULL, 'Active', '0'),
(3, 'John Dev', '\"Excellent service and top-quality ID cards!\"\r\nBharat ID Solution delivered exactly what we needed, and their team was super responsive throughout the process.', '4', '2025-05-04 16:07:53', NULL, NULL, NULL, 'Active', '0');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL,
  `user_email` text DEFAULT NULL,
  `user_role` text DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` text DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `added_by` int(11) NOT NULL,
  `deleted` text DEFAULT NULL,
  `unit_ids` varchar(255) NOT NULL,
  `groups` varchar(255) NOT NULL,
  `login_attempt` int(11) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive','Block') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`id`, `user_email`, `user_role`, `user_name`, `user_password`, `added_date`, `added_by`, `deleted`, `unit_ids`, `groups`, `login_attempt`, `status`) VALUES
(1, 'mullaaarbaj10@gmail.com', 'Admin', 'Aarbaj Mulla', 'Test@123', '2024-11-19 12:41:29', 3, NULL, '1,2', '1', 3, 'Active'),
(2, 'admin@bharatid.com', 'Admin', 'Bharat ID Solution', '123456', '2024-11-19 12:42:40', 3, '0', '1,2', '1', 0, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Salman', 'salman@gmail.com', NULL, '$2y$12$fs7BtR3u9LWaPJQ4OzKuEOIBddsTZPjw4NBC3W1xu4c7zqlsUeB4y', NULL, '2025-03-12 04:16:29', '2025-03-12 04:16:29');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `visitor_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `device_id` varchar(255) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`visitor_id`, `name`, `city`, `phone_number`, `product`, `quantity`, `email`, `device_id`, `added_date`) VALUES
(1, 'Ritika Singh', 'Mumbai', '9876543210', 'ID Card', 100, 'ritika@example.com', 'DEV12345', '2025-04-02 16:17:22'),
(2, 'Manav Desai', 'Ahmedabad', '9123456780', 'Name Plate', 50, 'manav@example.com', 'DEV67890', '2025-04-08 16:17:27'),
(3, 'Deepa Rao', 'Bengaluru', '9988776655', 'Medal', 75, 'deepa@example.com', 'DEV11122', '2025-04-02 16:17:31'),
(4, 'Rehan Shah', 'Delhi', '9012345678', 'Badge', 200, 'rehan@example.com', 'DEV33445', '2025-04-04 16:17:35'),
(5, 'Pooja Iyer', 'Chennai', '9090909090', 'Group Photo', 30, 'pooja@example.com', 'DEV55667', '2025-04-07 16:17:40'),
(6, 'GAYATRI HEDAU', 'Nagpur', '8381058482', 'Tesla', 10, 'gayatrihedau3@gmail.com', '', '2025-04-01 08:08:37'),
(7, 'Gayatri Narayan Hedau', 'Nagpur', '08381058482', 'tesla', 10, 'hedau_gayatri.ex@ghrce.raisoni.net', '', '2025-04-02 08:12:05'),
(8, 'Aarbaj ', 'Ngp', '9874563210', 'tesla', 10, 'gayatrihedau3@gmail.com', '', '2025-04-15 08:12:52'),
(9, 'Gayatri Narayan Hedau', 'Nagpur', '08381058482', 'Id Cards', 10, 'gayu@yopmail.com', '', '2025-04-17 07:23:19'),
(10, 'Gayatri Narayan Hedau', 'Nagpur', '9874563210', 'Acrylic ID Card', 12, 'gayatrihedau3@yopmail.com', '', '2025-04-20 14:31:47'),
(11, 'Gayatri Narayan Hedau', 'Nagpur', '8381058482', 'Group Photo Frame', 10, 'gayatrihedau3@gmail.com', '', '2025-05-03 22:59:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config_setting`
--
ALTER TABLE `config_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us_info`
--
ALTER TABLE `contact_us_info`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `group_master`
--
ALTER TABLE `group_master`
  ADD PRIMARY KEY (`group_master_id`);

--
-- Indexes for table `group_rights`
--
ALTER TABLE `group_rights`
  ADD PRIMARY KEY (`group_rights_id`);

--
-- Indexes for table `menu_category`
--
ALTER TABLE `menu_category`
  ADD PRIMARY KEY (`menu_category_id`);

--
-- Indexes for table `menu_master`
--
ALTER TABLE `menu_master`
  ADD PRIMARY KEY (`menu_master_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`product_image_id`);

--
-- Indexes for table `review_rating`
--
ALTER TABLE `review_rating`
  ADD PRIMARY KEY (`review_rating_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`visitor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `config_setting`
--
ALTER TABLE `config_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contact_us_info`
--
ALTER TABLE `contact_us_info`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `group_master`
--
ALTER TABLE `group_master`
  MODIFY `group_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `group_rights`
--
ALTER TABLE `group_rights`
  MODIFY `group_rights_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu_category`
--
ALTER TABLE `menu_category`
  MODIFY `menu_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_master`
--
ALTER TABLE `menu_master`
  MODIFY `menu_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_image`
--
ALTER TABLE `product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review_rating`
--
ALTER TABLE `review_rating`
  MODIFY `review_rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
