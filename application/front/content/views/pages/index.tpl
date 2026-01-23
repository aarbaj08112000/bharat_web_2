<style>
   .flip-card {
            background-color: transparent;
            width: 100%;
            height: 300px;
            perspective: 1000px;
        }

        .flip-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            text-align: center;
            transition: transform 0.6s;
            transform-style: preserve-3d;
        }

        .flip-card:hover .flip-card-inner {
            transform: rotateY(180deg);
        }

        .flip-card-front, .flip-card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .flip-card-front {
            background: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 10px;
        }

        .flip-card-front img {
            width: 100%;
            height: 70%;
            object-fit: cover;
            border-radius: 10px 10px 0 0;
        }

        .flip-card-front h5 {
            margin-top: 10px;
            font-size: 18px;
        }

        .flip-card-back {
            /* background: #007bff; */
            background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            transform: rotateY(180deg);
            padding: 15px;
        }
        .faq-section {
            /* background-color: #f8f9fa; */
            padding: 50px 0;
        }
        .faq-header {
            font-size: 28px;
            font-weight: bold;
            text-align: center;
            margin-bottom: 30px;
        }
        .card-header {
            /* background-color: #007bff; */
            background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
            color: white;
            padding: 0px;
        }
        .btn-link {
            color: white;
            text-decoration: none;
            font-size: 18px;
        }
        .btn-link:hover {
            text-decoration: none;
            color: #f8f9fa;
        }
        .btn:focus, .btn.focus {
    outline: none !important;
    box-shadow: none !important;
}
.btn-link:focus, .btn-link.focus {
    text-decoration: none;
}


.review-section {
      padding: 60px 0;
    }

    .review-card {
      background: #fff;
      border-radius: 12px;
      padding: 20px;
      margin-bottom: 20px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
    }

    .review-card img {
      border: 2px solid #007bff;
    }

    .review-card .text-warning {
      font-size: 18px;
    }

    .scroll-area {
      max-height: 500px;
      overflow-y: auto;
      padding-right: 10px;
    }

    .form-section {
      background: #fff;
      border-radius: 12px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
      padding: 30px;
    }

    .form-control {
      border-radius: 8px;
    }

    .btn-primary {
      background-color: #007bff;
      border: none;
      border-radius: 8px;
    }

    @media (max-width: 768px) {
      .scroll-area {
        max-height: none;
      }
    }

    /* For modern browsers (Chrome, Edge, Safari) */
.review-scroll::-webkit-scrollbar {
  width: 8px;
}

.review-scroll::-webkit-scrollbar-track {
  background: #f1f1f1; 
}

.review-scroll::-webkit-scrollbar-thumb {
  background-color: #add8e6; /* Light Blue */
  border-radius: 10px;
}

/* For Firefox */
.review-scroll {
  scrollbar-width: thin;
  scrollbar-color: #add8e6 #f1f1f1;
}

</style>


  <div class="page-section pb-0">
    <div class="container">
      <div class="row">
        <div class="col-lg-3">
          <div class="card-service wow fadeInUp">
            <div class="header">
              <img src="./public/assets_front/img/services/graduation-hat.png" alt="" width="75">
            </div>
            <div class="body">
              <h5 class="text-secondary">School/College ID Cards</h5>
              <p>Custom-designed, durable ID cards with security features like barcodes, QR codes, and RFID for easy identification and access.</p>
              <!-- <a href="service.html" class="btn btn-primary">Read More</a> -->
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="card-service wow fadeInUp">
            <div class="header">
              <img src="./public/assets_front/img/services/worker.png" alt="" width="75" >
            </div>
            <div class="body">
              <h5 class="text-secondary">Employee & Corporate ID Cards</h5>
              <p>Professionally branded ID cards with security enhancements such as holograms, smart chips, and access control integration.</p>
              <!-- <a href="service.html" class="btn btn-primary">Read More</a> -->
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="card-service wow fadeInUp">
            <div class="header">
              <img src="./public/assets_front/img/services/smart-id.png" alt="" width="75">
            </div>
            <div class="body">
              <h5 class="text-secondary">Smart ID Cards & RFID Solutions</h5>
              <p>Advanced contactless ID cards with RFID technology for secure attendance tracking, payments, and authentication.</p>
              <!-- <a href="service.html" class="btn btn-primary">Read More</a> -->
            </div>
          </div>
        </div>
        <div class="col-lg-3">
          <div class="card-service wow fadeInUp">
            <div class="header">
              <img src="./public/assets_front/img/services/lanyard.png" alt="" width="75">
            </div>
            <div class="body">
              <h5 class="text-secondary">Lanyards & <br>Accessories</h5>
              <p>Custom-printed lanyards, <br>card holders, and badge reels for convenient and professional ID card management.</p>
              <!-- <a href="service.html" class="btn btn-primary">Read More</a> -->
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section mt-0 pt-0" id="about">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-lg-6 py-3 wow fadeInUp">
          <span class="subhead">About us</span>
          <!-- <h2 class="title-section">The number #1 SEO Service Company</h2> -->
          <div class="divider"></div>

          <p>At Bharat ID Solution, we are committed to providing secure, durable, and professional ID cards for schools, colleges, universities, businesses, and organizations. Our ID cards are designed with advanced security features, high-quality printing, and customizable options to meet the specific needs of our clients.</p>
          <!-- <p>At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.</p> -->
          <!-- <a href="about.html" class="btn btn-primary mt-3">Read More</a> -->
        </div>
        <div class="col-lg-6 py-3 wow fadeInRight">
          <div class="img-fluid py-3 text-center">
          <img src="./public/assets_front/img/about_us.jpeg" class="about_us_img" alt="" height="500">
          </div>
        </div>
      </div>
    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section bg-light">
    <div class="container">
      <div class="text-center wow fadeInUp">
        <div class="subhead">Our services</div>
        <h2 class="title-section">Comprehensive solutions for custom ID cards, accessories, lanyards, badges, name plates, medals, and raw materials – crafted with quality and precision.</h2>
        <div class="divider mx-auto"></div>
      </div>

        <div class="row">
          <div class="col-sm-6 col-lg-4 col-xl-3 py-3 wow zoomIn">
            <div class="features">
              <div class="header mb-3">
                <span class="">🪪</span>
              </div>
              <h5>ID Card</h5>
              <p>
              Durable and professional ID Cards in PVC, Acrylic, MDF, and Executive styles – featuring laser cutting and premium finishing options.</p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 col-xl-3 py-3 wow zoomIn">
            <div class="features">
              <div class="header mb-3">
                <span class="">🧵</span>
              </div>
              <h5>Lanyard</h5>
              <p>
              Vibrant multicolour satin lanyards available in 12mm, 16mm, and 20mm widths, ideal for stylish and durable ID card wear.</p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 col-xl-3 py-3 wow zoomIn">
            <div class="features">
              <div class="header mb-3">
                <span class="">🧰</span>
              </div>
              <h5>Raw Material</h5>
              <p>Wide range of high-quality ID card accessories including holders, hooks, clips, and yoyo reels, perfect for professional badge assembly.</p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 col-xl-3 py-3 wow zoomIn">
            <div class="features">
              <div class="header mb-3">
                <span class="">🏷️</span>
              </div>
              <h5>Name Plate</h5>
              <p>Premium Name Plates for doors, tables, and offices, available in Acrylic, MDF, and Metal for a professional look.</p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 col-xl-3 py-3 wow zoomIn">
            <div class="features">
              <div class="header mb-3">
                <span class="">🎖️</span>
              </div>
              <h5>Badge</h5>
              <p>Customizable Badges in Button, Acrylic, and MDF styles—ideal for events, branding, and personal use.</p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 col-xl-3 py-3 wow zoomIn">
            <div class="features">
              <div class="header mb-3">
                <span class="">🏅</span>
              </div>
              <h5>Medal</h5>
              <p>Elegant and durable Medals in Metal, Acrylic, and MDF, perfect for awards, achievements, and competitions.</p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 col-xl-3 py-3 wow zoomIn">
            <div class="features">
              <div class="header mb-3">
                <span class="">🖼️</span>
              </div>
              <h5>Group Photo</h5>
              <p>Capture memories with Group Photo prints on MDF, Acrylic, and Acrylic Slot for a premium display.</p>
            </div>
          </div>
          <div class="col-sm-6 col-lg-4 col-xl-3 py-3 wow zoomIn">
            <div class="features">
              <div class="header mb-3">
                <span class="">🔑</span>
              </div>
              <h5>Key Chain</h5>
              <p>Premium keychains available in Acrylic and MDF with high-quality photo printing.</p>
            </div>
          </div>
        </div>

    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <div class="page-section banner-seo-check">
    <div class="wrap bg-image" style="background-image: url(./public/assets_front/img/bg_pattern.svg);">
      <div class="container text-center">
        <div class="row justify-content-center wow fadeInUp">
          <div class="col-lg-12">
            <h2 class="mb-4">Our Commitment to Quality</h2>
            <p>At Bharat ID Solution, we are committed to delivering premium ID card printing using high-quality materials and advanced printing techniques to ensure clear, durable, and professional results. Our ID cards come with secure and reliable features such as barcodes, QR codes, RFID, and holograms for enhanced protection. We offer customizable designs, allowing institutions and companies to personalize their ID cards with logos, branding, and unique details. Designed for durability and longevity, our PVC, plastic, and laminated ID cards withstand daily wear and tear. With our fast and efficient service, we ensure quick turnaround times to meet urgent requirements without compromising on quality. We also provide bulk order solutions and special discounts for schools, colleges, and corporate organizations, making identification solutions more affordable. From ID cards to lanyards, holders, and accessories, we offer a complete identification package to meet all your needs.</p>
            <!-- <form action="#">
              <input type="text" class="form-control" placeholder="E.g google.com">
              <button type="submit" class="btn btn-success">Check Now</button>
            </form> -->
          </div>
        </div>
      </div> <!-- .container -->
    </div> <!-- .wrap -->
  </div> <!-- .page-section -->

  <div class="page-section">
    <div class="container">
      <div class="text-center wow fadeInUp">
        <div class="subhead">Our Offerings</div>
        <!-- <h2 class="title-section">Choose plan the right for you</h2> -->
        <div class="divider mx-auto"></div>
         <div class="row" >
             <div class="col-md-6 ">
            <img src="./public/assets_front/img/offering.png" alt="Description of the image" style="width:auto;height:350px;">


            </div>
             <div class="col-md-6 ">
                 <p style="font-size: 18px;text-align: justify;" >At <b><i> Bharat ID Card</i></b>,we deliver smart, stylish, and functional identity solutions tailored to your needs. Our custom ID cards feature high-quality photo printing, logos, barcodes, and QR codes for enhanced security and branding. We offer premium lanyards, raw materials like PVC sheets and laminates, and group photo printing for schools, offices, and events. Celebrate milestones with custom medals, name plates in acrylic, wood, or metal, and branded key chains perfect for promotions. Every product is fully customizable to reflect your unique identity and elevate your brand.<br><br>
With quality craftsmanship and attention to detail, we ensure each piece represents you at your best.<br><br>
<b><i>Partner with us to leave a lasting impression — one identity at a time.</i></b></p>
            </div>
        </div>
        
      </div>

      <div class="row" style="display:none">
        <div class="col-md-4 d-flex justify-content-center">
            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        <img src="https://img.freepik.com/free-vector/realistic-neon-lights-background_23-2148907367.jpg" alt="ID Card">
                        <h5>Student ID Cards</h5>
                    </div>
                    <div class="flip-card-back">
                        <p>Custom-designed student ID cards with secure features like QR codes and RFID.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex justify-content-center">
            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        <img src="https://img.freepik.com/free-vector/realistic-neon-lights-background_23-2148907367.jpg" alt="ID Card">
                        <h5>Employee ID Cards</h5>
                    </div>
                    <div class="flip-card-back">
                        <p>Professional ID cards for businesses with branding and access control integration.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-4 d-flex justify-content-center">
            <div class="flip-card">
                <div class="flip-card-inner">
                    <div class="flip-card-front">
                        <img src="https://img.freepik.com/free-vector/realistic-neon-lights-background_23-2148907367.jpg" alt="ID Card">
                        <h5>Smart ID Cards</h5>
                    </div>
                    <div class="flip-card-back">
                        <p>RFID-enabled smart ID cards for secure authentication and attendance tracking.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
      <!-- <div class="row mt-5">
        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing">
            <div class="header">
              <div class="pricing-type">Basic</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>39<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing marked">
            <div class="header">
              <div class="pricing-type">Standar</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>59<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

        <div class="col-lg-4 py-3 wow zoomIn">
          <div class="card-pricing">
            <div class="header">
              <div class="pricing-type">Professional</div>
              <div class="price">
                <span class="dollar">$</span>
                <h1>99<span class="suffix">.99</span></h1>
              </div>
              <h5>Per Month</h5>
            </div>
            <div class="body">
              <p>25 Analytics <span class="suffix">Campaign</span></p>
              <p>1,300 Change <span class="suffix">Keywords</span></p>
              <p>Social Media <span class="suffix">Reviews</span></p>
              <p>1 Free <span class="suffix">Optimization</span></p>
              <p>24/7 <span class="suffix">Support</span></p>
            </div>
            <div class="footer">
              <a href="#" class="btn btn-pricing btn-block">Subscribe</a>
            </div>
          </div>
        </div>

      </div> -->

    </div> <!-- .container -->
  </div> <!-- .page-section -->

  <!-- Banner info -->
  <div class="page-section banner-info" style="background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);">
    <div class="wrap bg-image" style="background-image: url(./public/assets_front/img/bg_pattern.svg);">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 py-3 pr-lg-5 wow fadeInUp">
            <h2 class="title-section">Why Choose Bharat ID Solution</h2>
            <div class="divider"></div>
            <!-- <p>We're an experienced and talented team of passionate consultants who breathe with search engine marketing.</p> -->
      
            <ul class="theme-list theme-list-light text-white">
              <li>
                <div class="h5">Premium Quality Printing</div>
                <p>High-resolution prints with vibrant colors.</p>
              </li>
              <li>
                <div class="h5">Bulk Order Support</div>
                <p>Discounts for large-scale orders.</p>
              </li>
              <li>
                <div class="h5">Quick & Reliable Delivery</div>
                <p>Fast turnaround time for all projects.</p>
              </li>
              <li>
                <div class="h5">Affordable Pricing</div>
                <p>Cost-effective solutions without compromising quality.</p>
              </li>
              <li>
                <div class="h5">Secure Data Handling</div>
                <p>Confidential and safe processing of client information.</p>
              </li>
            </ul>
          </div>
          <div class="col-lg-6 py-3 wow fadeInRight">
            <div class="img-fluid text-center">
              <img src="./public/assets_front/img/banner_image_2.svg" alt="">
            </div>
          </div>
        </div>
      </div>
    </div> <!-- .wrap -->
  </div> <!-- .page-section -->


  <div class="container faq-section">
    <h2 class="faq-header title_text">Frequently Asked Questions</h2>
    
    <div id="faqAccordion">
        <div class="card mb-3">
            <div class="card-header" id="faqHeading1">
                <h5 class="mb-0">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#faq1" aria-expanded="true" aria-controls="faq1">
                        🔹 What types of ID cards do you provide?
                    </button>
                </h5>
            </div>
            <div id="faq1" class="collapse show" aria-labelledby="faqHeading1" data-parent="#faqAccordion">
                <div class="card-body">
                    We offer PVC ID cards, employee ID cards, school & college ID cards, RFID & smart cards, and customized ID solutions.
                </div>
            </div>
        </div>

        <div class="card mb-3">
            <div class="card-header" id="faqHeading2">
                <h5 class="mb-0">
                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#faq2" aria-expanded="false" aria-controls="faq2">
                        🔹 Can we order ID cards in bulk?
                    </button>
                </h5>
            </div>
            <div id="faq2" class="collapse" aria-labelledby="faqHeading2" data-parent="#faqAccordion">
                <div class="card-body">
                    Yes! We offer special discounts on bulk orders for schools, colleges, and corporate companies.
                </div>
            </div>
        </div>

        <div class="card mb-3">
            <div class="card-header" id="faqHeading3">
                <h5 class="mb-0">
                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#faq3" aria-expanded="false" aria-controls="faq3">
                        🔹 Do you provide RFID-enabled ID cards?
                    </button>
                </h5>
            </div>
            <div id="faq3" class="collapse" aria-labelledby="faqHeading3" data-parent="#faqAccordion">
                <div class="card-body">
                    Yes, we provide smart ID cards with RFID and barcode integration for access control and authentication.
                </div>
            </div>
        </div>

        <div class="card mb-3">
            <div class="card-header" id="faqHeading4">
                <h5 class="mb-0">
                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#faq4" aria-expanded="false" aria-controls="faq4">
                        🔹 How long does it take to process an order?
                    </button>
                </h5>
            </div>
            <div id="faq4" class="collapse" aria-labelledby="faqHeading4" data-parent="#faqAccordion">
                <div class="card-body">
                    Orders are processed within 3-5 business days, depending on the quantity and customization requirements.
                </div>
            </div>
        </div>

        <div class="card mb-3">
            <div class="card-header" id="faqHeading5">
                <h5 class="mb-0">
                    <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#faq5" aria-expanded="false" aria-controls="faq5">
                        🔹 Can we customize our ID cards with branding and logos?
                    </button>
                </h5>
            </div>
            <div id="faq5" class="collapse" aria-labelledby="faqHeading5" data-parent="#faqAccordion">
                <div class="card-body">
                    Absolutely! We offer complete customization, including logos, branding, colors, and security features.
                </div>
            </div>
        </div>
    </div>
</div>

<section class="review-section" style="background: aliceblue;">
  <div class="container">
    <h2 class="text-center">Client Testimonials & Feedback</h2>
    <div class="divider" style=" margin: 20px auto;"></div>
    <p class="text-center">Discover what our happy clients are saying about their experience with Bharat ID Solution.<br>
    Real feedback that showcases our dedication to quality and customer satisfaction.</p>
    <div class="row g-4">
      
     

      <!-- Add Review Form -->
      <div class="col-md-6 mb-2">
        <div class="form-section">
          <h5 class="mb-4">Add Your Review</h5>
          <form id="reviewform" action="javascript:void(0)" method="post">
            <div class="mb-3">
              <label for="name" class="form-label">Full Name</label>
              <input type="text" id="name" name="name" class="form-control" placeholder="Enter your name" required>
            </div>
            
            <div class="mb-3">
              <label for="review" class="form-label">Your Feedback</label>
              <textarea id="review" name="review" class="form-control" rows="4" placeholder="Share your experience..." required></textarea>
            </div>
            
            <div class="mb-3">
              <label for="rating" class="form-label">Rating</label>
              <select id="rating" name="rating" class="form-select form-control" required>
                <option selected disabled value="">Choose rating</option>
                <option value="5">★★★★★</option>
                <option value="4">★★★★☆</option>
                <option value="3">★★★☆☆</option>
                <option value="2">★★☆☆☆</option>
                <option value="1">★☆☆☆☆</option>
              </select>
            </div>
            
            <button type="submit" class="btn btn-primary">Submit Review</button>
          </form>

        </div>
      </div>
       <!-- Scrollable Review List -->
       <div class="col-md-6">
  <div class="scroll-area pe-2 review-scroll" style=" overflow-y: auto;">
    
  <%if $rating_review|@count > 0 %>
  <%foreach from=$rating_review item=u %>
    <div class="review-card d-flex align-items-start">
      <div>
        <h6 class="mb-0"><%$u['name']|capitalize %></h6>
        <br>
        <p><%$u['review'] %></p>
        <div class="text-warning">
          <%section name=star loop=$u['rating']%>★<%/section%>
        </div>
      </div>
    </div>
  <%/foreach%>
<%else%>
  <p>No reviews found.</p>
<%/if%>

   

  </div>
</div>


    </div>
  </div>
</section>


<script>
$(document).ready(function () {
  $("#reviewform").validate({
    rules: {
      name: {
        required: true,
        minlength: 2
      },
      review: {
        required: true,
        minlength: 10
      },
      rating: {
        required: true
      }
    },
    messages: {
      name: {
        required: "Please enter your name",
        minlength: "Your name must be at least 2 characters long"
      },
      review: {
        required: "Please enter your feedback",
        minlength: "Feedback must be at least 10 characters long"
      },
      rating: {
        required: "Please select a rating"
      }
    },
    submitHandler: function(form) {
      var formData = $("#reviewform").serialize();

        $.ajax({
          url: "save_review_data", // Replace with your PHP backend file
          type: "POST",
          data: formData,
          success: function (response) {
            response = JSON.parse(response);
             if (response.success == 1) {
              toastr.success(response.msg);
            // $("#reviewform")[0].reset();
            setTimeout(function() {
              location.reload();
            }, 3000);

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

