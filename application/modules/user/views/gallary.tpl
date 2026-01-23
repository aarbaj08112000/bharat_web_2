
<div class="content-wrapper">
  <!-- Content -->

  <div class="container-xxl flex-grow-1 container-p-y">
 

    <nav aria-label="breadcrumb">
      <div class="sub-header-left pull-left breadcrumb">
        <h1>
           Home
          <a hijacked="yes" href="javascript:void(0)" class="backlisting-link" title="Back to Issue Request Listing" >
            <i class="ti ti-chevrons-right" ></i>
            <em >Gallary</em></a>
          </h1>
          <br>
          <span >Gallary</span>
        </div>
      </nav>

      <div class="dt-top-btn d-grid gap-2 d-md-flex justify-content-md-end mb-5">
        <%* <button class="btn btn-seconday" type="button" id="downloadCSVBtn" title="Download CSV"><i class="ti ti-file-type-csv"></i></button>
        <button class="btn btn-seconday" type="button" id="downloadPDFBtn" title="Download PDF"><i class="ti ti-file-type-pdf"></i></button>
        <button class="btn btn-seconday filter-icon" type="button"><i class="ti ti-filter" ></i></i></button>
        <button class="btn btn-seconday" type="button"><i class="ti ti-refresh reset-filter"></i></button> *%>
        
        <button type="button" class="btn btn-seconday" data-bs-toggle="modal" data-bs-target="#addBrands" title="Add process">
       <i class="ti ti-plus"></i>
        </button>
       

      </div>
      <div class="modal fade" id="addBrands" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
         <div class="modal-dialog  modal-dialog-centered" role="document">
            <div class="modal-content">
               <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Add Gallary</h5>
                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

                  </button>
               </div>
               <form action="<%base_url('add_gallary')%>" method="POST" enctype="multipart/form-data" id="add_brands" class="add_brands custom-form">
               <div class="modal-body">
                  <div class="form-group">
                  </div>
                  <div class="form-group">
                  	<label for="on click url">Select type<span class="text-danger">*</span></label> <br>
                  	<select name="type" class="form-control required-input" required>
                        <option value="">Select Type</option>
                        <option value="image">Image</option>
                        <option value="video">Video</option>
                     </select>
                  </div>
                  

                  <div class="form-group">
                    <label for="on click url">Image/Video<span class="text-danger">*</span></label> <br>
                    <input  type="file" name="image_Video" accept="image/*,video/mp4,video/webm"  class="form-control required-input" value="" >
                </div>

               </div>
               <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
               <button type="submit" class="btn btn-primary">Save changes</button>
               </form>
               </div>
            </div>
         </div>
      </div>
      <div class="w-100">
            <input type="text" name="reason" placeholder="Filter Search" class="form-control serarch-filter-input m-3 me-0" id="serarch-filter-input" fdprocessedid="bxkoib">
        </div>

      <!-- Main content -->
      <div class="card p-0 mt-4 w-100">
        <div class="">

          <div class="table-responsive text-nowrap">
            <table width="100%" border="1" cellspacing="0" cellpadding="0" class="table table-striped" style="border-collapse: collapse;" border-color="#e1e1e1" id="brands">
              <thead>
                 <tr>
                    <!-- <th>Sr No</th> -->
                    <th>Type</th>
                    <th>Image/Vedio </th>
                    
                    <th>Status</th>
                    <th>Action</th>
                 </tr>
              </thead>
              <tbody>
              <%if ($gallery) %>
                      <%assign var='i' value= 1 %>
                      <%foreach from=$gallery item=val %>
                     <tr>
                        <!-- <td><%$i %></td> -->
                        <td>
                        <%$val['type']|capitalize %>

                       </td>
                        <td>
                        <%if $val['type'] == 'image' %>
                           <img src="<%base_url()%>public/uploads/gallary/<%$val['image_Video'] %>" alt="<%$val['image_Video'] %>" width="50" height="50">
                        <%else %>
                           <video width="50" height="50" controls>
                              <source src="<%base_url()%>public/uploads/gallary/<%$val['image_Video'] %>" type="video/mp4">
                              
                           </video>
                        <%/if %>
                        </td>

                       
                       
                        <td style="font-weight: bold; 
                            <%if $val['status'] == 'Active' %>color: green;<%else %>color: red;<%/if %>">
                            <%$val['status'] %>
                        </td>


                        <td>
                          
                        	<a type="button" class="" data-bs-toggle="modal" data-bs-target="#updateGroup<%$i %>" title="Edit">
					       		<i class="ti ti-edit edit-part" ></i>
					        </a>
                       <span class="delete_data" title="Delete Record" data-id="<%$val['gallery_id']%>"><i class="ti ti-trash"></i>
                       </span>
                        	<div class="modal fade" id="updateGroup<%$i %>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						         <div class="modal-dialog  modal-dialog-centered" role="document">
						            <div class="modal-content">
						               <div class="modal-header">
						                  <h5 class="modal-title" id="exampleModalLabel">Update Gallary</h5>
						                  <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">

						                  </button>
						               </div>
						               <form action="<%base_url('update_gallery')%>" method="POST" enctype="multipart/form-data" id="update_brands<%$i %>" class="update_brands update_brands<%$i %> custom-form">
						               	<input type="hidden" name="gallery_id" value="<%$val['gallery_id']%>">
						               <div class="modal-body">
						                  <div class="form-group">
						                  </div>
						                  <div class="form-group">
						                  	<label for="on click url">Type<span class="text-danger">*</span></label> <br>
						                  	<select name="type" class="form-control select2 " id="type">
								                	<option value="image" <%if $val['type'] eq 'image'%>selected<%/if%>>Image</option>
								                	<option value="video" <%if $val['type'] eq 'video'%>selected<%/if%>>Video</option>
								             	</select>
						                  </div>
						                  <div class="form-group">
						                  	<label for="on click url">Image/Video</label> <br>
						                  	<input  type="hidden" name="hidden_image_Video" class="form-control " value="<%$val['image_Video'] %>" >
						                  	<input  type="file" name="image_Video"  class="form-control"  accept="image/*,video/mp4,video/webm">
						                  </div>
						                  

										   <div class="form-group">
						                  		<label for="on click url">Status</label> <br>
						                  	 	<select name="status" class="form-control select2 " id="status">
								                	<option value="Active" <%if $val['status'] eq 'Active'%>selected<%/if%>>Active</option>
								                	<option value="Inactive" <%if $val['status'] eq 'Inactive'%>selected<%/if%>>Inactive</option>
								             	</select>
						                  	</div>
						               </div>
						               <div class="modal-footer">
						               <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
						               <button type="submit" class="btn btn-primary">Save changes</button>
						               </form>
						               </div>
						            </div>
						         </div>
                        </td>
                     </tr>
                  <%assign var='i' value=$i+1 %>
                  <%/foreach%>
                  <%/if%>
              
                 </tbody>
           </table>
          </div>
        </div>
        <!--/ Responsive Table -->
      </div>
      <!-- /.col -->


      <div class="content-backdrop fade"></div>
    </div>


    <script type="text/javascript">
    var base_url = <%$base_url|@json_encode%>
    </script>

    <script src="<%$base_url%>public/js/admin_panel/gallary.js">"></script>
