<style>
    /* Product Details Page Specific Styles */
    .product-hero-section {
        position: relative;
        overflow: hidden;
    }

    .product-hero-section::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background: url('data:image/svg+xml,<svg width="100" height="100" xmlns="http://www.w3.org/2000/svg"><defs><pattern id="grid" width="100" height="100" patternUnits="userSpaceOnUse"><path d="M 100 0 L 0 0 0 100" fill="none" stroke="rgba(255,255,255,0.05)" stroke-width="1"/></pattern></defs><rect width="100" height="100" fill="url(%23grid)"/></svg>');
        opacity: 0.3;
    }

    .product-image-gallery {
        max-width: 100%;
        margin: 0 auto;
        position: relative;
    }

    .main-product-image-container {
        margin-bottom: 20px;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 20px 60px rgba(0, 0, 0, 0.15);
        position: relative;
        background: white;
        padding: 15px;
    }

    .main-product-image {
        width: 100%;
        height: 450px;
        object-fit: contain;
        transition: transform 0.5s ease;
        cursor: zoom-in;
        border-radius: 15px;
    }

    .main-product-image:hover {
        transform: scale(1.05);
    }

    .image-zoom-indicator {
        position: absolute;
        top: 25px;
        right: 25px;
        background: rgba(0, 0, 0, 0.6);
        color: white;
        padding: 8px 15px;
        border-radius: 20px;
        font-size: 12px;
        display: flex;
        align-items: center;
        gap: 5px;
        z-index: 10;
    }

    .thumbnail-gallery {
        display: flex;
        gap: 12px;
        flex-wrap: wrap;
        justify-content: center;
    }

    .thumbnail-item {
        width: 90px;
        height: 90px;
        border: 3px solid #e2e8f0;
        border-radius: 12px;
        overflow: hidden;
        cursor: pointer;
        transition: all 0.3s ease;
        opacity: 0.6;
        background: white;
        padding: 5px;
        position: relative;
    }

    .thumbnail-item::after {
        content: '';
        position: absolute;
        inset: 0;
        background: linear-gradient(135deg, rgba(102, 126, 234, 0.2), rgba(118, 75, 162, 0.2));
        opacity: 0;
        transition: opacity 0.3s ease;
    }

    .thumbnail-item:hover {
        opacity: 1;
        border-color: #667eea;
        transform: translateY(-5px) scale(1.05);
        box-shadow: 0 10px 25px rgba(102, 126, 234, 0.3);
    }

    .thumbnail-item:hover::after {
        opacity: 1;
    }

    .thumbnail-item.active {
        opacity: 1;
        border-color: #667eea;
        box-shadow: 0 0 0 4px rgba(102, 126, 234, 0.2);
        transform: scale(1.05);
    }

    .thumbnail-item img {
        width: 100%;
        height: 100%;
        object-fit: contain;
    }

    .product-info-card {
        background: white;
        border-radius: 20px;
        padding: 40px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.08);
        border: 1px solid rgba(102, 126, 234, 0.1);
        position: relative;
        overflow: hidden;
    }

    .product-info-card::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 5px;
        background: linear-gradient(90deg, #667eea 0%, #764ba2 100%);
    }

    .product-category-badge {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        background: linear-gradient(135deg, #667eea15, #764ba215);
        color: #667eea;
        padding: 10px 20px;
        border-radius: 50px;
        font-weight: 600;
        font-size: 14px;
        margin-bottom: 20px;
        border: 2px solid #667eea30;
    }

    .product-title {
        font-size: 2.5rem;
        font-weight: 800;
        color: #1e293b;
        margin-bottom: 25px;
        line-height: 1.2;
        background: linear-gradient(135deg, #1e293b 0%, #667eea 100%);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        background-clip: text;
    }

    .action-buttons-container {
        display: flex;
        flex-direction: column;
        gap: 15px;
        margin-top: 30px;
    }

    .btn-whatsapp {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        padding: 16px 32px;
        background: linear-gradient(135deg, #25D366 0%, #128C7E 100%);
        color: white;
        border-radius: 50px;
        text-decoration: none;
        font-weight: 700;
        font-size: 16px;
        transition: all 0.3s ease;
        box-shadow: 0 10px 30px rgba(37, 211, 102, 0.3);
        position: relative;
        overflow: hidden;
    }

    .btn-whatsapp::before {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 0;
        height: 0;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.2);
        transform: translate(-50%, -50%);
        transition: width 0.6s, height 0.6s;
    }

    .btn-whatsapp:hover::before {
        width: 300px;
        height: 300px;
    }

    .btn-whatsapp:hover {
        transform: translateY(-3px);
        box-shadow: 0 15px 40px rgba(37, 211, 102, 0.4);
    }

    .btn-whatsapp i {
        font-size: 20px;
    }

    .btn-quote {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        padding: 16px 32px;
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        color: white;
        border-radius: 50px;
        text-decoration: none;
        font-weight: 700;
        font-size: 16px;
        transition: all 0.3s ease;
        box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);
        position: relative;
        overflow: hidden;
    }

    .btn-quote::before {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 0;
        height: 0;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.2);
        transform: translate(-50%, -50%);
        transition: width 0.6s, height 0.6s;
    }

    .btn-quote:hover::before {
        width: 300px;
        height: 300px;
    }

    .btn-quote:hover {
        transform: translateY(-3px);
        box-shadow: 0 15px 40px rgba(102, 126, 234, 0.4);
    }

    .btn-quote i {
        font-size: 18px;
    }

    .product-description-section {
        background: linear-gradient(180deg, #f8fafc 0%, #ffffff 100%);
        position: relative;
    }

    .product-description-section::before {
        content: '';
        position: absolute;
        top: 0;
        left: 50%;
        transform: translateX(-50%);
        width: 200px;
        height: 4px;
        background: linear-gradient(90deg, #667eea 0%, #764ba2 100%);
        border-radius: 2px;
    }

    .description-card {
        background: white;
        padding: 50px;
        border-radius: 20px;
        box-shadow: 0 10px 40px rgba(0, 0, 0, 0.06);
        border: 1px solid #e2e8f0;
        margin: 0 auto;
    }

    .description-title {
        font-size: 2rem;
        font-weight: 800;
        color: #1e293b;
        margin-bottom: 25px;
        text-align: center;
        position: relative;
        padding-bottom: 15px;
    }

    .description-title::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 50%;
        transform: translateX(-50%);
        width: 80px;
        height: 4px;
        background: linear-gradient(90deg, #667eea 0%, #764ba2 100%);
        border-radius: 2px;
    }

    .description-content {
        color: #475569;
        font-size: 1.1rem;
        line-height: 1.8;
        text-align: justify;
    }

    .feature-highlight {
        display: inline-flex;
        align-items: center;
        gap: 8px;
        background: linear-gradient(135deg, #667eea10, #764ba210);
        padding: 5px 15px;
        border-radius: 20px;
        color: #667eea;
        font-weight: 600;
        margin: 5px;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .main-product-image {
            height: 350px;
        }
        
        .thumbnail-item {
            width: 70px;
            height: 70px;
        }

        .product-title {
            font-size: 1.8rem;
        }

        .product-info-card {
            padding: 30px 20px;
        }

        .description-card {
            padding: 30px 20px;
        }

        .description-title {
            font-size: 1.5rem;
        }

        .description-content {
            font-size: 1rem;
        }
    }

    @media (max-width: 480px) {
        .main-product-image {
            height: 280px;
        }
        
        .thumbnail-item {
            width: 60px;
            height: 60px;
        }

        .product-title {
            font-size: 1.5rem;
        }

        .btn-whatsapp,
        .btn-quote {
            width: 100%;
            padding: 14px 24px;
        }
    }

    /* Animations */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(30px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    .animate-fade-in-up {
        animation: fadeInUp 0.6s ease-out;
    }
</style>

<!-- Product Details Hero Section -->
<div class="product-hero-section py-12">
    <div class="container mx-auto px-6">
        <div class="grid lg:grid-cols-2 gap-12 items-start">
            <!-- Product Image Gallery -->
            <div class="animate-fade-in-up" data-aos="fade-right">
                <div class="product-image-gallery">
                    <!-- Main Image -->
                    <div class="main-product-image-container">
                        <div class="image-zoom-indicator">
                            <i class="fas fa-search-plus"></i>
                            <span>Hover to zoom</span>
                        </div>
                        <img id="mainProductImage" 
                             src="public/uploads/product/<%$products[0]['image']%>" 
                             class="main-product-image" 
                             alt="<%$products[0]['product_name']%>"
                             onerror="this.onerror=null; this.src='https://placehold.co/600x400?text=No+Image';">
                    </div>

                    <!-- Thumbnail Gallery -->
                    <div class="thumbnail-gallery">
                        <!-- Default/Main Image Thumbnail -->
                        <div class="thumbnail-item active" onclick="changeMainImage(this)">
                            <img src="public/uploads/product/<%$products[0]['image']%>" 
                                 alt="<%$products[0]['product_name']%>">
                        </div>

                        <!-- Additional Images -->
                        <%foreach from=$products_image item=img %>
                            <div class="thumbnail-item" onclick="changeMainImage(this)">
                                <img src="public/uploads/product/<%$img['product_id']%>/<%$img['image']%>" 
                                     alt="Product Image">
                            </div>
                        <%/foreach%>
                    </div>
                </div>
            </div>

            <!-- Product Information -->
            <div class="animate-fade-in-up" data-aos="fade-left">
                <div class="product-info-card">
                    <span class="product-category-badge">
                        <i class="fas fa-bookmark"></i>
                        <span><%$products[0]['category_name']%></span>
                    </span>
                    
                    <h1 class="product-title"><%$products[0]['product_name']%></h1>
                    
                    <div class="flex items-center gap-3 mb-6">
                        <div class="flex items-center gap-1">
                            <i class="fas fa-star text-yellow-400"></i>
                            <i class="fas fa-star text-yellow-400"></i>
                            <i class="fas fa-star text-yellow-400"></i>
                            <i class="fas fa-star text-yellow-400"></i>
                            <i class="fas fa-star-half-alt text-yellow-400"></i>
                        </div>
                        <span class="text-gray-500 text-sm">(4.5/5 Rating)</span>
                    </div>

                    <div class="space-y-4 mb-8">
                        <div class="flex items-center gap-3 text-gray-700">
                            <i class="fas fa-shield-alt text-green-500 text-xl"></i>
                            <span class="font-semibold">Premium Quality Guaranteed</span>
                        </div>
                        <div class="flex items-center gap-3 text-gray-700">
                            <i class="fas fa-truck text-blue-500 text-xl"></i>
                            <span class="font-semibold">Fast & Secure Delivery</span>
                        </div>
                        <div class="flex items-center gap-3 text-gray-700">
                            <i class="fas fa-headset text-purple-500 text-xl"></i>
                            <span class="font-semibold">24/7 Customer Support</span>
                        </div>
                    </div>
                    
                    <div class="action-buttons-container">
                        <%assign var="productName" value=$products[0]['product_name']|escape:'url'%>
                        <%assign var="whatsappMsg" value="Hello, I'm interested in the product: `$productName`. Please share more details."|escape:'url'%>

                        <a href="https://wa.me/919806271078?text=<%$whatsappMsg%>" 
                           class="btn-whatsapp" 
                           target="_blank">
                            <i class="fab fa-whatsapp"></i>
                            <span>Contact on WhatsApp</span>
                        </a>

                        <a href="contact.html" class="btn-quote">
                            <i class="fas fa-envelope"></i>
                            <span>Request a Quote</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Product Description Section -->
<div class="product-description-section py-12">
    <div class="container mx-auto px-6">
        <div class="description-card" data-aos="fade-up">
            <h2 class="description-title">Product Description</h2>
            <div class="description-content">
                <%if $products[0]['description'] && $products[0]['description'] != ''%>
                    <%$products[0]['description']%>
                <%else%>
                    <p class="text-center text-gray-500">No description available for this product.</p>
                <%/if%>
            </div>
        </div>
    </div>
</div>

<script>
    // Change main image when thumbnail is clicked with smooth transition
    function changeMainImage(thumbnail) {
        const imgSrc = thumbnail.querySelector('img').src;
        const mainImage = document.getElementById('mainProductImage');
        
        // Fade out effect
        mainImage.style.opacity = '0';
        
        setTimeout(() => {
            mainImage.src = imgSrc;
            mainImage.style.opacity = '1';
        }, 200);
        
        // Remove active class from all thumbnails
        document.querySelectorAll('.thumbnail-item').forEach(item => {
            item.classList.remove('active');
        });
        
        // Add active class to clicked thumbnail
        thumbnail.classList.add('active');
    }

    // Add smooth opacity transition to main image
    document.getElementById('mainProductImage').style.transition = 'opacity 0.3s ease, transform 0.5s ease';
</script>