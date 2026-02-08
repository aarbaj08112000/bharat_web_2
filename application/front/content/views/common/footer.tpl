  <!-- Footer -->
  <footer class="bg-slate-900 pt-16 pb-8 border-t border-slate-800 text-gray-400 relative overflow-hidden">
    <!-- Decorative Background Pattern -->
    <div class="absolute inset-0 z-0 opacity-10 pointer-events-none">
        <img src="<%base_url()%>public/assets_front/img/dark_footer_img.svg" alt="" class="w-full h-full object-cover">
    </div>
    <div class="container mx-auto px-6 relative z-10">
        <div class="grid md:grid-cols-4 gap-12 mb-12">
            <div class="md:col-span-2">
                <a href="index.html" class="flex items-center gap-2 mb-4">
                    <span class="text-2xl font-bold text-white">Bharat ID Card</span>
                </a>
                <p class="max-w-sm leading-relaxed mb-6">
                    Bharat ID Solution delivers secure, high-quality ID cards tailored for schools, colleges,
                    businesses, and organizations. With advanced security features and customizable designs, we
                    ensure professionalism and durability in every card.
                </p>
                <div class="flex space-x-4">
                    <a href="#" class="w-10 h-10 rounded-full bg-slate-800 flex items-center justify-center hover:bg-blue-600 hover:text-white transition">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a href="#" class="w-10 h-10 rounded-full bg-slate-800 flex items-center justify-center hover:bg-blue-400 hover:text-white transition">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a href="#" class="w-10 h-10 rounded-full bg-slate-800 flex items-center justify-center hover:bg-pink-600 hover:text-white transition">
                        <i class="fab fa-instagram"></i>
                    </a>
                    <a href="https://wa.me/919806271078" target="_blank" class="w-10 h-10 rounded-full bg-slate-800 flex items-center justify-center hover:bg-green-500 hover:text-white transition">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                </div>
            </div>
            
            <div>
                <h4 class="text-lg font-bold text-white mb-6">Company</h4>
                <ul class="space-y-3">
                    <li><a href="about.html" class="hover:text-blue-400 transition flex items-center gap-2"><i class="fas fa-chevron-right text-xs"></i> About Us</a></li>
                    <li><a href="service.html" class="hover:text-blue-400 transition flex items-center gap-2"><i class="fas fa-chevron-right text-xs"></i> Services</a></li>
                    <li><a href="product.html" class="hover:text-blue-400 transition flex items-center gap-2"><i class="fas fa-chevron-right text-xs"></i> Products</a></li>
                    <li><a href="gallery.html" class="hover:text-blue-400 transition flex items-center gap-2"><i class="fas fa-chevron-right text-xs"></i> Gallery</a></li>
                    <li><a href="tnc.html" class="hover:text-blue-400 transition flex items-center gap-2"><i class="fas fa-chevron-right text-xs"></i> Terms & Conditions</a></li>
                    <li><a href="privacy-policy.html" class="hover:text-blue-400 transition flex items-center gap-2"><i class="fas fa-chevron-right text-xs"></i> Privacy Policy</a></li>
                    <li><a href="contact.html" class="hover:text-blue-400 transition flex items-center gap-2"><i class="fas fa-chevron-right text-xs"></i> Contact Us</a></li>
                </ul>
            </div>

            <div>
                <h4 class="text-lg font-bold text-white mb-6">Contact Info</h4>
                <div class="space-y-4">
                    <div class="flex items-start gap-3">
                        <i class="fas fa-map-marker-alt mt-1 text-blue-500"></i>
                        <p>Behind union bank, Inside Happy Home Gali, Mohan Talkies Road, Katni - 483501, MP</p>
                    </div>
                    <div class="flex items-center gap-3">
                        <i class="fas fa-phone-alt text-blue-500"></i>
                        <p>+91 98062 71078</p>
                    </div>
                    <div class="flex items-center gap-3">
                        <i class="fas fa-envelope text-blue-500"></i>
                        <p>bharatidcard.katni@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="border-t border-slate-800 pt-8 flex flex-col md:flex-row justify-between items-center text-sm">
            <p>&copy; <%$smarty.now|date_format:"%Y"%> Bharat ID Cards. All rights reserved.</p>
            <div class="flex space-x-6 mt-4 md:mt-0">
                <a href="privacy-policy.html" class="hover:text-white transition">Privacy Policy</a>
                <a href="tnc.html" class="hover:text-white transition">Terms of Service</a>
            </div>
        </div>
    </div>
  </footer>

  <!-- AOS JS -->
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
  <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
  <!-- JQuery Validation -->
  <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

  <script>
    AOS.init({
        duration: 800,
        once: true,
        offset: 100
    });

    $(document).ready(function () {
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
                city: "Enter city",
                phone: "Valid phone required",
                email: "Valid email required",
                product: "Select logic",
                quantity: "Qty required"
            },
            submitHandler: function (form) {
                var submitBtn = $(form).find('button[type="submit"]');
                var originalBtnText = submitBtn.html();
                
                submitBtn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-2"></i> Processing...');

                const formData = {
// ... existing formData logic ...
                };

                $.ajax({
                    url: "save_visitor_data",
                    type: "POST",
                    data: formData,
                    success: function (response) {
                        try {
                            response = JSON.parse(response);
                            if (response.success == 1) {
                                toastr.success(response.msg);
                                setTimeout(function () {
                                    $("#visitorForm")[0].reset();
                                    submitBtn.prop('disabled', false).html(originalBtnText);
                                    const modalOverlay = document.getElementById('visitorModalOverlay');
                                    if(modalOverlay) modalOverlay.classList.add('hidden');
                                    window.location.href = "download_product_catalog";
                                }, 1000);
                            } else {
                                submitBtn.prop('disabled', false).html(originalBtnText);
                                toastr.error("Submission failed");
                            }
                        } catch(e) {
                            submitBtn.prop('disabled', false).html(originalBtnText);
                            console.error(e);
                        }
                    },
                    error: function (xhr, status, error) {
                        submitBtn.prop('disabled', false).html(originalBtnText);
                        toastr.error("Error: " + error);
                    }
                });
            }
        });
    });
  </script>
</body>
</html>