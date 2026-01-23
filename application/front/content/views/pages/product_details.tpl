<style>
    .product-image {
        width: 100%;
        border-radius: 10px;
        transition: transform 0.3s ease-in-out;
    }

    .product-image:hover {
        transform: scale(1.05);
    }

    .thumbnail {
        border: 2px solid transparent;
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
        width: 50px;
        height: auto;
    }

    .thumbnail:hover,
    .thumbnail.active {
        border-color: #007bff;
        transform: scale(1.1);
    }

    .thumbnail-wrapper {
        max-height: 500px;
        overflow-y: auto;
        overflow-x: hidden;
        scrollbar-width: thin;
        display: flex;
        flex-direction: column;
        gap: 10px;
        margin-right: 20px;
    }

    @media (max-width: 768px) {
        .thumbnail-wrapper {
            flex-direction: row;
            overflow-x: auto;
            overflow-y: hidden;
            max-height: none;
            margin-bottom: 15px;
            
        }

        .thumbnail {
            flex: 0 0 auto;
            width: auto;
            height: 50px;
        }
    }

    .review-card {
        background: #f8f9fa;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease-in-out;
    }

    .review-card:hover {
        transform: translateY(-5px);
    }
   ol, ul, p {
    margin-top: 0;
     margin-bottom: 0px !important; 
     padding-bottom: 0px !important; 
}

</style>

<div class="container-fluid my-5">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="row">
                <!-- Thumbnail images -->
                <div class="col-md-1 col-12 thumbnail-wrapper">
                    <img src="public/uploads/product/<%$products[0]['image']%>" class="thumbnail"
                         onclick="changeImage(this)">
                    <%foreach from=$products_image item=img %>
                        <img src="public/uploads/product/<%$img['product_id']%>/<%$img['image']%>" class="thumbnail"
                             onclick="changeImage(this)">
                    <%/foreach%>
                </div>

                <!-- Main image and product details -->
                <div class="col-md-5 col-12 mb-3">
                    <img id="mainImage" src="public/uploads/product/<%$products[0]['image']%>"
                         class="img-fluid product-image" alt="Product Image">
                             <%assign var="productName" value=$products[0]['product_name']|escape:'url'%>
                                <%assign var="encodedMsg" value="Hello%2C%20I'm%20interested%20in%20the%20product%3A%20`$productName`.%20Please%20share%20more%20details."%>
                                
                                <div class="d-flex justify-content-end mt-5">
                                  <a 
                                    href="https://wa.me/919806271078?text=<%$encodedMsg%>" 
                                    class="btn btn-sm btn-success d-flex align-items-center" 
                                    target="_blank"
                                  ><span class="mai-logo-whatsapp me-3"></span><span style="margin-left: 5px;"> Contact</span>
                                  </a>
                                </div>




                </div>

                <div class="col-md-5 col-12">
                    <h2 class="fw-bold title_text"><%$products[0]['product_name']%></h2>
                    <p class="text-muted">Category: <span class="fw-bold"><%$products[0]['category_name']%></span></p>
                    <p><strong>Product Description:</strong> <br>
                        <%$products[0]['description']%>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    function changeImage(element) {
        document.getElementById("mainImage").src = element.src;
        document.querySelectorAll(".thumbnail").forEach(img => img.classList.remove("active"));
        element.classList.add("active");
    }
</script>
