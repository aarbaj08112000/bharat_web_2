<style>
/* Hero Background - Clean & Professional */
.hero-section {
    background: linear-gradient(to right, #ffffff, #f1f5f9);
    position: relative;
    overflow: hidden;
}

/* Subtle Animated Blobs (Lighter) */
.blob {
    position: absolute;
    border-radius: 50%;
    filter: blur(80px);
    opacity: 0.6;
    z-index: 0;
}
.blob-1 { top: -10%; left: -5%; width: 400px; height: 400px; background: #e0f2fe; } /* Light Blue */
.blob-2 { bottom: -10%; right: -5%; width: 500px; height: 500px; background: #f3e8ff; } /* Light Purple */

/* Card Lift Effect */
.hover-lift {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.hover-lift:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 30px -10px rgba(0, 0, 0, 0.1);
}

/* Gradient Text for Headlines */
.text-gradient {
    background: linear-gradient(to right, #2563eb, #06b6d4);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
}
</style>

<!-- Dynamic Hero Section (Slider) -->
<%if $config['banner']|@count > 0 %>
<section class="hero-section relative h-[650px] overflow-hidden">
    <div class="swiper heroSwiper w-full h-full">
        <div class="swiper-wrapper">
            <%foreach from=$config['banner'] item=b name=bannerLoop%>
            <div class="swiper-slide relative flex flex-col items-center justify-end pb-20">
                <!-- Background Image -->
                <div class="absolute inset-0 z-0">
                   <img src="public/uploads/banner/<%$b['banner_image']%>" alt="<%$b['title']%>" class="w-full h-full object-cover">
                   <!-- No Overlay as requested -->
                </div>

                <!-- Content -->
                <div class="container mx-auto px-6 relative z-10 text-center">
                    <div class="max-w-4xl mx-auto" data-aos="fade-up">
                        <h1 class="text-4xl lg:text-6xl font-extrabold text-white mb-6 leading-tight drop-shadow-[0_2px_2px_rgba(0,0,0,0.8)]">
                            <%$b['title'] %>
                        </h1>
                        <p class="text-white text-lg mb-10 leading-relaxed font-medium drop-shadow-[0_2px_2px_rgba(0,0,0,0.8)]">
                            <%$b['description'] %>
                        </p>
                        
                        <div class="flex justify-center">
                            <a href="product.html" class="px-10 py-4 bg-blue-600 text-white font-bold rounded-full hover:bg-blue-700 transition shadow-xl hover:scale-105 transform duration-300">
                                Explore Products
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <%/foreach%>
        </div>
        <div class="swiper-pagination"></div>
        <div class="swiper-button-next text-white/50 hover:text-white"></div>
        <div class="swiper-button-prev text-white/50 hover:text-white"></div>
    </div>
</section>
<%else%>
<!-- Fallback Static Hero if no banners -->
<section class="hero-section min-h-[650px] flex items-center relative pt-24 pb-16">
    <div class="blob blob-1"></div>
    <div class="blob blob-2"></div>
    
    <div class="container mx-auto px-6 relative z-10">
        <div class="grid lg:grid-cols-2 gap-16 items-center">
            
            <div data-aos="fade-right" data-aos-duration="1000">
                <div class="inline-flex items-center gap-2 px-4 py-2 bg-white rounded-full shadow-sm border border-blue-50 mb-6">
                    <span class="w-2 h-2 rounded-full bg-blue-600 animate-pulse"></span>
                    <span class="text-xs font-bold text-blue-700 tracking-wide uppercase">Identity Solutions Partner</span>
                </div>
                
                <h1 class="text-5xl lg:text-6xl font-extrabold text-slate-800 mb-6 leading-tight">
                    Professional Identities <br>
                    <span class="text-gradient">Built on Trust</span>
                </h1>
                
                <p class="text-slate-600 text-lg mb-8 leading-relaxed max-w-lg">
                    We deliver high-quality, secure ID cards and branding accessories tailored for schools, corporates, and events. Fast, reliable, and premium.
                </p>
                
                <div class="flex flex-wrap gap-4">
                    <a href="product.html" class="px-8 py-4 bg-blue-600 text-white font-bold rounded-lg hover:bg-blue-700 transition shadow-lg shadow-blue-500/20">
                        Explore Catalog
                    </a>
                    <button class="px-8 py-4 bg-white text-slate-700 border border-slate-200 font-bold rounded-lg hover:bg-slate-50 hover:text-blue-600 transition flex items-center gap-2" data-toggle="modal" data-target="#visitorModal">
                        <i class="fas fa-arrow-down"></i> Download Brochure
                    </button>
                </div>
            </div>
            
            <div class="relative" data-aos="fade-left" data-aos-duration="1000">
                <div class="relative w-full max-w-md mx-auto aspect-square">
                    <img src="https://img.freepik.com/free-vector/gradient-id-card-template_23-2149509825.jpg" alt="Premium ID Card" class="absolute inset-0 w-full h-full object-cover rounded-3xl shadow-2xl z-10 hover:scale-105 transition duration-500 border border-white/50">
                    <div class="absolute -top-6 -right-6 bg-white p-4 rounded-2xl shadow-xl z-20 animate-bounce" style="animation-duration: 3s;">
                        <i class="fas fa-check-circle text-4xl text-green-500"></i>
                    </div>
                    <div class="absolute -inset-4 bg-gradient-to-tr from-blue-100 to-purple-100 rounded-full blur-3xl opacity-60 -z-10"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<%/if%>

<!-- Stats Section -->
<section class="py-12 bg-white border-b border-slate-100">
    <div class="container mx-auto px-6">
        <div class="grid grid-cols-2 md:grid-cols-4 gap-8 text-center divide-x divide-slate-100">
            <div data-aos="fade-up" data-aos-delay="0">
                <h3 class="text-3xl font-bold text-slate-800 counter" data-target="500" data-suffix="+">0+</h3>
                <p class="text-sm text-slate-500 mt-1 uppercase tracking-wide">Happy Clients</p>
            </div>
            <div data-aos="fade-up" data-aos-delay="100">
                <h3 class="text-3xl font-bold text-slate-800 counter" data-target="100" data-suffix="k+">0k+</h3>
                <p class="text-sm text-slate-500 mt-1 uppercase tracking-wide">ID Cards Printed</p>
            </div>
            <div data-aos="fade-up" data-aos-delay="200">
                <h3 class="text-3xl font-bold text-slate-800 counter" data-target="5" data-suffix="+">0+</h3>
                <p class="text-sm text-slate-500 mt-1 uppercase tracking-wide">Years Experience</p>
            </div>
            <div data-aos="fade-up" data-aos-delay="300">
                <h3 class="text-3xl font-bold text-slate-800 counter" data-target="100" data-suffix="%">0%</h3>
                <p class="text-sm text-slate-500 mt-1 uppercase tracking-wide">Quality Guarantee</p>
            </div>
        </div>
    </div>
</section>

<!-- Core Services -->
<section class="py-24 bg-slate-50">
    <div class="container mx-auto px-6">
        <div class="text-center mb-16 max-w-2xl mx-auto" data-aos="fade-up">
            <h2 class="text-3xl md:text-4xl font-bold text-slate-800 mb-4">Our Core Solutions</h2>
            <p class="text-slate-600">
                Tailored identification products designed to meet the unique needs of every sector, from education to corporate.
            </p>
        </div>

        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
            <!-- Service 1 -->
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover-lift group" data-aos="fade-up" data-aos-delay="100">
                <div class="w-14 h-14 bg-blue-50 rounded-xl flex items-center justify-center text-blue-600 mb-6 text-2xl group-hover:bg-blue-600 group-hover:text-white transition">
                    <i class="fas fa-user-graduate"></i>
                </div>
                <h3 class="text-xl font-bold text-slate-800 mb-3">School IDs</h3>
                <p class="text-slate-500 text-sm leading-relaxed mb-4">Secure student identification with integrated library/attendance barcodes.</p>
                <a href="product.html" class="text-blue-600 font-bold text-sm hover:underline">Learn More</a>
            </div>

            <!-- Service 2 -->
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover-lift group" data-aos="fade-up" data-aos-delay="200">
                <div class="w-14 h-14 bg-purple-50 rounded-xl flex items-center justify-center text-purple-600 mb-6 text-2xl group-hover:bg-purple-600 group-hover:text-white transition">
                    <i class="fas fa-building"></i>
                </div>
                <h3 class="text-xl font-bold text-slate-800 mb-3">Corporate IDs</h3>
                <p class="text-slate-500 text-sm leading-relaxed mb-4">Professional employee badges that enhance corporate branding and security.</p>
                <a href="product.html" class="text-purple-600 font-bold text-sm hover:underline">Learn More</a>
            </div>

            <!-- Service 3 -->
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover-lift group" data-aos="fade-up" data-aos-delay="300">
                <div class="w-14 h-14 bg-cyan-50 rounded-xl flex items-center justify-center text-cyan-600 mb-6 text-2xl group-hover:bg-cyan-600 group-hover:text-white transition">
                    <i class="fas fa-wifi"></i>
                </div>
                <h3 class="text-xl font-bold text-slate-800 mb-3">Smart Cards</h3>
                <p class="text-slate-500 text-sm leading-relaxed mb-4">RFID & NFC enabled cards for automated access control systems.</p>
                <a href="product.html" class="text-cyan-600 font-bold text-sm hover:underline">Learn More</a>
            </div>

            <!-- Service 4 -->
            <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100 hover-lift group" data-aos="fade-up" data-aos-delay="400">
                <div class="w-14 h-14 bg-pink-50 rounded-xl flex items-center justify-center text-pink-600 mb-6 text-2xl group-hover:bg-pink-600 group-hover:text-white transition">
                    <i class="fas fa-tshirt"></i>
                </div>
                <h3 class="text-xl font-bold text-slate-800 mb-3">Lanyards</h3>
                <p class="text-slate-500 text-sm leading-relaxed mb-4">Custom printed lanyards in various widths to match your specific needs.</p>
                <a href="product.html" class="text-pink-600 font-bold text-sm hover:underline">Learn More</a>
            </div>
        </div>
    </div>
</section>

<!-- Unique "Why Choose Us" Section (Replaced Video with Image) -->
<section class="py-24 bg-white relative overflow-hidden">
    <!-- Decorative Circle -->
    <div class="absolute -right-20 top-20 w-80 h-80 bg-blue-50 rounded-full blur-3xl opacity-50"></div>
    
    <div class="container mx-auto px-6 relative z-10">
        <div class="grid lg:grid-cols-2 gap-16 items-center">
            
            <div data-aos="fade-right">
                <!-- Replaced Image with Video -->
                <div class="relative rounded-3xl overflow-hidden shadow-2xl border border-gray-100 group">
                    <video class="w-full h-[500px] object-cover transform group-hover:scale-105 transition duration-700" autoplay loop muted playsinline>
                        <source src="public/assets_front/img/bharat_id_solution.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                    <div class="absolute inset-0 bg-gradient-to-t from-black/50 to-transparent flex items-end p-8">
                        <div>
                            <p class="text-white font-bold text-lg">State-of-the-Art Production</p>
                            <p class="text-white/80 text-sm">Ensuring precision in every card.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div data-aos="fade-left">
                <span class="text-blue-600 font-bold tracking-wider text-sm uppercase mb-2 block">Why Choose Us</span>
                <h2 class="text-3xl md:text-4xl font-bold text-slate-800 mb-6">Excellence in Every Print</h2>
                <p class="text-slate-600 text-lg mb-8 leading-relaxed">
                    We distinguish ourselves through unwavering attention to detail and a commitment to customer satisfaction. Here is why hundreds of organizations trust Bharat ID Solution.
                </p>

                <div class="space-y-6">
                    <!-- Feature 1 -->
                    <div class="flex items-start gap-4">
                        <div class="w-12 h-12 rounded-xl bg-green-50 flex items-center justify-center text-green-600 text-xl shrink-0">
                            <i class="fas fa-print"></i>
                        </div>
                        <div>
                            <h4 class="text-lg font-bold text-slate-800">Advanced Printing Tech</h4>
                            <p class="text-slate-500 text-sm mt-1">We use the latest thermal and retransfer printers for sharp, fade-resistant results.</p>
                        </div>
                    </div>

                    <!-- Feature 2 -->
                    <div class="flex items-start gap-4">
                        <div class="w-12 h-12 rounded-xl bg-orange-50 flex items-center justify-center text-orange-600 text-xl shrink-0">
                            <i class="fas fa-cubes"></i>
                        </div>
                        <div>
                            <h4 class="text-lg font-bold text-slate-800">Bulk Order Capability</h4>
                            <p class="text-slate-500 text-sm mt-1">Whether 50 or 50,000 cards, our production line handles it efficiently.</p>
                        </div>
                    </div>

                    <!-- Feature 3 -->
                    <div class="flex items-start gap-4">
                        <div class="w-12 h-12 rounded-xl bg-blue-50 flex items-center justify-center text-blue-600 text-xl shrink-0">
                            <i class="fas fa-lock"></i>
                        </div>
                        <div>
                            <h4 class="text-lg font-bold text-slate-800">Data Security</h4>
                            <p class="text-slate-500 text-sm mt-1">Your data is processed securely and deleted post-production to ensure privacy.</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- Catalog Preview (Premium UI) -->
<section class="py-24 bg-white relative">
    <!-- Background Decoration -->
    <div class="absolute top-0 left-0 w-full h-1/2 bg-slate-50 skew-y-1 -z-0"></div>

    <div class="container mx-auto px-6 relative z-10">
        <div class="flex flex-col md:flex-row justify-between items-end mb-16" data-aos="fade-up">
            <div class="max-w-2xl">
                <span class="text-blue-600 font-bold tracking-wider text-sm uppercase mb-2 block">Our Collection</span>
                <h2 class="text-4xl font-extrabold text-slate-800 mb-4 leading-tight">Featured Products</h2>
                <div class="w-20 h-1.5 bg-blue-600 rounded-full mb-4"></div>
                <p class="text-slate-600 text-lg">Discover our most popular identification solutions, crafted for quality and durability.</p>
            </div>
            
            <a href="product.html" class="hidden md:inline-flex items-center gap-3 px-8 py-3 bg-blue-600 text-white rounded-full font-semibold shadow-lg hover:bg-blue-700 hover:shadow-blue-600/30 transition-all transform hover:-translate-y-1">
                View All Products <i class="fas fa-arrow-right"></i>
            </a>
        </div>

        <div class="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
            <!-- Product 1 -->
            <a href="product.html?c=id_card" class="group bg-white rounded-3xl shadow-lg border border-slate-100 overflow-hidden hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2" data-aos="fade-up" data-aos-delay="100">
                <div class="h-64 bg-gradient-to-br from-blue-50 to-indigo-50 relative flex items-center justify-center overflow-hidden">
                    <div class="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iMSIgY3k9IjEiIHI9IjEiIGZpbGw9InJnYmEoMzcsIDk5LCAyMzUsIDAuMDUpIi8+PC9zdmc+')] opacity-50"></div>
                    <div class="w-32 h-32 bg-white rounded-full flex items-center justify-center shadow-sm group-hover:scale-110 transition-transform duration-500 relative z-10">
                        <span class="text-6xl filter drop-shadow-sm">🪪</span>
                    </div>
                </div>
                <div class="p-8 text-center">
                    <h4 class="text-xl font-extrabold text-slate-800 mb-2 group-hover:text-blue-600 transition-colors">PVC Cards</h4>
                    <p class="text-slate-500 text-sm mb-4 leading-relaxed">High-durability PVC cards with crisp thermal printing.</p>
                    <span class="inline-block text-blue-600 font-bold text-sm tracking-wide opacity-0 transform translate-y-2 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300">Explore Options &rarr;</span>
                </div>
            </a>

            <!-- Product 2 -->
            <a href="product.html?c=keychain" class="group bg-white rounded-3xl shadow-lg border border-slate-100 overflow-hidden hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2" data-aos="fade-up" data-aos-delay="200">
                <div class="h-64 bg-gradient-to-br from-purple-50 to-fuchsia-50 relative flex items-center justify-center overflow-hidden">
                    <div class="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iMSIgY3k9IjEiIHI9IjEiIGZpbGw9InJnYmEoMTQ3LCA1MSwgMjM0LCAwLjA1KSIvPjwvc3ZnPg==')] opacity-50"></div>
                     <div class="w-32 h-32 bg-white rounded-full flex items-center justify-center shadow-sm group-hover:scale-110 transition-transform duration-500 relative z-10">
                        <span class="text-6xl filter drop-shadow-sm">🔑</span>
                    </div>
                </div>
                <div class="p-8 text-center">
                    <h4 class="text-xl font-extrabold text-slate-800 mb-2 group-hover:text-purple-600 transition-colors">Keychains</h4>
                    <p class="text-slate-500 text-sm mb-4 leading-relaxed">Custom shapes in Acrylic & Metal materials.</p>
                     <span class="inline-block text-purple-600 font-bold text-sm tracking-wide opacity-0 transform translate-y-2 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300">Explore Options &rarr;</span>
                </div>
            </a>

            <!-- Product 3 -->
            <a href="product.html?c=medals" class="group bg-white rounded-3xl shadow-lg border border-slate-100 overflow-hidden hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2" data-aos="fade-up" data-aos-delay="300">
                <div class="h-64 bg-gradient-to-br from-yellow-50 to-orange-50 relative flex items-center justify-center overflow-hidden">
                    <div class="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iMSIgY3k9IjEiIHI9IjEiIGZpbGw9InJnYmEoMjM0LCAxNzksIDUxLCAwLjA1KSIvPjwvc3ZnPg==')] opacity-50"></div>
                     <div class="w-32 h-32 bg-white rounded-full flex items-center justify-center shadow-sm group-hover:scale-110 transition-transform duration-500 relative z-10">
                        <span class="text-6xl filter drop-shadow-sm">🏅</span>
                    </div>
                </div>
                <div class="p-8 text-center">
                    <h4 class="text-xl font-extrabold text-slate-800 mb-2 group-hover:text-yellow-600 transition-colors">Medals</h4>
                    <p class="text-slate-500 text-sm mb-4 leading-relaxed">Premium awards for sports and corporate events.</p>
                     <span class="inline-block text-yellow-600 font-bold text-sm tracking-wide opacity-0 transform translate-y-2 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300">Explore Options &rarr;</span>
                </div>
            </a>

            <!-- Product 4 -->
            <a href="product.html?c=name_plate" class="group bg-white rounded-3xl shadow-lg border border-slate-100 overflow-hidden hover:shadow-2xl transition-all duration-300 transform hover:-translate-y-2" data-aos="fade-up" data-aos-delay="400">
                <div class="h-64 bg-gradient-to-br from-cyan-50 to-teal-50 relative flex items-center justify-center overflow-hidden">
                    <div class="absolute inset-0 bg-[url('data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PGNpcmNsZSBjeD0iMSIgY3k9IjEiIHI9IjEiIGZpbGw9InJnYmEoNTEsIDE4OCwgMjM0LCAwLjA1KSIvPjwvc3ZnPg==')] opacity-50"></div>
                     <div class="w-32 h-32 bg-white rounded-full flex items-center justify-center shadow-sm group-hover:scale-110 transition-transform duration-500 relative z-10">
                        <span class="text-6xl filter drop-shadow-sm">🏷️</span>
                    </div>
                </div>
                <div class="p-8 text-center">
                    <h4 class="text-xl font-extrabold text-slate-800 mb-2 group-hover:text-cyan-600 transition-colors">Name Plates</h4>
                    <p class="text-slate-500 text-sm mb-4 leading-relaxed">Elegant desk and door branding solutions.</p>
                     <span class="inline-block text-cyan-600 font-bold text-sm tracking-wide opacity-0 transform translate-y-2 group-hover:opacity-100 group-hover:translate-y-0 transition-all duration-300">Explore Options &rarr;</span>
                </div>
            </a>
        </div>
        
        <div class="mt-12 text-center md:hidden">
            <a href="product.html" class="inline-flex items-center gap-3 px-8 py-3 bg-blue-600 text-white rounded-full font-semibold shadow-lg hover:bg-blue-700 hover:shadow-blue-600/30 transition-all">
                View All Products <i class="fas fa-arrow-right"></i>
            </a>
        </div>
    </div>
</section>

<!-- FAQ Section -->
<section class="py-24 bg-white">
    <div class="container mx-auto px-6 max-w-4xl">
        <h2 class="text-3xl font-bold text-center mb-12 text-slate-800">Frequently Asked Questions</h2>
        
        <div class="space-y-4">
            <!-- FAQ Item -->
            <div class="border border-slate-200 rounded-xl overflow-hidden">
                <button class="w-full px-6 py-5 text-left flex justify-between items-center bg-white hover:bg-slate-50 transition focus:outline-none" onclick="$(this).next().slideToggle(); $(this).find('i').toggleClass('rotate-180')">
                    <span class="font-bold text-slate-700">What customization options do you offer?</span>
                    <i class="fas fa-chevron-down text-slate-400 transition duration-300"></i>
                </button>
                <div class="hidden px-6 pb-6 text-slate-600 border-t border-slate-100 pt-4 leading-relaxed">
                    We offer complete customization including full-color printing, variable data (names/photos/IDs), barcodes, QR codes, and mag-stripe encoding.
                </div>
            </div>
            
            <!-- FAQ Item -->
            <div class="border border-slate-200 rounded-xl overflow-hidden">
                <button class="w-full px-6 py-5 text-left flex justify-between items-center bg-white hover:bg-slate-50 transition focus:outline-none" onclick="$(this).next().slideToggle(); $(this).find('i').toggleClass('rotate-180')">
                    <span class="font-bold text-slate-700">Is there a minimum order quantity?</span>
                    <i class="fas fa-chevron-down text-slate-400 transition duration-300"></i>
                </button>
                <div class="hidden px-6 pb-6 text-slate-600 border-t border-slate-100 pt-4 leading-relaxed">
                    No strict minimum for ID cards, but bulk orders (50+) attract significantly better pricing. Accessories usually have MOQs depending on the type.
                </div>
            </div>

            <!-- FAQ Item -->
            <div class="border border-slate-200 rounded-xl overflow-hidden">
                <button class="w-full px-6 py-5 text-left flex justify-between items-center bg-white hover:bg-slate-50 transition focus:outline-none" onclick="$(this).next().slideToggle(); $(this).find('i').toggleClass('rotate-180')">
                    <span class="font-bold text-slate-700">Do you ship across India?</span>
                    <i class="fas fa-chevron-down text-slate-400 transition duration-300"></i>
                </button>
                <div class="hidden px-6 pb-6 text-slate-600 border-t border-slate-100 pt-4 leading-relaxed">
                    Yes, we use reliable courier partners to ensure safe delivery of your products to any location in India.
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Review Section -->
<section class="py-24 bg-slate-50">
    <div class="container mx-auto px-6">
        <h2 class="text-3xl font-bold text-center mb-16 text-slate-800">Client Feedback</h2>
        
        <div class="grid lg:grid-cols-2 gap-12">
            <!-- Review List -->
            <div class="space-y-6 max-h-[500px] overflow-y-auto pr-2 custom-scrollbar">
                <%if $rating_review|@count > 0 %>
                    <%foreach from=$rating_review item=u %>
                        <div class="bg-white p-8 rounded-2xl shadow-sm border border-slate-100">
                            <div class="flex items-center gap-1 text-yellow-400 mb-3 text-sm">
                                <%section name=star loop=$u['rating']%>
                                    <i class="fas fa-star"></i>
                                <%/section%>
                            </div>
                            <p class="text-slate-600 italic mb-4">"<%$u['review'] %>"</p>
                            <div class="flex items-center gap-3">
                                <div class="w-10 h-10 rounded-full bg-slate-200 flex items-center justify-center font-bold text-slate-500">
                                    <%$u['name']|substr:0:1|upper %>
                                </div>
                                <h5 class="font-bold text-slate-800 text-sm"><%$u['name']|capitalize %></h5>
                            </div>
                        </div>
                    <%/foreach%>
                <%else%>
                    <div class="text-center py-10 bg-white rounded-2xl border border-dashed border-slate-300">
                        <p class="text-slate-500">No reviews yet. Share your experience!</p>
                    </div>
                <%/if%>
            </div>

            <!-- Review Form -->
            <div class="bg-white p-8 md:p-10 rounded-2xl shadow-lg border border-slate-100">
                <h4 class="text-2xl font-bold mb-6 text-slate-800">Write a Review</h4>
                <form id="reviewform" action="javascript:void(0)" method="post" class="space-y-5">
                    <div>
                        <label class="block text-xs font-bold text-slate-500 mb-2 uppercase tracking-wide">Your Name</label>
                        <input type="text" name="name" class="w-full bg-slate-50 border border-slate-200 rounded-lg px-4 py-3 focus:outline-none focus:border-blue-500 focus:bg-white transition" placeholder="John Doe" required>
                    </div>
                    <div>
                        <label class="block text-xs font-bold text-slate-500 mb-2 uppercase tracking-wide">Your Feedback</label>
                        <textarea name="review" rows="4" class="w-full bg-slate-50 border border-slate-200 rounded-lg px-4 py-3 focus:outline-none focus:border-blue-500 focus:bg-white transition" placeholder="Share your experience..." required></textarea>
                    </div>
                    <div>
                        <label class="block text-xs font-bold text-slate-500 mb-2 uppercase tracking-wide">Rating</label>
                        <div class="relative">
                            <select name="rating" class="w-full bg-slate-50 border border-slate-200 rounded-lg px-4 py-3 focus:outline-none focus:border-blue-500 focus:bg-white transition appearance-none" required>
                                <option value="" disabled selected>Select Rating</option>
                                <option value="5">★★★★★ Excellent</option>
                                <option value="4">★★★★☆ Good</option>
                                <option value="3">★★★☆☆ Average</option>
                                <option value="2">★★☆☆☆ Poor</option>
                                <option value="1">★☆☆☆☆ Terrible</option>
                            </select>
                            <div class="absolute right-4 top-1/2 -translate-y-1/2 pointer-events-none text-slate-500">
                                <i class="fas fa-chevron-down"></i>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="w-full py-4 bg-blue-600 text-white font-bold rounded-lg hover:bg-blue-700 transition shadow-lg hover:shadow-blue-500/20">Submit Review</button>
                </form>
            </div>
        </div>
    </div>
</section>

<!-- CTA -->
<section class="py-20 bg-slate-900 overflow-hidden relative">
    <div class="absolute top-0 right-0 w-96 h-96 bg-blue-600 rounded-full blur-[100px] opacity-20"></div>
    <div class="absolute bottom-0 left-0 w-96 h-96 bg-purple-600 rounded-full blur-[100px] opacity-20"></div>
    
    <div class="container mx-auto px-6 relative z-10 text-center">
        <h2 class="text-3xl md:text-5xl font-bold text-white mb-6">Start Your Project Today</h2>
        <p class="text-slate-400 text-lg mb-10 max-w-xl mx-auto">Join hundreds of satisfied institutions. Quality layout, secure printing, and on-time delivery.</p>
        <div class="flex flex-col sm:flex-row justify-center gap-4">
            <a href="contact.html" class="px-8 py-4 bg-blue-600 text-white font-bold rounded-lg hover:bg-blue-700 transition">Get a Free Quote</a>
            <button class="px-8 py-4 bg-transparent border border-white/20 text-white font-bold rounded-lg hover:bg-white/10 transition" data-toggle="modal" data-target="#visitorModal">Download Catalog</button>
        </div>
    </div>
</section>

<script>
$(document).ready(function () {
    // Initialize Hero Swiper
    if ($('.heroSwiper').length) {
        new Swiper('.heroSwiper', {
            loop: true,
            autoplay: {
                delay: 5000,
                disableOnInteraction: false,
            },
            effect: 'fade',
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    }

    $("#reviewform").validate({
        rules: {
            name: { required: true, minlength: 2 },
            review: { required: true, minlength: 10 },
            rating: { required: true }
        },
        submitHandler: function(form) {
            var submitBtn = $(form).find('button[type="submit"]');
            var originalBtnText = submitBtn.html();
            
            submitBtn.prop('disabled', true).html('<i class="fas fa-spinner fa-spin mr-2"></i> Submitting...');

            var formData = $("#reviewform").serialize();
            $.ajax({
                url: "save_review_data",
                type: "POST",
                data: formData,
                success: function (response) {
                    submitBtn.prop('disabled', false).html(originalBtnText);
                    try {
                        response = JSON.parse(response);
                        if (response.success == 1) {
                            toastr.success(response.msg);
                            setTimeout(() => location.reload(), 2000);
                        }
                    } catch(e) {}
                },
                error: function () {
                    submitBtn.prop('disabled', false).html(originalBtnText);
                    toastr.error("Error submitting review");
                }
            });
        }
    });

    // Counter Animation
    const counters = document.querySelectorAll('.counter');
    const animateCounters = (entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const counter = entry.target;
                const target = +counter.getAttribute('data-target');
                const suffix = counter.getAttribute('data-suffix') || '';
                const duration = 2000; // 2 seconds
                
                let startTimestamp = null;
                const step = (timestamp) => {
                    if (!startTimestamp) startTimestamp = timestamp;
                    const progress = Math.min((timestamp - startTimestamp) / duration, 1);
                    counter.innerText = Math.floor(progress * target) + suffix;
                    if (progress < 1) {
                        window.requestAnimationFrame(step);
                    }
                };
                window.requestAnimationFrame(step);
                observer.unobserve(counter);
            }
        });
    };

    const observer = new IntersectionObserver(animateCounters, {
        threshold: 0.5
    });

    counters.forEach(counter => {
        observer.observe(counter);
    });
});
</script>
