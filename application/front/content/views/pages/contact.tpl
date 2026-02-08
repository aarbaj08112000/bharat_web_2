<style>
    .error {
        color: red;
    }
</style>
<div class="page-section py-20 bg-gray-50">
    <div class="container mx-auto px-6">
        <div class="grid lg:grid-cols-2 gap-12">
            
            <!-- Contact Info -->
            <div data-aos="fade-right">
                <span class="text-blue-600 font-bold tracking-wider text-sm uppercase mb-2 block">Get In Touch</span>
                <h2 class="text-4xl font-bold text-slate-800 mb-6">Let's Discuss Your Requirements</h2>
                <p class="text-gray-600 text-lg mb-8 leading-relaxed">
                    Have a question about our products or need a quote for a bulk order? Our team is ready to assist you.
                </p>

                <div class="space-y-6">
                    <div class="flex items-start gap-4">
                        <div class="w-12 h-12 bg-white rounded-full flex items-center justify-center text-blue-600 shadow-sm flex-shrink-0">
                            <i class="fas fa-map-marker-alt text-xl"></i>
                        </div>
                        <div>
                            <h4 class="text-lg font-bold text-slate-800 mb-1">Our Location</h4>
                            <p class="text-gray-500">Behind union bank, Inside Happy Home Gali,<br>Mohan Talkies Road, Katni - 483501, MP</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-12 h-12 bg-white rounded-full flex items-center justify-center text-blue-600 shadow-sm flex-shrink-0">
                            <i class="fas fa-phone-alt text-xl"></i>
                        </div>
                        <div>
                            <h4 class="text-lg font-bold text-slate-800 mb-1">Phone Number</h4>
                            <p class="text-gray-500">+91 98062 71078</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-12 h-12 bg-white rounded-full flex items-center justify-center text-blue-600 shadow-sm flex-shrink-0">
                            <i class="fas fa-envelope text-xl"></i>
                        </div>
                        <div>
                            <h4 class="text-lg font-bold text-slate-800 mb-1">Email Address</h4>
                            <p class="text-gray-500">bharatidcard.katni@gmail.com</p>
                        </div>
                    </div>
                </div>

                <!-- Google Map -->
                <div class="mt-10 rounded-2xl overflow-hidden shadow-md h-64">
                    <iframe 
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d117393.61989679198!2d80.33403262630266!3d23.83437298379434!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39814e41f0f4553b%3A0x63391763740922e9!2sKatni%2C%20Madhya%20Pradesh!5e0!3m2!1sen!2sin!4v1689582496847!5m2!1sen!2sin" 
                        width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
                    </iframe>
                </div>
            </div>

            <!-- Contact Form -->
            <div class="bg-white p-8 md:p-10 rounded-3xl shadow-xl border border-gray-100" data-aos="fade-left">
                <h3 class="text-2xl font-bold text-slate-800 mb-6">Send Message</h3>
                <form id="contactForm" action="javascript:void(0)" method="post" class="space-y-6">
                    <div class="grid md:grid-cols-2 gap-6">
                        <div>
                            <label class="block text-xs font-bold text-gray-700 mb-2 uppercase">Your Name</label>
                            <input type="text" name="name" class="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-3 focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" required placeholder="John Doe">
                        </div>
                        <div>
                            <label class="block text-xs font-bold text-gray-700 mb-2 uppercase">Your Email</label>
                            <input type="email" name="email" class="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-3 focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" required placeholder="john@example.com">
                        </div>
                    </div>

                    <div>
                        <label class="block text-xs font-bold text-gray-700 mb-2 uppercase">Subject</label>
                        <input type="text" name="subject" class="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-3 focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" required placeholder="Inquiry about ID cards">
                    </div>

                    <div>
                        <label class="block text-xs font-bold text-gray-700 mb-2 uppercase">Message</label>
                        <textarea name="message" rows="5" class="w-full bg-gray-50 border border-gray-200 rounded-xl px-4 py-3 focus:outline-none focus:border-blue-500 focus:ring-1 focus:ring-blue-500 transition" required placeholder="Tell us about your requirements..."></textarea>
                    </div>

                    <button type="submit" class="w-full py-4 bg-gradient-to-r from-blue-600 to-indigo-600 text-white font-bold rounded-xl hover:shadow-lg transform hover:-translate-y-1 transition duration-300">
                        Send Message
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {
    $("#contactForm").validate({
        rules: {
            name: { required: true, minlength: 2 },
            email: { required: true, email: true },
            subject: { required: true, minlength: 5 },
            message: { required: true, minlength: 10 }
        },
        submitHandler: function(form) {
            var submitBtn = $(form).find('button[type="submit"]');
            var originalBtnText = submitBtn.html();
            
            submitBtn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-2"></i> Sending...');
            
            var formData = $("#contactForm").serialize();
            $.ajax({
                url: "save_contact_data",
                type: "POST",
                data: formData,
                success: function (response) {
                    submitBtn.prop('disabled', false).html(originalBtnText);
                    try {
                        response = JSON.parse(response);
                        if (response.success == 1) {
                            toastr.success(response.msg);
                            $("#contactForm")[0].reset();
                        } else {
                            toastr.error(response.msg || "Submission failed");
                        }
                    } catch(e) {
                         toastr.error("Error processing response");
                    }
                },
                error: function () {
                    submitBtn.prop('disabled', false).html(originalBtnText);
                    toastr.error("Server error. Please try again.");
                }
            });
        }
    });
});
</script>