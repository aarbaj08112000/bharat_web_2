<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <meta name="copyright" content="Bharat ID Card">

  <title>Bharat ID Card | Secure & Professional Identity Solutions</title>
  <link rel="icon" type="image/x-icon" href="<%base_url()%>public/assets/img/favicon/favicon.png" />

  <!-- Google Fonts: Poppins -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

  <!-- Tailwind CSS -->
  <script src="https://cdn.tailwindcss.com"></script>
  <script>
    tailwind.config = {
        theme: {
            extend: {
                colors: {
                    primary: '#3b82f6',
                    secondary: '#8b5cf6',
                    accent: '#06b6d4',
                    dark: '#0f172a',
                },
                fontFamily: {
                    sans: ['Poppins', 'sans-serif'],
                }
            }
        }
    }
  </script>

  <!-- AOS CSS -->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  
  <!-- Swiper CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <!-- Toastr -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet" />
  
  <!-- JQuery -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <style>
    /* Custom Scrollbar */
    ::-webkit-scrollbar {
        width: 8px;
    }
    ::-webkit-scrollbar-track {
        background: #f1f1f1;
    }
    ::-webkit-scrollbar-thumb {
        background: #888;
        border-radius: 4px;
    }
    ::-webkit-scrollbar-thumb:hover {
        background: #555;
    }
    
    /* Navigation Hover Effect */
    .nav-link {
        position: relative;
    }
    .nav-link::after {
        content: '';
        position: absolute;
        width: 0;
        height: 2px;
        bottom: -2px;
        left: 0;
        background-color: #3b82f6;
        transition: width 0.3s;
    }
    .nav-link:hover::after {
        width: 100%;
    }
  </style>
</head>
<body class="bg-gray-50 text-slate-800 font-sans antialiased">

  <!-- Navigation -->
  <nav class="fixed w-full z-50 bg-white/90 backdrop-blur-md border-b border-gray-200 shadow-sm transition-all duration-300">
    <div class="container mx-auto px-6 py-3 flex justify-between items-center">
        <!-- Logo -->
        <a href="index.html" class="flex items-center gap-2">
            <img src="<%base_url()%>public/assets/images/bharat_id_logo.png" alt="Bharat ID Card Logo" class="h-10 md:h-12 w-auto">
        </a>

        <!-- Mobile Menu Button -->
        <button id="mobile-menu-btn" class="md:hidden text-slate-700 focus:outline-none">
            <svg class="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7"></path>
            </svg>
        </button>

        <!-- Desktop Menu -->
        <div class="hidden md:flex items-center space-x-8">
            <a href="index.html" class="nav-link font-medium transition <%if $config['current_route'] eq 'index.html' or $config['current_route'] eq ''%>text-blue-600<%else%>text-slate-600<%/if%>">Home</a>
            <a href="about.html" class="nav-link font-medium transition <%if $config['current_route'] eq 'about.html'%>text-blue-600<%else%>text-slate-600<%/if%>">About</a>
            <a href="service.html" class="nav-link font-medium transition <%if $config['current_route'] eq 'service.html'%>text-blue-600<%else%>text-slate-600<%/if%>">Services</a>
            <a href="gallery.html" class="nav-link font-medium transition <%if $config['current_route'] eq 'gallery.html'%>text-blue-600<%else%>text-slate-600<%/if%>">Gallery</a>
            
            <!-- Products Dropdown -->
            <div class="relative group">
                <a href="product.html" class="nav-link font-medium transition flex items-center gap-1 <%if $config['current_route'] eq 'product.html' or $config['current_route'] eq 'product_details.html'%>text-blue-600<%else%>text-slate-600<%/if%>">
                    Products
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path></svg>
                </a>
                <div class="absolute left-0 mt-2 w-48 bg-white rounded-lg shadow-xl border border-gray-100 opacity-0 invisible group-hover:opacity-100 group-hover:visible transition-all duration-200 transform translate-y-2 group-hover:translate-y-0">
                    <a href="product.html" class="block px-4 py-2 text-sm text-slate-700 hover:bg-blue-50 hover:text-blue-600">All Products</a>
                    <%if $config['categories'] != '' %>
                        <%foreach $config['categories'] as $categories %>
                            <a href="product.html?c=<%$categories['category_name']%>&slug=<%$categories.category_slug%>" class="block px-4 py-2 text-sm text-slate-700 hover:bg-blue-50 hover:text-blue-600">
                                <%$categories['category_name'] %>
                            </a>
                        <%/foreach %>
                    <%/if %>
                </div>
            </div>

            <a href="contact.html" class="nav-link font-medium transition <%if $config['current_route'] eq 'contact.html'%>text-blue-600<%else%>text-slate-600<%/if%>">Contact</a>

            <!-- Action Buttons -->
            <div class="flex items-center gap-3 ml-4">
                <button type="button" class="px-4 py-2 bg-blue-600 text-white text-sm font-medium rounded-full hover:bg-blue-700 transition shadow-lg shadow-blue-500/30" data-toggle="modal" data-target="#visitorModal" id="visitorBtn">
                    Download Catalog
                </button>
                <a href="https://datacollection.bharatidcard.com/login" class="px-4 py-2 border border-blue-600 text-blue-600 text-sm font-medium rounded-full hover:bg-blue-50 transition">
                    Partner Login
                </a>
            </div>
        </div>
    </div>

    <!-- Mobile Menu -->
    <div id="mobile-menu" class="hidden md:hidden bg-white border-t border-gray-200 shadow-lg absolute w-full left-0 top-full">
        <div class="flex flex-col p-4 space-y-4">
            <a href="index.html" class="font-medium transition <%if $config['current_route'] eq 'index.html' or $config['current_route'] eq ''%>text-blue-600<%else%>text-slate-600<%/if%>">Home</a>
            <a href="about.html" class="font-medium transition <%if $config['current_route'] eq 'about.html'%>text-blue-600<%else%>text-slate-600<%/if%>">About</a>
            <a href="service.html" class="font-medium transition <%if $config['current_route'] eq 'service.html'%>text-blue-600<%else%>text-slate-600<%/if%>">Services</a>
            <a href="gallery.html" class="font-medium transition <%if $config['current_route'] eq 'gallery.html'%>text-blue-600<%else%>text-slate-600<%/if%>">Gallery</a>
            <a href="product.html" class="font-medium transition <%if $config['current_route'] eq 'product.html'%>text-blue-600<%else%>text-slate-600<%/if%>">Products</a>
            <a href="contact.html" class="font-medium transition <%if $config['current_route'] eq 'contact.html'%>text-blue-600<%else%>text-slate-600<%/if%>">Contact</a>
            <div class="pt-4 border-t border-gray-100 flex flex-col gap-3">
                <button class="w-full px-4 py-2 bg-blue-600 text-white rounded-lg hover:bg-blue-700 transition text-center" id="mobileVisitorBtn">Download Catalog</button>
                <a href="https://datacollection.bharatidcard.com/login" class="w-full px-4 py-2 border border-blue-600 text-blue-600 rounded-lg hover:bg-blue-50 transition text-center">Partner Login</a>
            </div>
        </div>
    </div>
  </nav>

  <!-- Visitor Modal (Hidden by default, triggered by JS/Button) -->
  <!-- Note: Keeping the original modal structure logic but styling it cleanly -->
  <div id="visitorModalOverlay" class="fixed inset-0 z-[100] hidden flex items-center justify-center bg-black/60 backdrop-blur-sm opacity-0 transition-opacity duration-300">
    <div class="bg-white rounded-2xl shadow-2xl w-full max-w-lg mx-4 overflow-hidden transform scale-95 transition-transform duration-300" id="visitorModalContent">
        <div class="bg-gradient-to-r from-blue-600 to-cyan-500 p-6 flex justify-between items-center">
            <h3 class="text-xl font-bold text-white flex items-center gap-2">
                <i class="fas fa-download"></i> Download Catalog
            </h3>
            <button id="closeModalBtn" class="text-white hover:bg-white/20 rounded-full p-1 transition">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
            </button>
        </div>
        <div class="p-6">
            <p class="text-gray-500 text-sm mb-6">Please provide your details to download our comprehensive product catalog.</p>
            <form id="visitorForm" action="javascript:void(0)" method="post" class="space-y-4">
                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <label class="block text-xs font-bold text-gray-700 mb-1 uppercase">Full Name</label>
                        <input type="text" name="name" id="name" class="w-full bg-gray-50 border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" placeholder="John Doe" required>
                    </div>
                    <div>
                        <label class="block text-xs font-bold text-gray-700 mb-1 uppercase">City</label>
                        <input type="text" name="city" id="city" class="w-full bg-gray-50 border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" placeholder="New York" required>
                    </div>
                </div>
                <div class="grid grid-cols-2 gap-4">
                    <div>
                        <label class="block text-xs font-bold text-gray-700 mb-1 uppercase">Phone</label>
                        <input type="tel" name="phone" id="phone" class="w-full bg-gray-50 border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" placeholder="9876543210" required>
                    </div>
                    <div>
                        <label class="block text-xs font-bold text-gray-700 mb-1 uppercase">Email</label>
                        <input type="email" name="email" id="email" class="w-full bg-gray-50 border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" placeholder="john@example.com" required>
                    </div>
                </div>
                <div>
                    <label class="block text-xs font-bold text-gray-700 mb-1 uppercase">Interested Product</label>
                    <select name="product" id="product" class="w-full bg-gray-50 border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition">
                        <option value="">Select a product</option>
                        <%if $config['products'] != '' %>
                            <%foreach $config['products'] as $product %>
                                <option value="<%$product['product_name'] %>"><%$product['product_name'] %></option>
                            <%/foreach %>
                        <%/if %>
                    </select>
                </div>
                <div>
                    <label class="block text-xs font-bold text-gray-700 mb-1 uppercase">Quantity</label>
                    <input type="number" name="quantity" id="quantity" class="w-full bg-gray-50 border border-gray-200 rounded-lg px-3 py-2 text-sm focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" placeholder="e.g. 100" min="1" required>
                </div>
                
                <button type="submit" class="w-full py-3 bg-blue-600 text-white font-bold rounded-lg hover:bg-blue-700 transition shadow-lg transform hover:-translate-y-0.5">
                    Download Now
                </button>
            </form>
        </div>
    </div>
  </div>

  <!-- Breadcrumb Header (Dynamic based on route) -->
  <%if $config['current_route'] neq 'index.html'%>
  <header class="pt-32 pb-12 text-center px-6 relative overflow-hidden bg-slate-900 text-white">
    <div class="absolute top-0 left-1/2 -translate-x-1/2 w-full h-full bg-blue-500/10 blur-[100px] pointer-events-none"></div>
    
    <%if $config['current_route'] eq 'contact.html'%>
        <h1 class="text-4xl md:text-5xl font-bold mb-4 relative z-10" data-aos="fade-up">Contact Us</h1>
        <p class="text-gray-400 max-w-2xl mx-auto relative z-10" data-aos="fade-up" data-aos-delay="100">Get in touch with us for any queries or support.</p>
    <%elseif $config['current_route'] eq 'about.html'%>
        <h1 class="text-4xl md:text-5xl font-bold mb-4 relative z-10" data-aos="fade-up">About Us</h1>
        <p class="text-gray-400 max-w-2xl mx-auto relative z-10" data-aos="fade-up" data-aos-delay="100">Building trust through identity. Learn more about our journey.</p>
    <%elseif $config['current_route'] eq 'service.html'%>
        <h1 class="text-4xl md:text-5xl font-bold mb-4 relative z-10" data-aos="fade-up">Our Services</h1>
        <p class="text-gray-400 max-w-2xl mx-auto relative z-10" data-aos="fade-up" data-aos-delay="100">Comprehensive solutions for web aesthetics and identification.</p>
    <%elseif $config['current_route'] eq 'gallery.html'%>
        <h1 class="text-4xl md:text-5xl font-bold mb-4 relative z-10" data-aos="fade-up">Gallery</h1>
        <p class="text-gray-400 max-w-2xl mx-auto relative z-10" data-aos="fade-up" data-aos-delay="100">Explore our diverse range of personalized products.</p>
    <%elseif $config['current_route'] eq 'product.html'%>
        <h1 class="text-4xl md:text-5xl font-bold mb-4 relative z-10" data-aos="fade-up">Products</h1>
        <p class="text-gray-400 max-w-2xl mx-auto relative z-10" data-aos="fade-up" data-aos-delay="100">High-quality ID cards and accessories.</p>
    <%elseif $config['current_route'] eq 'product_details.html'%>
        <h1 class="text-4xl md:text-5xl font-bold mb-4 relative z-10" data-aos="fade-up">Product Details</h1>
        <p class="text-gray-400 max-w-2xl mx-auto relative z-10" data-aos="fade-up" data-aos-delay="100">Explore detailed specifications, features, and customization options for our products designed to meet your business and institutional needs.</p>
    <%elseif $config['current_route'] eq 'tnc.html'%>
        <h1 class="text-4xl md:text-5xl font-bold mb-4 relative z-10" data-aos="fade-up">Terms & Conditions</h1>
        <p class="text-gray-400 max-w-2xl mx-auto relative z-10" data-aos="fade-up" data-aos-delay="100">Please read these terms carefully before using our services</p>
    <%elseif $config['current_route'] eq 'privacy-policy.html'%>
        <h1 class="text-4xl md:text-5xl font-bold mb-4 relative z-10" data-aos="fade-up">Privacy Policy</h1>
        <p class="text-gray-400 max-w-2xl mx-auto relative z-10" data-aos="fade-up" data-aos-delay="100">Your privacy is our priority at Bharat ID Card</p>
    
    <%/if%>
  </header>
  <%/if%>

  <script>
    // Mobile Menu Toggle
    const btn = document.getElementById('mobile-menu-btn');
    const menu = document.getElementById('mobile-menu');

    btn.addEventListener('click', () => {
        menu.classList.toggle('hidden');
    });

    // Visitor Modal Logic
    const visitorBtns = document.querySelectorAll('[data-target="#visitorModal"], #visitorBtn, #mobileVisitorBtn');
    const modalOverlay = document.getElementById('visitorModalOverlay');
    const modalContent = document.getElementById('visitorModalContent');
    const closeModalBtn = document.getElementById('closeModalBtn');

    visitorBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            modalOverlay.classList.remove('hidden');
            setTimeout(() => {
                modalOverlay.classList.remove('opacity-0');
                modalContent.classList.remove('scale-95');
                modalContent.classList.add('scale-100');
            }, 10);
        });
    });

    function closeModal() {
        modalOverlay.classList.add('opacity-0');
        modalContent.classList.remove('scale-100');
        modalContent.classList.add('scale-95');
        setTimeout(() => {
            modalOverlay.classList.add('hidden');
        }, 300);
    }

    closeModalBtn.addEventListener('click', closeModal);
    modalOverlay.addEventListener('click', (e) => {
        if (e.target === modalOverlay) closeModal();
    });
  </script>