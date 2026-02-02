-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2025 at 06:33 PM
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
-- Database: `bharat_id_solution`
--

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
(1, 'test', NULL, '2025-03-20 07:14:34', 1, '2025-03-20 11:44:34', NULL, 'Active', '0'),
(2, 'data1', 1, '2025-03-20 07:15:22', 1, '2025-03-25 12:29:16', 1, 'Active', '0');

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
(20, 'Gayatri', 'Hedau', 'hedau_gayatri.ex@ghrce.raisoni.net', 'Testing', 'testing data', '2025-04-11 08:49:21');

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
(1, 'image', 'd02239b7c1f7a004327683ec5f334d47.jpg', '2025-04-08 16:08:34', 1, '2025-04-11 10:30:24', 1, 'Active', '0'),
(2, 'video', '540892506d09c2f43e0503e66f3b7b76.mp4', '2025-04-09 11:08:48', 1, NULL, NULL, 'Active', '0'),
(3, 'image', 'cca4d5a11e048fc06832563daddeb011.jpg', '2025-04-11 10:30:08', 1, NULL, NULL, 'Active', '0'),
(4, 'image', '6232882563a372a59c9fc8e67e9c4615.png', '2025-04-11 10:30:55', 1, NULL, NULL, 'Active', '0'),
(5, 'image', '642269878d436add2270d0b20700f617.jpeg', '2025-04-11 10:31:12', 1, NULL, NULL, 'Active', '0'),
(6, 'image', 'd42371dd5d06ef7c8cff5512a40efb6f.jpg', '2025-04-11 10:31:28', 1, NULL, NULL, 'Active', '0'),
(7, 'image', '81554651877fe676d789520a30dd230d.jpg', '2025-04-11 10:31:49', 1, NULL, NULL, 'Active', '0'),
(8, 'image', 'd8a93de35b68d8747838133ecc4c18bb.png', '2025-04-11 10:32:08', 1, NULL, NULL, 'Active', '0'),
(9, 'image', 'cdb6de8796f38312c86ed918635f7288.jpg', '2025-04-11 10:32:27', 1, NULL, NULL, 'Active', '0');

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
(3, 'Raw Material', 'PVC Sheets', 'e3ec73d17107370937838eb00a34c57c.png', '<p class=\"mt-3\" style=\"font-family: gilroymedium;\"><span style=\"font-weight: 700;\">Brand:</span>&nbsp;XYZ Electronics</p><p style=\"font-family: gilroymedium;\"><span style=\"font-weight: 700;\">Model:</span>&nbsp;ABC-123</p><p style=\"font-family: gilroymedium;\"><span style=\"font-weight: 700;\">Availability:</span>&nbsp;<span class=\"text-success fw-bold\" style=\"color: rgb(113, 221, 55) !important;\">In Stock</span></p><p style=\"font-family: gilroymedium;\"><span style=\"font-weight: 700;\">SKU:</span>&nbsp;123456789</p><p style=\"font-family: gilroymedium;\"><span style=\"font-weight: 700;\">Color Options:</span>&nbsp;Black, Silver, Blue</p><p style=\"font-family: gilroymedium;\"><span style=\"font-weight: 700;\">Weight:</span>&nbsp;1.5 kg</p><p style=\"font-family: gilroymedium;\"><span style=\"font-weight: 700;\">Dimensions:</span>&nbsp;10 x 5 x 2 inches</p><p style=\"font-family: gilroymedium;\"><span style=\"font-weight: 700;\">Material:</span>&nbsp;High-quality aluminum and plastic</p><h5 class=\"mt-4 text-dark\" style=\"font-family: gilroymedium; color: rgb(35, 52, 70) !important;\">Product Description</h5><p style=\"font-family: gilroymedium;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ac risus suscipit, faucibus mauris id, fringilla arcu. Vivamus euismod, velit vel scelerisque aliquet, est purus ullamcorper ligula, a sodales nisl elit ut quam.</p><h5 class=\"mt-4 text-dark\" style=\"font-family: gilroymedium; color: rgb(35, 52, 70) !important;\">Key Features</h5><ul class=\"list-unstyled\" style=\"font-family: gilroymedium;\"><li>✔ High-resolution display with 1080p Full HD</li><li>✔ Long-lasting battery life up to 12 hours</li><li>✔ Fast-charging technology</li><li>✔ Lightweight and compact design</li><li>✔ Advanced AI-powered features</li></ul><h5 class=\"mt-4 text-dark\" style=\"font-family: gilroymedium; color: rgb(35, 52, 70) !important;\">What\'s in the Box</h5><ul class=\"list-unstyled\" style=\"font-family: gilroymedium;\"><li>✔ 1 x Product Name</li><li>✔ 1 x USB Type-C Charging Cable</li><li>✔ 1 x User Manual</li><li>✔ 1 x Warranty Card</li></ul><h5 class=\"mt-4 text-dark\" style=\"font-family: gilroymedium; color: rgb(35, 52, 70) !important;\">Warranty &amp; Support</h5><p style=\"font-family: gilroymedium;\">2 years manufacturer warranty included. 24/7 customer support available.</p>', 'Active', '2025-04-11 14:49:10', 1, '2025-04-12 19:11:28', 1, '0'),
(4, 'Name Plate', 'Desk Name Plate', 'cf6e5fc36a5929c509513db5369d4fc0.jpg', 'Elegant acrylic name plate for desks.', 'Active', '2025-04-11 14:49:10', 1, '2025-04-12 19:08:44', 1, '0'),
(5, 'Keychain', 'Photo Keychain', '01e6f3b71e2d21a760b77d30624489a0.jpg', 'Personalized keychain with printed photo.', 'Active', '2025-04-11 14:49:10', 1, '2025-04-12 19:09:21', 1, '0'),
(6, 'Keychain', 'Resin Art work', '61fea627ae737a1d7339ab009fe542ec.jpg', 'Introducing our Personalized ID Keychain, the perfect fusion of functionality, style, and identity. Whether you\'re a student, employee, or event participant, this compact yet powerful accessory ensures your identification is always on hand – quite literally!\r\n\r\nCrafted from durable, high-quality plastic/acrylic and fitted with a metal ring or hook, our ID Keychain is built to withstand daily wear and tear while keeping your identity secure and accessible. The compact design doesn\'t compromise on clarity – your name, photo, ID number, and relevant organization details are clearly visible and professionally printed using high-resolution digital printing technology.\r\n\r\nIdeal for schools, colleges, corporate offices, exhibitions, NGOs, and conferences, this keychain serves a dual purpose – a stylish holder for your keys and a handy, visible ID. It eliminates the hassle of lanyards or wallets and gives you a smarter way to carry your credentials.\r\n\r\nYou can fully customize it with:\r\n\r\nYour name, photo &amp; logo\r\n\r\nBarcode or QR code integration\r\n\r\nEmergency contact info\r\n\r\nYour choice of color themes and designs\r\n\r\nKey Features:\r\n????️ Scratch-resistant &amp; waterproof material\r\n\r\n????️ Vibrant, fade-proof printing\r\n\r\n???? Strong metal ring for long-term use\r\n', 'Active', '2025-04-11 13:05:46', 1, '2025-04-12 19:08:05', 1, '0'),
(7, 'ID Card', 'ID cards', '09e808612484ea1713d511ffb65bf720.jpg', 'Our premium quality ID Cards are designed to offer durability, clarity, and professional appeal — ideal for schools, colleges, corporate offices, events, and institutions. These cards are crafted using high-grade PVC material and printed with high-resolution digital printing technology to ensure sharp images and vibrant colors.\r\n\r\nFully customizable, our ID cards can include your organization\'s logo, employee or student photo, personal details, barcode/QR code, and more. They are laminated for a scratch-resistant, waterproof finish — perfect for daily wear and tear.', 'Active', '2025-04-11 13:13:49', 1, NULL, NULL, '0'),
(8, 'ID Card', 'ID cards', '7e18240bf7b451ed42270d2c86a50c3a.jpg', 'Our premium quality ID Cards are designed to offer durability, clarity, and professional appeal — ideal for schools, colleges, corporate offices, events, and institutions. These cards are crafted using high-grade PVC material and printed with high-resolution digital printing technology to ensure sharp images and vibrant colors.\r\n\r\nFully customizable, our ID cards can include your organization\'s logo, employee or student photo, personal details, barcode/QR code, and more. They are laminated for a scratch-resistant, waterproof finish — perfect for daily wear and tear.', 'Active', '2025-04-11 13:14:18', 1, NULL, NULL, '0'),
(9, 'Lanyard', 'ID cards', 'f63e04b740d2776c9c60ad3d012d2ff9.jpeg', 'Our premium quality ID Cards are designed to offer durability, clarity, and professional appeal — ideal for schools, colleges, corporate offices, events, and institutions. These cards are crafted using high-grade PVC material and printed with high-resolution digital printing technology to ensure sharp images and vibrant colors.\r\n\r\nFully customizable, our ID cards can include your organization\'s logo, employee or student photo, personal details, barcode/QR code, and more. They are laminated for a scratch-resistant, waterproof finish — perfect for daily wear and tear.', 'Active', '2025-04-11 13:14:49', 1, NULL, NULL, '0'),
(10, 'ID Card', 'ID cards', '875df5edc3acab2ba366aeafa1b92988.jpeg', 'Our premium quality ID Cards are designed to offer durability, clarity, and professional appeal — ideal for schools, colleges, corporate offices, events, and institutions. These cards are crafted using high-grade PVC material and printed with high-resolution digital printing technology to ensure sharp images and vibrant colors.\r\n\r\nFully customizable, our ID cards can include your organization\'s logo, employee or student photo, personal details, barcode/QR code, and more. They are laminated for a scratch-resistant, waterproof finish — perfect for daily wear and tear.', 'Active', '2025-04-11 13:15:46', 1, NULL, NULL, '0'),
(11, 'Raw Material', 'Resin Art work', 'efc1bd068e769710e922d4db496ac1f4.png', '<span style=\"font-weight: bold;\">Crafted from durable resin,&nbsp;</span><div><ol><li>this stylish keychain is perfect for personal or promotional use.&nbsp;</li><li>Its vibrant design and glossy finish make it a standout accessory for everyday carry.</li><li>Its vibrant design and glossy finish make it a standout accessory for everyday carry.</li><li>Its vibrant design and glossy finish make it a standout accessory for everyday carry.</li><li>Its vibrant design and glossy finish make it a standout accessory for everyday carry.</li></ol></div>', 'Active', '2025-04-12 18:05:00', 1, '2025-04-12 19:09:45', 1, '0');

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
(2, 'mullajuned0@gmail.com', 'Admin', 'Juned Mulla', '123456', '2024-11-19 12:42:40', 3, '0', '1,2', '1', 0, 'Active');

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
(8, 'Aarbaj ', 'Ngp', '9874563210', 'tesla', 10, 'gayatrihedau3@gmail.com', '', '2025-04-15 08:12:52');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
