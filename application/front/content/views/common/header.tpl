<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <meta name="copyright" content="MACode ID, https://macodeid.com/">

  <title>Bharat ID Card</title>
  <link rel="icon" type="image/x-icon" href="<%base_url()%>public/assets/img/favicon/favicon.png" />

  <link rel="stylesheet" href="./public/assets_front/css/maicons.css">

  <link rel="stylesheet" href="./public/assets_front/css/bootstrap.css">

  <link rel="stylesheet" href="./public/assets_front/vendor/animate/animate.css">

  <link rel="stylesheet" href="./public/assets_front/css/theme.css">

  <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />
  
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

   
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/magnific-popup/dist/magnific-popup.css">
  <script src="https://cdn.jsdelivr.net/npm/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">

    
  <style> 
  .error{
    color: #b30000;
  }
  .title_text{
    font-weight: bold;
      background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      color: transparent;
  }
  .back-to-top:hover {
    background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
}
  .blue_color{
    color:#0b3b6c
  }
  .dark_pink_color{
    color:#d6007a
  }
  .btn-primary {
    background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
    color: #ffffff; /* white text for contrast */
    border: none;
    padding: 12px 25px;
    font-size: 16px;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s ease;
  }

  .btn-primary:hover {
    opacity: 0.9;
  }
  
  .btn-sm {
    background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
    color: #ffffff;
    border: none;
    padding: 6px 15px;
    font-size: 14px;
    border-radius: 6px;
    cursor: pointer;
    transition: all 0.3s ease;
  }

  .btn-sm:hover {
    opacity: 0.9;
    transform: scale(1.02);
  }
  .vision-mission-section {
    background-color: #f8f9fa;
    padding: 50px 0;
}
.icon-box {
    width: 80px;
    height: 80px;
    background-color: #007bff;
    color: white;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 30px;
    border-radius: 50%;
    margin-bottom: 20px;
}
.products-section {
            background-color: #f8f9fa;
            padding: 50px 0;
        }
        
        .product-card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }
        .product-card:hover {
            transform: translateY(-5px);
        }
        .toast-success {
    background-color: #106725 !important; /* Change this to your desired color */
    color: white !important; /* Optional: force text to white */
  }
  @media (max-width: 991.98px) {
  .navbar-collapse {
    display: none !important;
  }

  .navbar-collapse.show {
    display: block !important;
  }
}
@media (max-width: 767.98px) {
  .about_us_img {
    height: 350px !important;
    object-fit: cover; /* Optional: keeps the image nicely cropped */
  }
}
 .dropdown-item.active, .dropdown-item:active {
    color: #fff;
    text-decoration: none;
    background-color: #3a8ddb;
}

.breadcrumb-header {
      position: relative;
      text-align: center;
      background: linear-gradient(60deg, #3a8ddb, #00bcd4, #5dade2);
      color: white;
      overflow: hidden;
    }

    .inner-header {
      height: 120px;
      width: 100%;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }

    .inner-header nav {
      margin-bottom: 10px;
    }

    .breadcrumb {
      display: flex;
      gap: 10px;
      list-style: none;
      padding: 0;
      margin: 0;
    }

    .breadcrumb-item a,
    .breadcrumb-item.active {
      color: white ;
      text-decoration: none;
      font-weight: 300;
    }


    .waves {
      position: relative;
      width: 100%;
      height: 120px;
      min-height: 100px;
      max-height: 150px;
      margin-bottom: -7px;
    }

    .parallax > use {
      animation: moveWaves 25s cubic-bezier(.55,.5,.45,.5) infinite;
    }

    .parallax > use:nth-child(1) {
      animation-delay: -2s;
      animation-duration: 7s;
    }

    .parallax > use:nth-child(2) {
      animation-delay: -3s;
      animation-duration: 10s;
    }

    .parallax > use:nth-child(3) {
      animation-delay: -4s;
      animation-duration: 13s;
    }

    .parallax > use:nth-child(4) {
      animation-delay: -5s;
      animation-duration: 20s;
    }

    @keyframes moveWaves {
      0% {
        transform: translate3d(-90px, 0, 0);
      }
      100% {
        transform: translate3d(85px, 0, 0);
      }
    }

    @media (max-width: 768px) {
      .title_text {
        font-size: 28px;
      }
      .inner-header {
        height: auto;
        padding-top: 10px;
      }
      .waves {
        height: 80px;
      }
    }
    .img-3d-container {
  position: relative;
  display: inline-block;
  overflow: hidden;
}

.img-3d-container img {
  display: block;
  width: 100%;
}

.img-bottom-wave {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 30px;
  background: linear-gradient(to top, rgba(135, 206, 250, 0.3), rgba(255, 255, 255, 0));
  animation: waveMotion 4s ease-in-out infinite;
  transform: perspective(500px) rotateX(25deg);
  transform-origin: bottom;
  border-radius: 50% 50% 0 0;
  z-index: 2;
}

@keyframes waveMotion {
  0%, 100% {
    transform: perspective(500px) rotateX(25deg) translateY(0);
  }
  50% {
    transform: perspective(500px) rotateX(25deg) translateY(-5px);
  }
}
.tooltip-container {
  position: relative;
  display: inline-block;
  cursor: pointer;
}

.tooltip-container .tooltip-text {
  visibility: hidden;
  width: max-content;
  background-color: #333;
  color: #fff;
  text-align: center;
  padding: 5px;
  border-radius: 4px;
  font-size: 12px;
  position: absolute;
  top: -35px;
  left: 50%;
  transform: translateX(-50%);
  white-space: nowrap;
  z-index: 1;

  opacity: 0;
  transition: opacity 0.3s;
}

.tooltip-container:hover .tooltip-text {
  visibility: visible;
  opacity: 1;
}

.video-modal {
  display: none;
  position: fixed;
  z-index: 9999;
  top: 0; left: 0;
  width: 100vw; height: 100vh;
  background: rgba(0, 0, 0, 0.8);
  display: flex;
  align-items: center;
  justify-content: center;
}

.video-wrapper {
  position: relative;
  max-width: 80%;
  width: 700px;
}

.video-wrapper video {
  width: 100%;
  border-radius: 10px;
}

.close-btn {
  position: absolute;
  top: -15px;
  right: -15px;
  background: #fff;
  color: #000;
  font-weight: bold;
  border: none;
  font-size: 20px;
  border-radius: 50%;
  width: 30px;
  height: 30px;
  cursor: pointer;
  z-index: 10000;
}
.responsive-banner {
  width: 100%;
  height: auto;
  display: block;
  object-fit: cover;
}

/* Optional: Set a fixed height on larger screens only */
@media (min-width: 768px) {
  .responsive-banner {
    height: 550px;
  }
}

@media (max-width: 767px) {
  .custom-heading h1 {
    font-size: 1.2rem;
  }
  .custom-heading p {
    font-size: 1rem;
    display: none;
  }
  .custom-heading h5 {
    font-size: 0.9rem;
     padding-top: 0 !important;
    padding-bottom: 0 !important;
    margin-top: 0 !important;
    margin-bottom: 0 !important;
  }
}
@media (max-width: 767px) {
  .custom-heading {
    padding-top: 0 !important;
    padding-bottom: 0 !important;
    margin-top: 0 !important;
    margin-bottom: 0 !important;
  }
}
.dropdown-item:hover, .dropdown-item:focus {
     background-color: #aad5fb !important;
}

</style>
</head>
<body>
  
  <!-- Back to top button -->
  <div class="back-to-top"></div>

  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-white sticky" data-offset="300">
      <div class="container-fluid">
        <a href="index.html" class="navbar-brand"><span class="app-brand-logo demo">
        <img src="<%base_url()%>public/assets/images/bharat_id_logo.png" alt="" width="150">
     </span></a>

        <button class="navbar-toggler" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="navbar-collapse collapsed" id="navbarContent">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item <%if $config['current_route'] eq 'index.html'%>active<%/if%>">
              <a class="nav-link" href="index.html">Home</a>
            </li>
            <li class="nav-item <%if $config['current_route'] eq 'about.html'%>active<%/if%>">
              <a class="nav-link" href="about.html">About</a>
            </li>
            <li class="nav-item <%if $config['current_route'] eq 'service.html'%>active<%/if%>">
              <a class="nav-link" href="service.html">Services</a>
            </li>
            <li class="nav-item <%if $config['current_route'] eq 'gallery.html'%>active<%/if%>">
              <a class="nav-link" href="gallery.html">Gallery</a>
            </li>
           
             <!--<li class="nav-item <%if $config['current_route'] eq 'product.html'%>active<%/if%>">
              <a class="nav-link" href="product.html">Products</a>
            </li> -->
            
             <li class="nav-item dropdown <%if $config['current_route'] eq 'product.html'%>active<%/if%>">
            <a class="nav-link dropdown-toggle" href="product.html" id="productsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Products
            </a>
            <div class="dropdown-menu" aria-labelledby="productsDropdown">
            <a class="dropdown-item" href="product.html">All</a>
            <%if $config['categories'] != '' %>
          
              <%foreach $config['categories'] as $categories %>
              <a class="dropdown-item" href="product.html?c=<%$categories['category_name']%>&slug=<%$categories.category_slug%>">
              <%$categories['category_name'] %>
            </a>
             <%/foreach %>
           
          <%/if %>
              
              <!-- <a class="dropdown-item" href="product.html?c=id_card">ID Card</a>
              <a class="dropdown-item" href="product.html?c=lanyard">Lanyard</a>
              <a class="dropdown-item" href="product.html?c=raw_material">Raw Material</a>
              <a class="dropdown-item" href="product.html?c=name_plate">Name Plate</a>
              <a class="dropdown-item" href="product.html?c=badges">Badges</a>
              <a class="dropdown-item" href="product.html?c=medals">Medals</a>
              <a class="dropdown-item" href="product.html?c=group_photo">Group Photo</a>
              <a class="dropdown-item" href="product.html?c=keychain">Keychain</a> -->
            </div>
          </li>
          
            <li class="nav-item <%if $config['current_route'] eq 'contact.html'%>active<%/if%>">
              <a class="nav-link" href="contact.html">Contact</a>
            </li>
           
            <li class="nav-item pb-1">
            <button type="button" class="btn btn-primary btn-sm " data-toggle="modal" data-target="#exampleModal">
            Visitor
            </button>
            </li>
            <li class="nav-item pb-1">
              <a class="btn btn-primary  btn-sm ml-lg-2 " href="https://datacollection.bharatidcard.com/login">Channel Partner</a>
            </li>
           <!-- Trigger Button -->
           <li class="nav-item pb-1">
          <button id="showVideoBtn" class="btn btn-primary btn-sm ml-lg-2 "><i class="fas fa-play-circle"></i></button>
          </li>
          <!-- Video Popup Overlay -->
          <div id="videoModal" class="video-modal">
            <div class="video-wrapper">
              <button id="closeVideoBtn" class="close-btn">✕</button>
              <video id="popupVideo" controls autoplay>
                <source src="public/assets_front/img/bharat_id_solution.mp4" type="video/mp4">
                Your browser does not support the video tag.
              </video>
            </div>
          </div>

            <!--<a href="#" title="atch Vedio" class="btn btn-primary btn-sm  btn-split" onclick="playVideo()">
              <div class="fab"><span class="mai-play"></span></div>
            </a> 
            <div id="videoModal" style="display:none; position:fixed; top:10%; left:10%; width:80%; height:80%; background:#000; z-index:9999;">
              <button onclick="closeVideo()" style="position:absolute; top:10px; right:10px; z-index:10000;">Close</button>
              <video id="videoPlayer" width="100%" height="100%" controls autoplay>
                <source src="./public/assets_front/img/bharat_id_solution.mp4" type="video/mp4">
              
              </video>
            </div> -->
          </ul>
        </div>

      </div>


      <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog modal-dialog-centered modal-lg" role="document">
  <div class="modal-content">
  
    <div class="modal-header">
      <h5 class="modal-title" id="exampleModalLabel">Add Visitor Info <span class="tooltip-container">
      <i class="mai mai-information" style="color: #147bd6;
    border-radius: 50%;
    border: 1px solid;"></i>

      <span class="tooltip-text">Just a few details away! Submit the visitor form to <br>download our full catalogue of ID cards, lanyards, medals, and more.</span>
    </span></h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    
    <div class="modal-body">
    <form id="visitorForm" action="javascript:void(0)" method="post">
      <div class="form-row">
        <div class="form-group col-6">
          <label for="name">Full Name</label>
          <input type="text" class="form-control" name="name" id="name" placeholder="Enter Full name">
        </div>
        <div class="form-group col-6">
          <label for="city">City</label>
          <input type="text" class="form-control" name="city" id="city" placeholder="Enter city">
        </div>
        <div class="form-group col-6">
          <label for="phone">Phone Number</label>
          <input type="text" class="form-control" name="phone" id="phone" placeholder="Enter phone number">
        </div>
        <div class="form-group col-6">
          <label for="email">Email address</label>
          <input type="email" class="form-control" name="email" id="email" placeholder="Enter email">
        </div>
        <div class="form-group col-6">
          <label for="product">Product</label>
           <%if $config['products'] != '' %>
          <select class="form-control select2" name="product" id="product">
            <option value="">Select a product</option>
            <%foreach $config['products'] as $product %>
              <option value="<%$product['product_name'] %>"><%$product['product_name'] %></option>
            <%/foreach %>
          </select>
        <%/if %>
        </div>
        <div class="form-group col-6">
          <label for="quantity">Quantity</label>
          <input type="number" class="form-control" name="quantity" id="quantity" placeholder="Enter quantity">
        </div>
      </div>
    </form>
  </div>
  
    
    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      <button type="submit" form="visitorForm" class="btn btn-info">Download</button>
    </div>
    
  </div>
</div>
</div>



    </nav>
    <%if $config['current_route'] eq 'contact.html'%>
    <div class="container" style="display: none;">
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active ">Contact</li>
              </ul>
            </nav>
            <h1 class="text-center title_text">Contact Us</h1>
          </div>
        </div>
      </div>
    </div>

    <div class="breadcrumb-header">
<div class="inner-header">
  <nav aria-label="breadcrumb">
    <ul class="breadcrumb justify-content-center py-0 bg-transparent" style="list-style: none;">
      <li class="breadcrumb-item"><a href="index.html" style="color: white; text-decoration: none;">Home</a></li>
      <li class="breadcrumb-item active" style="color: white;" aria-current="page">Contact Us</li>
    </ul>
  </nav>
  <h1 class="text-center">Contact Us</h1>
</div>

<!-- Waves SVG -->
<svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none"
  shape-rendering="auto">
  <defs>
    <path id="gentle-wave"
      d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
  </defs>
  <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
  </g>
</svg>
</div>
    <%elseif $config['current_route'] eq 'about.html'%>
    <div class="container " style="display: none;">
    <div class="page-banner">
      <div class="row justify-content-center align-items-center h-100">
        <div class="col-md-6">
          <nav aria-label="Breadcrumb">
            <ul class="breadcrumb justify-content-center py-0 bg-transparent">
              <li class="breadcrumb-item"><a href="index.html">Home</a></li>
              <li class="breadcrumb-item active ">About</li>
            </ul>
          </nav>
          <h1 class="text-center title_text">About Us</h1>
        </div>
      </div>
    </div>
  </div>

  <!-- Header with Waves and About Us content -->
<div class="breadcrumb-header">
<div class="inner-header">
  <nav aria-label="breadcrumb">
    <ul class="breadcrumb justify-content-center py-0 bg-transparent" style="list-style: none;">
      <li class="breadcrumb-item"><a href="index.html" style="color: white; text-decoration: none;">Home</a></li>
      <li class="breadcrumb-item active" style="color: white;" aria-current="page">About</li>
    </ul>
  </nav>
  <h1 class="text-center">About Us</h1>
</div>

<!-- Waves SVG -->
<svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none"
  shape-rendering="auto">
  <defs>
    <path id="gentle-wave"
      d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
  </defs>
  <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
  </g>
</svg>
</div>

  <%elseif $config['current_route'] eq 'tnc.html'%>
  <div class="container" style="display: none;">
  <div class="page-banner">
    <div class="row justify-content-center align-items-center h-100">
      <div class="col-md-6">
        <nav aria-label="Breadcrumb">
          <ul class="breadcrumb justify-content-center py-0 bg-transparent">
            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
            <li class="breadcrumb-item active ">Terms & Condition</li>
          </ul>
        </nav>
        <h1 class="text-center title_text">Terms & Condition</h1>
      </div>
    </div>
  </div>
</div>

<div class="breadcrumb-header">
<div class="inner-header">
  <nav aria-label="breadcrumb">
    <ul class="breadcrumb justify-content-center py-0 bg-transparent" style="list-style: none;">
      <li class="breadcrumb-item"><a href="index.html" style="color: white; text-decoration: none;">Home</a></li>
      <li class="breadcrumb-item active" style="color: white;" aria-current="page">Terms & Condition</li>
    </ul>
  </nav>
  <h1 class="text-center">Terms & Condition</h1>
</div>

<!-- Waves SVG -->
<svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none"
  shape-rendering="auto">
  <defs>
    <path id="gentle-wave"
      d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
  </defs>
  <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
  </g>
</svg>
</div>
    <%elseif $config['current_route'] eq 'service.html'%>
    <div class="container" style="display: none;">
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Services</li>
              </ul>
            </nav>
            <h1 class="text-center title_text">Our Services</h1>
          </div>
        </div>
      </div>
    </div>

    <div class="breadcrumb-header">
<div class="inner-header">
  <nav aria-label="breadcrumb">
    <ul class="breadcrumb justify-content-center py-0 bg-transparent" style="list-style: none;">
      <li class="breadcrumb-item"><a href="index.html" style="color: white; text-decoration: none;">Home</a></li>
      <li class="breadcrumb-item active" style="color: white;" aria-current="page">Services</li>
    </ul>
  </nav>
  <h1 class="text-center">Our Services</h1>
</div>

<!-- Waves SVG -->
<svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none"
  shape-rendering="auto">
  <defs>
    <path id="gentle-wave"
      d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
  </defs>
  <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
  </g>
</svg>
</div>

    <%elseif $config['current_route'] eq 'gallery.html'%>
    <div class="container" style="display: none;">
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Gallery</li>
              </ul>
            </nav>
            <h1 class="text-center title_text">Gallery</h1>
          </div>
        </div>
      </div>
    </div>

    <div class="breadcrumb-header">
<div class="inner-header">
  <nav aria-label="breadcrumb">
    <ul class="breadcrumb justify-content-center py-0 bg-transparent" style="list-style: none;">
      <li class="breadcrumb-item"><a href="index.html" style="color: white; text-decoration: none;">Home</a></li>
      <li class="breadcrumb-item active" style="color: white;" aria-current="page">Gallery</li>
    </ul>
  </nav>
  <h1 class="text-center">Gallery</h1>
</div>

<!-- Waves SVG -->
<svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none"
  shape-rendering="auto">
  <defs>
    <path id="gentle-wave"
      d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
  </defs>
  <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
  </g>
</svg>
</div>

    <%else if $config['current_route'] eq 'product.html'%>
    <div class="container" style="display: none;">
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Products</li>
              </ul>
            </nav>
            <h1 class="text-center title_text">Products</h1>
          </div>
        </div>
      </div>
    </div>

    <div class="breadcrumb-header">
<div class="inner-header">
  <nav aria-label="breadcrumb">
    <ul class="breadcrumb justify-content-center py-0 bg-transparent" style="list-style: none;">
      <li class="breadcrumb-item"><a href="index.html" style="color: white; text-decoration: none;">Home</a></li>
      <li class="breadcrumb-item active" style="color: white;" aria-current="page">Products</li>
    </ul>
  </nav>
  <h1 class="text-center">Products</h1>
</div>

<!-- Waves SVG -->
<svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none"
  shape-rendering="auto">
  <defs>
    <path id="gentle-wave"
      d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
  </defs>
  <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
  </g>
</svg>
</div>
<%else if $config['current_route'] eq 'product_details.html'%>
    <div class="container" style="display: none;">
      <div class="page-banner">
        <div class="row justify-content-center align-items-center h-100">
          <div class="col-md-6">
            <nav aria-label="Breadcrumb">
              <ul class="breadcrumb justify-content-center py-0 bg-transparent">
                <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                <li class="breadcrumb-item active">Products</li>
              </ul>
            </nav>
            <h1 class="text-center title_text">Products Details</h1>
          </div>
        </div>
      </div>
    </div>

    <div class="breadcrumb-header">
<div class="inner-header">
  <nav aria-label="breadcrumb">
    <ul class="breadcrumb justify-content-center py-0 bg-transparent" style="list-style: none;">
      <li class="breadcrumb-item"><a href="index.html" style="color: white; text-decoration: none;">Home</a></li>
      <li class="breadcrumb-item active" style="color: white;" aria-current="page">Products</li>
    </ul>
  </nav>
  <h1 class="text-center">Products Details</h1>
</div>

<!-- Waves SVG -->
<svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none"
  shape-rendering="auto">
  <defs>
    <path id="gentle-wave"
      d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
  </defs>
  <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
  </g>
</svg>
</div>
    
    <%else %>
   
    <div class="container" style="display: none;">
    <div class="page-banner home-banner">
      <div class="row align-items-center flex-wrap-reverse h-100">
        <div class="col-md-6 py-5 wow fadeInLeft">
          <h1 class="mb-4">Welcome to <span class="title_text">Bharat ID Solution.</span></h1>
          <p class="text-lg text-grey mb-5">Your Trusted Partner for Professional ID Cards</p>
          <a href="#" class="btn btn-primary btn-split" onclick="playVideo()">
          Watch Video
          <div class="fab"><span class="mai-play"></span></div>
        </a>
        
        <div id="videoModal" style="display:none; position:fixed; top:10%; left:10%; width:80%; height:80%; background:#000; z-index:9999;">
          <button onclick="closeVideo()" style="position:absolute; top:10px; right:10px; z-index:10000;">Close</button>
          <video id="videoPlayer" width="100%" height="100%" controls autoplay>
            <source src="./public/assets_front/img/bharat_id_solution.mp4" type="video/mp4">
          
          </video>
        </div>
        
        </div>
        <div class="col-md-6 py-5 wow zoomIn">
          <div class="img-fluid text-center">
            <img src="./public/assets_front/img/home.png" alt="" style="width: 370px;">
          </div>
        </div>
      </div>
      <a href="#about" class="btn-scroll" data-role="smoothscroll"><span class="mai-arrow-down"></span></a>
    </div>
  </div>

  <div class="owl-carousel owl-theme">
  <div class="breadcrumb-header">

  <div class="container">
 <div class="row align-items-center flex-wrap-reverse">
  <div class="col-md-6 py-5 wow fadeInLeft custom-heading">
  <h1 class="mb-4">Welcome to <span class="">Bharat ID Solution.</span></h1>
  <p class="text-dark">Your Trusted Partner for Professional ID Cards</p>
  <h5>We specialize in customized ID solutions for every organization.
    Fast delivery, premium quality, and trusted service.</h5>
</div>

  <div class="col-md-6 py-5 wow zoomIn d-none d-md-block">
    <div class="img-fluid text-center">
      <img src="./public/assets_front/img/home.png" alt="">
    </div>
  </div>
</div>

  </div>
  <svg class="waves" xmlns="http://www.w3.org/2000/svg" viewBox="0 24 150 28" preserveAspectRatio="none"
  shape-rendering="auto">
  <defs>
    <path id="gentle-wave"
      d="M-160 44c30 0 58-18 88-18s58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
  </defs>
  <g class="parallax">
    <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7)" />
    <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
    <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
    <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
  </g>
</svg>
</div>

  <%if $config['banner'] != '' %>
  
    <%foreach $config['banner'] as $banner %>
    <div class="item">  <img src="public/uploads/banner/<%$banner['banner_image'] %>" alt="<%$banner['banner_image'] %>" class="responsive-banner"></div>
    <%/foreach %>
 
<%/if %>

</div>


  <!-- Trigger Button -->



    <%/if%>
   
  </header>