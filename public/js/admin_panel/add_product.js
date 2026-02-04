$(document).ready(function () {


  $("#description").Editor();
  var content = $("#description").val();
  if(content != ""){
    $("#description").Editor("setText", content);
  }
  
  setTimeout(function () {
    const container = $(".line-control-menu-bar");
    container.children("div:nth-child(1)").css("display", "none");
    container.children("div:nth-child(6)").css("display", "none");
    container.children("div:nth-child(8)").css("display", "none");
  }, 1000);
  

  $("#image").on("change", function () {
    var file = this.files[0];
    if (file) {
      var reader = new FileReader();
      reader.onload = function (e) {
        $('#imagePreview').html('<img src="' + e.target.result + '" class="img-thumbnail" width="120">');
      };
      reader.readAsDataURL(file);
    }
  });
  
  // $("#product_images").on("change", function () {
  //   const files = this.files;
  //   $("#productImagesPreview").empty(); // Clear previous previews
  
  //   if (files.length > 0) {
  //     Array.from(files).forEach(file => {
  //       if (file.type.startsWith("image/")) {
  //         const reader = new FileReader();
  //         reader.onload = function (e) {
  //           $("#productImagesPreview").append(
  //             `<img src="${e.target.result}" class="img-thumbnail me-2 mb-2" width="120">`
  //           );
  //         };
  //         reader.readAsDataURL(file);
  //       }
  //     });
  //   }
  // });
  

  $("#product_images").on("change", function () {
    const files = this.files;
    const productId = $("#product_id").val(); // Make sure this hidden field exists
  
    if (files.length > 0) {
      Array.from(files).forEach((file, index) => {
        if (file.type.startsWith("image/")) {
          const reader = new FileReader();
          reader.onload = function (e) {
            const uniqueId = `new-${Date.now()}-${index}`;
            $("#productImagesPreview").append(`
              <div class="position-relative d-inline-block me-2 mb-2 shadow-sm rounded product-image-container" id="img-${uniqueId}">
                <img src="${e.target.result}" class="img-thumbnail" width="120" style="border-radius: 0.5rem;">
                <span class="remove_image_btn" 
                      data-temp-id="${uniqueId}" 
                      style="position:absolute; top:-10px; right:-8px; background:#dc3545; color:#fff; border-radius:50%; padding:2px 6px; font-size:12px; cursor:pointer;"
                      title="Remove Image">
                  ✖
                </span>
              </div>
            `);
          };
          reader.readAsDataURL(file);
        }
      });
    }
  });
  
  // Remove newly added image preview (not yet uploaded)
  $(document).on("click", ".remove_image_btn[data-temp-id]", function () {
    const tempId = $(this).data("temp-id");
    $(`#img-${tempId}`).remove();
  });
  


  $(document).on("click", ".remove-image-btn", function () {
    let id = $(this).data("id");
    let filename = $(this).data("filename");
    let productId = $(this).data("product-id");
    let target = $("#img-" + id);
  
    Swal.fire({
      title: "Are you sure?",
      text: "This image will be deleted permanently.",
      icon: "warning",
      showCancelButton: true,
      confirmButtonColor: "#d33",
      cancelButtonColor: "#3085d6",
      confirmButtonText: "Yes, delete it!"
    }).then((result) => {
      if (result.isConfirmed) {
        $.ajax({
          url: "delete_product_image",
          method: "POST",
          data: {
            product_image_id: id,
            filename: filename,
            product_id: productId
          },
          success: function (response) {
            let res = JSON.parse(response);
            if (res.success) {
              target.fadeOut(300, function () {
                $(this).remove();
              });
  
              Swal.fire({
                icon: "success",
                title: "Deleted!",
                text: "Image has been removed.",
                timer: 1500,
                showConfirmButton: false
              });
            } else {
              Swal.fire("Error!", res.msg, "error");
            }
          }
        });
      }
    });
  });
  
  
  
  var mode= $("#mode").val();
  // jQuery validation
  $('#add_product').validate({
   
    ignore: [], 
    rules: {
      product_name: {
        required: true
      },
      image: {
        required: function () {
          return mode == "Add"; // Only required in 'add' mode
        }
      },
      category: {
        required: true
      },
      description: {
        // required: true
        required: function () {
          // sync TinyMCE before checking
          
          return  $("#description").Editor("getText").trim() === '';
        }
      }
    },
    messages: {
      product_name: "Please enter product name",
      image: {
        required: "Please upload product image",
      },
      category: "Please select a category",
      description: "Please enter product description"
    },
    errorElement: "div",
    errorClass: "invalid-feedback",
    highlight: function (element) {
      $(element).addClass("is-invalid");
    },
    unhighlight: function (element) {
      $(element).removeClass("is-invalid");
    },
    errorPlacement: function (error, element) {
      if (element.hasClass('select2-hidden-accessible')) {
        error.insertAfter(element.next('.select2'));
      } else {
        error.insertAfter(element);
      }
    },
    submitHandler: function (form) {
      // tinymce.triggerSave(); // Ensure latest content in textarea
      var formData = new FormData(form);
      var content = $("#description").Editor("getText");
      formData.append('content', content);
      var product_id = $("#product_id").val();
      if(product_id == ""){
        var url = 'save_product_data';
      }else{
        var url = 'update_product_data';
      }
      $.ajax({
        url: url,
        type: "POST",
        data: formData,
        contentType: false,
        processData: false,
        dataType: "json",
        success: function (response) {
          //  response = JSON.parse(response);
          var msg = response.msg;
          var success = response.success;
          if (success == 1) {
            toaster("success",msg);
            setTimeout(function(){
              window.location.href = "product";
            },1000);

          } else {
            toaster("error",msg);
          }
        },
        error: function (xhr, status, error) {
          console.error("AJAX Error:", error);
          alert("Something went wrong. Please try again.");
        }
      });

      return false;
    }
  });


 


});
