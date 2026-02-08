<style>
/* Masonry/Grid Layout for Gallery */
.gallery-grid {
    column-count: 1;
    column-gap: 1.5rem;
}
@media (min-width: 640px) { .gallery-grid { column-count: 2; } }
@media (min-width: 1024px) { .gallery-grid { column-count: 3; } }

.gallery-item {
    break-inside: avoid;
    margin-bottom: 1.5rem;
    position: relative;
    border-radius: 1rem;
    overflow: hidden;
    transform: translateZ(0); /* Hardware acceleration */
}

/* Hover Overlay */
.gallery-overlay {
    background: linear-gradient(to top, rgba(0,0,0,0.8), transparent);
    opacity: 0;
    transition: opacity 0.3s ease;
}
.gallery-item:hover .gallery-overlay {
    opacity: 1;
}
.gallery-item img, .gallery-item video {
    transition: transform 0.5s ease;
}
.gallery-item:hover img, .gallery-item:hover video {
    transform: scale(1.05);
}
</style>

<!-- Fancybox -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css" />
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js"></script>

<div class="page-section py-20 bg-gray-50 min-h-screen">
    <div class="container mx-auto px-6">
        
        <!-- Header -->
        <div class="text-center mb-12" data-aos="fade-up">
            <h2 class="text-3xl font-bold text-slate-800 mb-4">Our Gallery</h2>
            <div class="w-20 h-1 bg-blue-600 mx-auto rounded-full"></div>
            <p class="text-gray-600 mt-4 max-w-2xl mx-auto">Explore our diverse range of personalized products from premium ID cards to medals and keychains.</p>
        </div>

        <!-- Tabs Navigation -->
        <div class="flex justify-center mb-12" data-aos="fade-up" data-aos-delay="100">
            <div class="inline-flex bg-white rounded-full p-1.5 shadow-md border border-slate-100">
                <button onclick="switchTab('image')" id="tab-image" class="px-8 py-3 rounded-full text-sm font-bold transition-all duration-300 bg-blue-600 text-white shadow-md">
                    <i class="fas fa-images mr-2"></i> Image Gallery
                </button>
                <button onclick="switchTab('video')" id="tab-video" class="px-8 py-3 rounded-full text-sm font-bold text-slate-600 hover:text-blue-600 transition-all duration-300">
                    <i class="fas fa-play-circle mr-2"></i> Video Gallery
                </button>
            </div>
        </div>

        <!-- Image Gallery Content -->
        <div id="content-image" class="tab-content transition-opacity duration-500 ease-in-out">
             <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
                <%if $image|@count > 0 %>
                    <%foreach from=$image item=u %>
                    <div class="group relative rounded-xl overflow-hidden shadow-sm hover:shadow-xl transition-all duration-300 bg-white border border-slate-100" data-aos="zoom-in">
                        <a href="public/uploads/gallary/<%$u['image_Video'] %>" data-fancybox="gallery" data-caption="Gallery Image" class="block relative overflow-hidden">
                            <!-- Fixed Height & Width with Object Cover for uniformity -->
                            <img src="public/uploads/gallary/<%$u['image_Video'] %>" 
                                 alt="Gallery Image" 
                                 class="w-full h-64 object-cover transform group-hover:scale-110 transition duration-700"
                                 onerror="this.onerror=null; this.src='https://placehold.co/600x400?text=No+Image'; this.parentElement.setAttribute('href', 'https://placehold.co/600x400?text=No+Image');">
                            
                            <!-- Hover Overlay -->
                            <div class="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-300 flex items-end p-4">
                                <span class="text-white text-sm font-bold"><i class="fas fa-search-plus mr-1"></i> View</span>
                            </div>
                        </a>
                    </div>
                    <%/foreach%>
                <%else%>
                    <div class="col-span-full text-center py-20 bg-white rounded-2xl border border-dashed border-slate-300">
                         <div class="text-6xl mb-4">📷</div>
                        <p class="text-gray-500 font-medium">No images available at the moment.</p>
                    </div>
                <%/if%>
            </div>
        </div>

        <!-- Video Gallery Content (Hidden by default) -->
        <div id="content-video" class="tab-content hidden transition-opacity duration-500 ease-in-out">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                <%if $video|@count > 0 %>
                    <%foreach from=$video item=u %>
                    <div class="group relative rounded-2xl overflow-hidden shadow-lg border border-slate-100 bg-black" data-aos="fade-up">
                        <a href="public/uploads/gallary/<%$u['image_Video'] %>" data-fancybox="gallery" data-type="html5video" class="block relative group w-full h-64">
                            <!-- Video Thumbnail / Preview -->
                            <video class="w-full h-full object-cover opacity-90 group-hover:opacity-100 transition duration-500" muted preload="metadata">
                                <source src="public/uploads/gallary/<%$u.image_Video %>" type="video/mp4">
                            </video>
                            
                            <!-- Play Button Overlay -->
                            <div class="absolute inset-0 flex items-center justify-center bg-black/20 group-hover:bg-black/40 transition duration-300">
                                <div class="w-16 h-16 bg-white/20 backdrop-blur-md rounded-full flex items-center justify-center group-hover:scale-110 transition duration-300 border border-white/40 shadow-xl">
                                    <i class="fas fa-play text-white text-2xl ml-1"></i>
                                </div>
                            </div>
                        </a>
                         <div class="p-4 bg-white">
                            <h5 class="font-bold text-slate-800 text-sm">Product Showcase</h5>
                        </div>
                    </div>
                    <%/foreach%>
                <%else%>
                    <div class="col-span-full text-center py-20 bg-white rounded-2xl border border-dashed border-slate-300">
                        <div class="text-6xl mb-4">🎬</div>
                        <p class="text-gray-500 font-medium">No videos available at the moment.</p>
                    </div>
                <%/if%>
            </div>
        </div>

    </div>
</div>

<script>
    Fancybox.bind("[data-fancybox]", {
        // Custom options
    });

    function switchTab(tab) {
        // Reset Tabs
        document.getElementById('tab-image').classList.remove('bg-blue-600', 'text-white', 'shadow-md');
        document.getElementById('tab-image').classList.add('text-slate-600', 'hover:text-blue-600');
        
        document.getElementById('tab-video').classList.remove('bg-blue-600', 'text-white', 'shadow-md');
        document.getElementById('tab-video').classList.add('text-slate-600', 'hover:text-blue-600');

        // Hide Contents
        document.getElementById('content-image').classList.add('hidden');
        document.getElementById('content-video').classList.add('hidden');

        // Activate Selected Tab
        document.getElementById('tab-' + tab).classList.add('bg-blue-600', 'text-white', 'shadow-md');
        document.getElementById('tab-' + tab).classList.remove('text-slate-600', 'hover:text-blue-600');

        // Show Content with Fade effect
        const content = document.getElementById('content-' + tab);
        content.classList.remove('hidden');
        // Trigger reflow for transition
        void content.offsetWidth; 
        content.classList.add('opacity-100');
    }
</script>
