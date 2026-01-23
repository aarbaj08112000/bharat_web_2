

 <!-- Fancybox CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.css" />

<!-- Fancybox JS -->
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui/dist/fancybox.umd.js"></script>

  

<style>
   .gallery-title {
          text-align: center;
          margin-bottom: 20px;
      }
        /* Image & Video Styling */
        .gallery-item img, .gallery-item video {
            width: 100%;
            height: 250px;
            margin: 7px;
            border-radius: 8px;
            transition: transform 0.3s ease-in-out;
            cursor: pointer;
        }
        .gallery-item img:hover, .gallery-item video:hover {
            transform: scale(1.05);
        }
 
</style>

  <div class="page-section pt-0">
    <div class="container">
       <!-- <h2 class="gallery-title title_text">Image Gallery</h2> -->
        <h2 class="title-section text-center title_text">Image Gallery</h2>
        <div class="divider" style=" margin: 20px auto;"></div>
        <p class="text-center">Explore our diverse range of personalized products <br> from premium ID cards and branded lanyards to eye-catching medals, nameplates, and keychains.</p>
        <div class="row popup-gallery">
        <%if $image|@count > 0 %>
        <%assign var='i' value= 1 %>
        <%foreach from=$image item=u %>
        <div class="col-md-4 col-sm-6 gallery-item mb-4">
            <a 
                href="public/uploads/gallary/<%$u['image_Video'] %>" 
                data-fancybox="gallery" 
                data-caption="Image: <%$u['image_Video'] %>"
            >
                <img 
                src="public/uploads/gallary/<%$u['image_Video'] %>" 
                alt="Gallery image <%$u['image_Video'] %>" 
                class="img-fluid rounded shadow-sm" 
                style="border: 1px solid #ccc; max-height: 250px; object-fit: cover; box-shadow: 5px 5px 10px 2px rgba(0, 0, 0, 0.3) !important;"
                >
            </a>
            </div>

      
          <%assign var='i' value=$i+1 %>
          <%/foreach%>
          <%else%>
          <div class="col-12 text-center">
              <h4>No data available.</h4>
          </div>
      <%/if%> 
        </div>
        <h2 class="gallery-title mt-4 title_text">Video Gallery</h2>
        <div class="divider" style=" margin: 20px auto;"></div>
        <p class="text-center">Watch how we turn raw materials into customized solutions <br> from lanyards and keychains to medals and display-ready nameplates.</p>
        
        <div class="row popup-gallery">
        <%if $video|@count > 0 %>
        <%assign var='i' value= 1 %>
        <%foreach from=$video item=u %>
        <div class="col-md-4 col-sm-6 gallery-item mb-4">
            <a
                href="public/uploads/gallary/<%$u['image_Video'] %>"
                data-fancybox
                data-caption="Video Preview"
                data-type="video"
            >
                <video 
                width="100%" 
                height="250" 
                muted 
                style="border: 1px solid #ccc; object-fit: cover; border-radius: 6px;box-shadow: 5px 5px 10px 2px rgba(0, 0, 0, 0.3) !important;"
                >
                <source src="public/uploads/gallary/<%$u.image_Video %>" type="video/mp4" />
                Your browser does not support the video tag.
                </video>
            </a>
            </div>

      
          <%assign var='i' value=$i+1 %>
          <%/foreach%>
           <%else%>
          <div class="col-12 text-center">
              <h4>No data available.</h4>
          </div>
      <%/if%>
            
        </div>

    </div>
    
  </div>
  <script>
  $(document).ready(function () {
    // When Fancybox is opened
    Fancybox.bind('[data-fancybox]', {
      on: {
        init: (fancybox) => {
          $('.navbar.sticky').attr('style', 'z-index: 0 !important');
        },
        destroy: (fancybox) => {
          $('.navbar.sticky').attr('style', 'z-index: 1080 !important');
        }
      }
    });
  });
</script>



 
