<footer class="page-footer bg-image" style="background-image: url(./public/assets_front/img/world_pattern.svg);">
  <div class="container">
    <div class="row mb-5">
      <div class="col-lg-5 py-3">
        <h3>Bharat ID Cards</h3>
        <p>Bharat ID Solution delivers secure, high-quality ID cards tailored for schools, colleges, businesses, and organizations.With advanced security features and customizable designs, we ensure professionalism and durability in every card.
          </p>

        <div class="social-media-button">
          <a href="#"><span class="mai-logo-facebook-f"></span></a>
          <a href="#"><span class="mai-logo-twitter"></span></a>
          <a href="#"><span class="mai-logo-google-plus-g"></span></a>
          <a href="#"><span class="mai-logo-instagram"></span></a>
          <a href="#"><span class="mai-logo-youtube"></span></a>
          <a href="https://wa.me/919806271078" target="_blank">
            <span class="mai-logo-whatsapp"></span>
          </a>
        </div>
      </div>
      <div class="col-lg-3 py-3">
        <h5>Company</h5>
        <ul class="footer-menu">
          <li><a href="about.html">About Us</a></li>
          <li><a href="service.html">Service</a></li>
          <li><a href="product.html">Product</a></li>
          <li><a href="tnc.html">Terms of Service</a></li>
          <li><a href="download_product_catalog">Product Catalog</a></li>
          <li><a href="contact.html">Help & Support</a></li>
        </ul>
      </div>
      <div class="col-lg-4 py-3">
        <h5>Contact Us</h5>
        <p>Behind union bank, Inside Happy Home Gali, Mohan Talkies Road, Katni,Pin code - 483501, Madhya Pradesh</p>
        <p >+91 98062 71078</p>
        <p >bharatidcard.katni@gmail.com</p>
      </div>
    
    </div>

    <p class="text-center" id="copyright">Copyright &copy; <%$smarty.now|date_format:"%Y"%>  <a href="https://bharatidcard.com/" target="_blank">Bharat ID Cards</a></p>
  </div>
</footer>
<script src="./public/assets_front/js/jquery-3.5.1.min.js"></script>

<script src="./public/assets_front/js/bootstrap.bundle.min.js"></script>

<script src="./public/assets_front/js/google-maps.js"></script>

<script src="./public/assets_front/vendor/wow/wow.min.js"></script>

<script src="./public/assets_front/js/theme.js"></script>


<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>


<script>
    function playVideo() {
    document.getElementById('videoModal').style.display = 'block';
    document.getElementById('videoPlayer').play();
     $('.navbar.sticky').attr('style', 'z-index: 0 !important');
  }

  function closeVideo() {
    const player = document.getElementById('videoPlayer');
    player.pause();
    player.currentTime = 0;
    document.getElementById('videoModal').style.display = 'none';
     $('.navbar.sticky').attr('style', 'z-index: 1080 !important');
  }
  $(document).ready(function () {
    // Validate form
    $(".owl-carousel").owlCarousel({
      items: 1,
      loop: true,
      margin: 10,
      nav: true,
      dots: true,
      autoplay: true,
      autoplayTimeout: 3000,
      autoplayHoverPause: true
    });
    $('#videoModal').hide(); // Force hide at start

      $('#showVideoBtn').click(function () {
        $('#videoModal').fadeIn();
        $('#popupVideo')[0].play();
      });

      $('#closeVideoBtn').click(function () {
        $('#popupVideo')[0].pause();
        $('#videoModal').fadeOut();
      });

    $("#visitorForm").validate({
      rules: {
        name: "required",
        city: "required",
        phone: {
          required: true,
          digits: true,
          minlength: 10,
        },
        email: {
          required: true,
          email: true
        },
        product: "required",
        quantity: {
          required: true,
          digits: true,
          min: 1
        }
      },
      messages: {
        name: "Please enter your name",
        city: "Please enter your city",
        phone: {
          required: "Please enter your phone number",
          digits: "Only digits allowed",
          minlength: "At least 10 digits",
        },
        email: "Please enter a valid email address",
        product: "Please enter product name",
        quantity: {
          required: "Enter quantity",
          digits: "Only digits allowed",
          min: "Minimum 1 item required"
        }
      },
      submitHandler: function (form) {
        // Prepare data
        const formData = {
          name: $("#name").val(),
          city: $("#city").val(),
          phone: $("#phone").val(),
          email: $("#email").val(),
          product: $("#product").val(),
          quantity: $("#quantity").val()
        };

        // Send via AJAX
        $.ajax({
          url: "save_visitor_data", // change this to your server script
          type: "POST",
          data: formData,
          success: function (response) {
              response = JSON.parse(response);
             if (response.success == 1) {
             window.location.href = "download_product_catalog";
              toastr.success(response.msg);
              setTimeout(function () {
                $("#visitorForm")[0].reset();
                $('#exampleModal').modal('hide');
              }, 1000);
              
              }
           
          },
          error: function (xhr, status, error) {
            alert("Submission failed: " + error);
          }
        });
      }
    });
  });
</script>


</body>
</html>