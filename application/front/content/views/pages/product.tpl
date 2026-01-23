
<style>
@media (min-width: 992px) {
    .modal-lg, .modal-xl {
        max-width: 950px;
    }
}
</style>
  <div class="page-section py-5">
    <div class="container">
      <div class="row">

        <!-- Card 1 -->
        <%if ($products) %>
          <%assign var='i' value= 1 %>
          <%foreach from=$products item=u %>
            <div class="col-md-4 col-sm-6 mb-4">
              <a href="product_details.html?p=<%$u['product_id'] %>" style="text-decoration: none; color: inherit;">
                <div class="card h-100" style="box-shadow: 5px 5px 10px 2px rgba(0, 0, 0, 0.3); cursor: pointer;">
                  <img class="card-img-top" src="public/uploads/product/<%$u['image']%>" alt="Image 1" height="250" style="object-fit: cover;">
                  <div class="card-body">
                    <h5 class="card-title title_text"><%$u['product_name'] %></h5>
                    <p class="card-text">Category : <b><%$u['category_name'] %></b></p>
        
                    <!-- Optional: Remove this button since whole card is now clickable -->
                    <!-- <a href="product_details.html?p=<%$u['product_id'] %>" class="btn btn-primary btn-sm">View</a> -->
        
                    <!-- Hidden inputs if needed for JS -->
                    <input type="hidden" class="hidden-title" value="<%$u['product_name'] %>">
                    <input type="hidden" class="hidden-category" value="<%$u['category_name'] %>">
                    <input type="hidden" class="hidden-image" value="public/uploads/product/<%$u['image']%>">
                    <input type="hidden" class="hidden-description" value="<%$u['description']|strip_tags %>">
                    <div class="hidden-description-data" style="display: none;"><%$u['description'] %></div>
                  </div>
                </div>
              </a>
            </div>
            <%assign var='i' value=$i+1 %>
          <%/foreach%>
        <%else%>
          <div class="col-12 text-center">
            <h4>No data available.</h4>
          </div>
        <%/if%>


        <!-- Card 2 -->
        <!--<div class="col-md-4 col-sm-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="https://images.pexels.com/photos/1103970/pexels-photo-1103970.jpeg" alt="Image 2" height="250">
            <div class="card-body">
              <h5 class="card-title">Card Title 2</h5>
              <p class="card-text">Short description of item 2.</p>
              <a href="#" class="btn btn-primary btn-sm open-modal"
                 data-title="Card Title 2"
                 data-image="https://images.pexels.com/photos/1103970/pexels-photo-1103970.jpeg"
                 data-description="Full details about item 2 go here.">
                 View Details
              </a>
            </div>
          </div>
        </div>-->

        <!-- Card 3 -->
        <!--<div class="col-md-4 col-sm-6 mb-4">
          <div class="card">
            <img class="card-img-top" src="https://images.pexels.com/photos/210182/pexels-photo-210182.jpeg" alt="Image 3" height="250">
            <div class="card-body">
              <h5 class="card-title">Card Title 3</h5>
              <p class="card-text">Short description of item 3.</p>
              <a href="#" class="btn btn-primary btn-sm open-modal"
                 data-title="Card Title 3"
                 data-image="https://images.pexels.com/photos/210182/pexels-photo-210182.jpeg"
                 data-description="Full details about item 3 go here.">
                 View Details
              </a>
            </div>
          </div>
        </div>-->

      </div>
    </div>
  </div>

  <!-- Modal -->
  <div class="modal fade" id="dynamicModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title title_text" id="modalLabel">Title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>

      <div class="modal-body">
        <div class="row">
          
          <!-- Left Column: Image -->
          <!-- <div class="col-md-6 text-center">
            <img id="modalImage" src="" class="img-fluid mb-3" alt="Product Image">
          </div> -->
          <div class="col-md-6">
              <div class="d-flex">
                <div class="d-flex flex-column me-5">
                    <img src="public/uploads/product/<%$products[0]['image']%>" class="thumbnail mb-2" onclick="changeImage(this)" width="70">
                    <%foreach from=$products_image item=img %>
                    <img src="public/uploads/product/<%$img['product_id']%>/<%$img['image']%>" class="thumbnail mb-2" onclick="changeImage(this)" width="70">
                    <%/foreach%>
                </div>
            
                <!-- Main Image -->
                <img id="modalImage" src="" class="img-fluid product-image ms-3" alt="Product Image" width="300">
            </div>
          </div>

          <!-- Right Column: Details -->
          <div class="col-md-6">
            <h4 id="modalProductName" class="title_text"></h4> <!-- Product Name -->
            <p id="modalcategory" class="mb-2"></p> <!-- Category -->
            <p id="modalDescription"></p> <!-- Description -->
          </div>

        </div>
      </div>

    </div>
  </div>
</div>


  <!-- Script -->
  <script>
    $(document).ready(function () {
        $('.open-modal').click(function (e) {
            e.preventDefault();
            $('.navbar.sticky').attr('style', 'z-index: 0 !important');
            var container = $(this).closest('.card'); // or another shared parent
            var title = container.find('.hidden-title').val();
            var image = container.find('.hidden-image').val();
            var category = container.find('.hidden-category').val();
            var description = container.find('.hidden-description').val();
             var hiddenText = container.find('.hidden-description-data').html();

            $('#modalLabel').text(title);
            $('#modalProductName').text(title);
            $('#modalImage').attr('src', image);
            $('#modalcategory').html("Category: <strong>" + category + "</strong>");
            // $('#modalDescription').text(description);
            $('#modalDescription').html(hiddenText);

            $('#dynamicModal').modal('show');
        });
        $('.close').click(function (e) {
            $('.navbar.sticky').attr('style', 'z-index: 1080 !important');
        });

    });
  </script>

