
    <!-- Include jQuery UI for Autocomplete -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <!-- Include Tokenfield JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-tokenfield/dist/bootstrap-tokenfield.min.js"></script>
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/6/tinymce.min.js" referrerpolicy="origin"></script>

<style>
.tox .tox-notification--warning{
  display: none !important;
}
.tox-notifications-container{
  display: none !important;
}
#imagePreview img{
  padding: 2px;
  border-radius: 5px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
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
            <em >Product</em></a>
          </h1>
          <br>
          <span ><%if isset($products) %>Update Product<%else%>Add Product<%/if%></span>
        </div>
      </nav>
        <div class="dt-top-btn d-grid gap-2 d-md-flex justify-content-md-end mb-5">
         <a href="<%base_url('product')%>"  class="btn btn-seconday" title="Back To College/School Master Listing">
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

        <form class="container mt-4 add_product custom-form"  action="javascript:void(0)" method="POST" enctype="multipart/form-data" id="add_product" >
        <div class="row">
          <div class="col-md-4">
            <label for="name" class="form-label fs-6">Product Name<span class="text-danger ms-1">*</span></label>
            <input type="text" class="form-control required-input" id="product_name" placeholder="Enter Product Name" name="product_name" value="<%if isset($products) %><%$products[0].product_name%><%/if%>">
          </div>
          <div class="col-md-4">
          <label for="url" class="form-label fs-6">Category<span class="text-danger ms-1">*</span></label>
          <select name="category" class="form-control required-input select2">
              <option value="">Select Category</option>
              <%foreach $categories as $category%>
              <option value="<%$category['category_name'] %>" <%if $products[0].category_name == $category['category_name'] %>selected<%/if%>>
                <%$category['category_name'] %>
              </option>
            <%/foreach%>
          </select>

        </div>
          <div class="col-md-3">
            <label for="image" class="form-label fs-6">Cover Image<span class="text-danger ms-1">*</span></label>
            <input type="file" class="form-control required-input" id="image" name="image">
            <input type="hidden" class="form-control required-input" id="product_image" name="product_image" value="<%if isset($products) %><%$products[0].image%><%/if%>">
          </div>
          <div class="col-md-1" id="imagePreview">
            <%if isset($products) && !empty($products[0].image) %>
              <img src="public/uploads/product/<%$products[0].image%>" alt="Product Image" class="img-thumbnail" width="120">
            <%/if%>
          </div>
        
          <div class="col-md-4">
          <label for="product_images" class="form-label fs-6">Product Images </label>
          <input type="file" class="form-control" id="product_images" name="product_images[]" multiple>
          </div>
        
        <div class="col-md-8 d-flex flex-wrap gap-2 mt-3" id="productImagesPreview">
          <%if isset($products_image) && !empty($products_image[0].image) %>
            <%foreach from=$products_image item=img %>
            <div class="position-relative d-inline-block me-2 mb-2 shadow-sm rounded product-image-container" id="img-<%$img['product_image_id']%>">
              <img src="public/uploads/product/<%$img['product_id']%>/<%$img['image']%>" class="img-thumbnail" width="120" style="border-radius: 0.5rem;">
              
              <span class="remove-image-btn" 
                    data-id="<%$img['product_image_id']%>" 
                    data-filename="<%$img['image']%>"
                    data-product-id="<%$img['product_id']%>"
                    style="position:absolute; top:-10px; right:-8px; background:#dc3545; color:#fff; border-radius:50%; padding:2px 6px; font-size:12px; cursor:pointer;"
                    title="Remove Image">
                ✖
              </span>
            </div>
            <%/foreach%>
          <%/if%>
        </div>
        

          <div class="col-md-12 mt-2">
            <label for="url" class="form-label fs-6">Description<span class="text-danger ms-1">*</span></label>
            <textarea class="form-control required-input" id="description" name="description" placeholder="Enter Description" rows="4"><%if isset($products[0].description)%><%$products[0].description %><%/if %></textarea>

          </div>
        
      
      
        <div class="mt-3">
        <input type="hidden"  id="mode"  value="<%if isset($products)%>Update<%else%>Add<%/if%>">
          
        <input type="hidden"  id="product_id" name="product_id" value="<%if isset($products) %><%$products[0].product_id%><%/if%>">
          <button type="submit" class="btn btn-primary">Submit</button>
        </div>
      </form>
         
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
    </script>
      <link rel="stylesheet" href="<%$base_url%>public/plugin/editor/editor.css">
    <!-- <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <script src="<%$base_url%>public/plugin/editor/editor.js"></script>
   
    <script src="<%$base_url%>public/js/admin_panel/add_product.js"></script>
