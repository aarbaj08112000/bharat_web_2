<div class="page-section py-20 bg-gray-50">
    <div class="container mx-auto px-6">
        
        <!-- Page Header -->
        <div class="text-center mb-12" data-aos="fade-up">
            <h2 class="text-3xl font-bold text-slate-800 mb-4">Our Products</h2>
            <div class="w-20 h-1 bg-blue-600 mx-auto rounded-full"></div>
            <p class="text-gray-600 mt-4 max-w-2xl mx-auto">Browse our premium collection of ID cards and accessories.</p>
        </div>

        <div class="grid md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8">
            <%if ($products) %>
                <%foreach from=$products item=u %>
                <!-- Product Card -->
                <div class="bg-white rounded-2xl shadow-sm hover:shadow-xl transition duration-300 group overflow-hidden border border-gray-100 flex flex-col h-full" data-aos="fade-up">
                    <div class="relative h-64 overflow-hidden bg-gray-100 cursor-pointer card-trigger">
                        <img src="public/uploads/product/<%$u['image']%>" alt="<%$u['product_name']%>" class="w-full h-full object-cover group-hover:scale-110 transition duration-500" onerror="this.onerror=null; this.src='https://placehold.co/600x400?text=No+Image';">
                        <div class="absolute inset-0 bg-black/40 opacity-0 group-hover:opacity-100 transition duration-300 flex items-center justify-center">
                            <span class="px-6 py-2 bg-white text-slate-800 rounded-full font-bold text-sm transform translate-y-4 group-hover:translate-y-0 transition duration-300 shadow-lg">View Details</span>
                        </div>
                    </div>
                    
                    <div class="p-6 flex-grow flex flex-col">
                        <div class="text-xs font-bold text-blue-600 uppercase tracking-wider mb-2"><%$u['category_name']%></div>
                        <h3 class="text-xl font-bold text-slate-800 mb-3"><%$u['product_name']%></h3>
                        
                        <!-- Hidden Data for Modal -->
                        <div class="hidden">
                            <input type="hidden" class="hidden-id" value="<%$u['product_id']%>">
                            <input type="hidden" class="hidden-title" value="<%$u['product_name']%>">
                            <input type="hidden" class="hidden-category" value="<%$u['category_name']%>">
                            <input type="hidden" class="hidden-image" value="public/uploads/product/<%$u['image']%>">
                            <div class="hidden-description-data"><%$u['description']%></div>
                        </div>

                        <!-- Button - Direct link to detail page -->
                        <a href="product_details.html?id=<%encode_id($u['product_id'])%>" class="mt-auto w-full py-3 border border-gray-200 rounded-xl text-gray-600 font-bold hover:bg-blue-600 hover:text-white hover:border-blue-600 transition block text-center">
                            Details
                        </a>
                    </div>
                </div>
                <%/foreach%>
            <%else%>
                <div class="col-span-full text-center py-20">
                    <div class="inline-block p-6 rounded-full bg-gray-100 text-gray-400 mb-4 text-4xl">
                        <i class="fas fa-box-open"></i>
                    </div>
                    <h4 class="text-xl font-bold text-gray-600">No products found.</h4>
                    <p class="text-gray-500">Please check back later.</p>
                </div>
            <%/if%>
        </div>
    </div>
</div>

<!-- Product Detail Modal -->
<div id="productModal" class="fixed inset-0 z-50 hidden flex items-center justify-center bg-black/80 backdrop-blur-sm opacity-0 transition-opacity duration-300">
    <div class="bg-white w-full max-w-4xl mx-4 rounded-2xl overflow-hidden shadow-2xl transform scale-95 transition-transform duration-300 relative flex flex-col md:flex-row h-[90vh] md:h-auto">
        
        <!-- Close Button -->
        <button id="closeProductModal" class="absolute top-4 right-4 z-10 w-10 h-10 bg-white/80 rounded-full flex items-center justify-center hover:bg-white text-gray-800 transition shadow-md">
            <i class="fas fa-times"></i>
        </button>

        <!-- Image Side -->
        <div class="md:w-1/2 bg-gray-100 flex items-center justify-center p-8 relative">
            <img id="modalImage" src="" alt="Product" class="max-h-[60vh] md:max-h-[500px] object-contain shadow-lg rounded-lg" onerror="this.onerror=null; this.src='https://placehold.co/600x400?text=No+Image';">
        </div>

        <!-- Content Side -->
        <div class="md:w-1/2 p-8 md:p-10 flex flex-col overflow-y-auto">
            <div class="mb-4">
                <span id="modalCategory" class="px-3 py-1 bg-blue-100 text-blue-700 rounded-full text-xs font-bold uppercase tracking-wide">Category</span>
            </div>
            <h2 id="modalTitle" class="text-3xl font-bold text-slate-800 mb-6">Product Name</h2>
            
            <div class="text-gray-600 mb-6" id="modalDescription">
                <!-- Short description content -->
            </div>
            
            <a href="#" id="modalReadMore" class="inline-flex items-center gap-2 text-blue-600 font-bold hover:text-blue-700 transition mb-6">
                Read More <i class="fas fa-arrow-right"></i>
            </a>

            <div class="mt-auto">
                <a href="contact.html" class="block w-full text-center py-4 bg-blue-600 text-white font-bold rounded-xl hover:bg-blue-700 transition shadow-lg hover:shadow-blue-500/30">
                    <i class="fas fa-paper-plane mr-2"></i> Request Quote / Order
                </a>
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function() {
    const modal = document.getElementById('productModal');
    const modalContent = modal.querySelector('div'); // The inner white box

    function encode_id(id) {
        return btoa(id).replace(/\+/g, '-').replace(/\//g, '_').replace(/=+$/, '');
    }

    function openModal(card) {
        const productId = card.find('.hidden-id').val();
        const title = card.find('.hidden-title').val();
        const category = card.find('.hidden-category').val();
        const image = card.find('.hidden-image').val();
        const fullDesc = card.find('.hidden-description-data').html();
        
        // Truncate description to ~150 characters
        const tempDiv = $('<div>').html(fullDesc);
        const textContent = tempDiv.text();
        const truncated = textContent.length > 150 ? textContent.substring(0, 150) + '...' : textContent;

        $('#modalTitle').text(title);
        $('#modalCategory').text(category);
        
        // Check if image path is empty or null, use placeholder
        if (!image || image.trim() === '' || image === 'null') {
            $('#modalImage').attr('src', 'https://placehold.co/600x400?text=No+Image+Available');
        } else {
            $('#modalImage').attr('src', image);
        }
        
        $('#modalDescription').text(truncated);
        $('#modalReadMore').attr('href', 'product_details.html?id=' + encode_id(productId));

        // Show Modal
        modal.classList.remove('hidden');
        setTimeout(() => {
            modal.classList.remove('opacity-0');
            modalContent.classList.remove('scale-95');
            modalContent.classList.add('scale-100');
        }, 10);
    }

    function closeModal() {
        modal.classList.add('opacity-0');
        modalContent.classList.remove('scale-100');
        modalContent.classList.add('scale-95');
        setTimeout(() => {
            modal.classList.add('hidden');
        }, 300);
    }

    $('.card-trigger').click(function(e) {
        e.preventDefault();
        openModal($(this).closest('.group')); // Find parent container
    });

    $('#closeProductModal').click(closeModal);
    
    // Close on click outside
    $(modal).click(function(e) {
        if (e.target === modal) closeModal();
    });
});
</script>
