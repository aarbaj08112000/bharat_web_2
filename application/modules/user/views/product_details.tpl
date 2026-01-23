
   
    <style>
    .product-image {
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
        }
        .thumbnail:hover {
            border-color: #007bff;
            transform: scale(1.1);
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
    </style>
    <div class="content-wrapper">
  <!-- Content -->

  <div class="container-xxl flex-grow-1 container-p-y">
 

    <nav aria-label="breadcrumb">
      <div class="sub-header-left pull-left breadcrumb">
        <h1>
          Home
          <a hijacked="yes" href="javascript:void(0)" class="backlisting-link" title="Back to Issue Request Listing" >
            <i class="ti ti-chevrons-right" ></i>
            <em >Product Details</em></a>
          </h1>
          <br>
          <span >Product Details</span>
        </div>
      </nav>
        <div class="dt-top-btn d-grid gap-2 d-md-flex justify-content-md-end mb-5">
         <a href="<%base_url('product')%>"  class="btn btn-seconday" title="Back To Product Listing">
            <i class="ti ti-arrow-left"></i>
        </a>
        </div>
      <div class="dt-top-btn d-grid gap-2 d-md-flex justify-content-md-end mb-5">
        <%* <button class="btn btn-seconday" type="button" id="downloadCSVBtn" title="Download CSV"><i class="ti ti-file-type-csv"></i></button>
        <button class="btn btn-seconday" type="button" id="downloadPDFBtn" title="Download PDF"><i class="ti ti-file-type-pdf"></i></button>
        <button class="btn btn-seconday filter-icon" type="button"><i class="ti ti-filter" ></i></i></button>
        <button class="btn btn-seconday" type="button"><i class="ti ti-refresh reset-filter"></i></button> *%>
        
       <!-- <button type="button" class="btn btn-seconday" data-bs-toggle="modal" data-bs-target="#addPromo" title="Add process">
       <i class="ti ti-plus"></i>
        </button> -->
       

      </div>
     

      <!-- Main content -->
      <div class="card p-0 mt-4 w-100">
        <div class="p-3">
       
       
<div class="container my-5">
<div class="row">
    <!-- Product Image Gallery -->
    <div class="col-md-6">
      
        <div class="d-flex">
    <!-- Thumbnails (Stacked Vertically) -->
    <div class="d-flex flex-column me-5">
        <img src="public/uploads/product/<%$products[0]['image']%>" class="thumbnail mb-2" onclick="changeImage(this)" width="70">
        <%foreach from=$products_image item=img %>
         <img src="public/uploads/product/<%$img['product_id']%>/<%$img['image']%>" class="thumbnail mb-2" onclick="changeImage(this)" width="70">
         <%/foreach%>
        <!--<img src="https://img.freepik.com/free-vector/beautiful-cosmetic-ad_23-2148471068.jpg" class="thumbnail mb-2" onclick="changeImage(this)" width="70">-->
        <!--<img src="https://media.istockphoto.com/id/1414801672/photo/cardboard-box-with-cosmetics-product-in-front-od-open-door-buying-online-and-delivery.jpg?s=612x612&w=0&k=20&c=SA9VCzp-QtpzlliX8dM_uoH8K20U1gHqYfsWP08aLl0=" class="thumbnail mb-2" onclick="changeImage(this)" width="70">-->
        <!--<img src="https://5.imimg.com/data5/PY/ZB/QQ/SELLER-83695523/grocery-product-photography-service.jpg" class="thumbnail" onclick="changeImage(this)" width="70">-->
    </div>

    <!-- Main Image -->
    <img id="mainImage" src="public/uploads/product/<%$products[0]['image']%>" class="img-fluid product-image" alt="Product Image" width="500">
</div>
    </div>

    <!-- Product Details -->
    <div class="col-md-6">
        <h2 class="fw-bold text-primary"><%$products[0]['product_name']%></h2>
        <p class="text-muted">Category: <span class="fw-bold"><%$products[0]['category_name']%></span></p>
        <p><strong>Product Description:</strong> <br>
        <%$products[0]['description']%>
        </p>
        
    </div>
</div>

<!-- Customer Reviews Section -->
<div class="mt-5" style="display: none;">
    <h4 class="text-dark">Customer Reviews</h4>
    <div class="row">
        <div class="col-md-4">
            <div class="p-3 my-3 review-card">
                <strong>John Doe</strong> <span class="text-warning">★★★★★</span>
                <p class="mt-2">Great product! Highly recommended.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 my-3 review-card">
                <strong>Jane Smith</strong> <span class="text-warning">★★★★☆</span>
                <p class="mt-2">Good quality, but shipping was delayed.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 my-3 review-card">
                <strong>David Johnson</strong> <span class="text-warning">★★★★★</span>
                <p class="mt-2">Excellent value for money. Will buy again!</p>
            </div>
        </div>
    </div>
</div>
</div>

       
         
        </div>
        <!--/ Responsive Table -->
      </div>
      <!-- /.col -->
    

      <div class="content-backdrop fade"></div>
    </div>

    <style type="text/css">
      input.required-check:checked {
          border-color: #0d6efd !important;
          background-color: #fc0d0d !important;
      }
      .required-check{
          position: absolute;
          top: -13px;
          right: -7px;
          width: 22px;
          height: 22px;
      }
    </style>
    <script type="text/javascript">
    var base_url = <%$base_url|@json_encode%>
   
function changeImage(element) {
    document.getElementById("mainImage").src = element.src;
    document.querySelectorAll(".thumbnail").forEach(img => img.classList.remove("active"));
    element.classList.add("active");
}
</script>

    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    
