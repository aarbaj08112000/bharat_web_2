<style>
 .contact-card {
      background: #ffffff;
      border-radius: 20px;
      padding: 30px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
      transition: transform 0.3s, box-shadow 0.3s;
    }

    .contact-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
    }

    .icon-circle {
      width: 60px;
      height: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: 0 auto 15px;
      border-radius: 50%;
      background-color: #f0f0f0;
      font-size: 28px;
      color: #007bff;
    }

    .title_text {
      font-size: 20px;
      font-weight: 600;
      margin-bottom: 10px;
    }

    .text-lg {
      font-size: 1.1rem;
    }

    a.text-secondary:hover {
      color: #007bff !important;
    }
    .shadow-map {
  box-shadow: 0 6px 25px rgba(0, 0, 0, 0.15);
  border-radius: 10px;
  overflow: hidden;
}

#contactForm {
    background: #ffffff;
    padding: 30px;
    border-radius: 16px;
    box-shadow: 0 8px 24px rgba(0, 0, 0, 0.1);
  }

  /* Slightly rounded input fields */
  #contactForm .form-control {
    border-radius: 8px;
    border: 1px solid #ced4da;
    transition: border-color 0.3s, box-shadow 0.3s;
  }

  /* Input hover & focus effect */
  #contactForm .form-control:focus {
    border-color: #007bff;
    box-shadow: 0 0 0 0.15rem rgba(0, 123, 255, 0.25);
  }

  /* Label spacing for clean look */
  #contactForm label {
    font-weight: 500;
    margin-bottom: 6px;
  }

  /* Submit button enhancement */
  #contactForm .btn-primary {
    padding: 10px 24px;
    font-weight: 600;
    border-radius: 8px;
    box-shadow: 0 4px 14px rgba(0, 123, 255, 0.3);
    transition: transform 0.2s, box-shadow 0.2s;
  }

  #contactForm .btn-primary:hover {
    transform: translateY(-2px);
    box-shadow: 0 6px 20px rgba(0, 123, 255, 0.4);
  }

</style>

  <div class="page-section p-0">
  <div class="container-fluid mb-3">
  <div class="row text-center g-4">
    <!-- Address Card -->
    <div class="col-lg-4 col-md-6 mb-2">
      <div class="contact-card h-100">
        <div class="icon-circle"><i class="mai mai-pin"></i></div>
        <div class="title_text">Address</div>
        <p class="text-secondary mb-0">
          Behind Union Bank, Inside Happy Home Gali,<br>
          Mohan Talkies Road, Katni,<br>
          Pin code - 483501, Madhya Pradesh
        </p>
      </div>
    </div>

    <!-- Phone Card -->
    <div class="col-lg-4 col-md-6 mb-2">
      <div class="contact-card h-100">
        <div class="icon-circle"><i class="mai mai-call"></i></div>
        <div class="title_text">Phone</div>
        <p class="mb-0">
          <a href="tel:+919806271078" class="text-secondary">+91 98062 71078</a>
        </p>
      </div>
    </div>

    <!-- Email Card -->
    <div class="col-lg-4 col-md-12 mb-2">
      <div class="contact-card h-100">
        <div class="icon-circle"><i class="mai mai-mail"></i></div>
        <div class="title_text">Email Address</div>
        <p class="mb-0">
          <a href="mailto:bharatidcard.katni@gmail.com" class="text-secondary">bharatidcard.katni@gmail.com</a>
        </p>
      </div>
    </div>
  </div>
</div>
</div>
<div class="page-section" style="background: aliceblue;padding-top:15px">

    <div class="container-fluid mt-4" >
    <h2 class="title-section text-center">Get in touch</h2>
    <div class="divider" style=" margin: 20px auto;"></div>
    <p class="text-center">Have a question or comment? We're here to help. Fill out the form below to contact us.    </p>
      <div class="row">
        <div class="col-lg-6 mb-5 mb-lg-0">
        <form id="contactForm" action="javascript:void(0)" class="contact-form px-lg-5" method="post">
            <!--<h2 class="mb-4 font-weight-medium text-secondary">Get in touch</h2> -->
            <p>Connect with Bharat ID Solution today and let us deliver premium ID cards that represent your identity with perfection.</p>
            <div class="row form-group">
              <div class="col-md-6 mb-3 mb-md-0">
                <label class="text-black" for="fname">First Name</label>
                <input type="text" id="fname" name="first_name" class="form-control">
              </div>
              <div class="col-md-6">
                <label class="text-black" for="lname">Last Name</label>
                <input type="text" id="lname" name="last_name" class="form-control">
              </div>
            </div>
    
            <div class="row form-group">
              <div class="col-md-12">
                <label class="text-black" for="email">Email</label>
                <input type="email" id="email" name="email" class="form-control">
              </div>
            </div>
    
            <div class="row form-group">
    
              <div class="col-md-12">
                <label class="text-black" for="subject">Subject</label>
                <input type="text" id="subject" name="subject" class="form-control">
              </div>
            </div>
    
            <div class="row form-group">
              <div class="col-md-12">
                <label class="text-black" for="message">Message</label>
                <textarea name="message" id="message" name="message"  cols="30" rows="3" class="form-control" placeholder="Write your notes or questions here..."></textarea>
              </div>
            </div>
    
            <div class="row form-group mt-4">
              <div class="col-md-12">
                <input type="submit" value="Send Message" class="btn btn-primary">
              </div>
            </div>
          </form>
        </div>

        <div class="col-lg-6 px-0 pt-3 mt-5">
        <div class="maps-container shadow-map">
          <div id="google-maps">
            <iframe 
              src="https://www.google.com/maps?q=Behind+union+bank,+Inside+Happy+Home+Gali,+Mohan+Talkies+Road,+Katni,+483501,+Madhya+Pradesh&output=embed"
              width="100%" 
              height="452" 
              style="border:0;" 
              allowfullscreen="" 
              loading="lazy" 
              referrerpolicy="no-referrer-when-downgrade">
            </iframe>
          </div>
        </div>
      </div>
      
      </div>
    </div>
  </div>

  <!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- jQuery Validation Plugin -->
<script src="https://cdn.jsdelivr.net/jquery.validation/1.19.5/jquery.validate.min.js"></script>

<!-- Optional: Toastr for success message -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<script>
  $(document).ready(function () {
    $("#contactForm").validate({
      rules: {
        first_name: {
          required: true,
          minlength: 2
        },
        last_name: {
          required: true,
          minlength: 2
        },
        email: {
          required: true,
          email: true
        },
        subject: {
          required: true
        },
        message: {
          required: true,
          minlength: 10
        }
      },
      messages: {
        first_name: {
          required: "Please enter your first name",
          minlength: "First name must be at least 2 characters"
        },
        last_name: {
          required: "Please enter your last name",
          minlength: "Last name must be at least 2 characters"
        },
        email: {
          required: "Please enter your email",
          email: "Please enter a valid email"
        },
        subject: {
          required: "Please enter a subject"
        },
        message: {
          required: "Please enter your message",
          minlength: "Message must be at least 10 characters"
        }
      },
      submitHandler: function (form) {
        // Serialize form data
        var formData = $("#contactForm").serialize();

        $.ajax({
          url: "save_contact_data", // Replace with your PHP backend file
          type: "POST",
          data: formData,
          success: function (response) {
            response = JSON.parse(response);
             if (response.success == 1) {
              toastr.success(response.msg);
            $("#contactForm")[0].reset();
          }
          },
          error: function () {
            toastr.error("There was an error. Please try again.");
          }
        });
      }
    });
  });
</script>

  