
  <style>
    .card-title {
      font-weight: 600;
      color: rgba(0, 172, 193, 1) 100%;
    }
    .card-body h3{
        color: #002c85;
        margin: 0px;
    }
    .gradient-border-bottom {
    position: relative;
   
    color: #b30000; /* Text color */
}

.gradient-border-bottom::after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    height: 4px; /* thickness of the border */
    width: 100%;
    border-bottom-right-radius:25px;
    border-bottom-left-radius:25px;
    background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
}
    .gradient-bg {
      background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
      color: white;
    }
    .rounded-circle-border {
      border-radius: 50%;
      padding: 5px;
      background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
    }
    .rounded-circle-inner {
      background: #fff;
      width: 100px;
      height: 100px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: bold;
    }
    .scroll-card-body {
      max-height: 300px;
      overflow-y: auto;
    }
    .btn-link{
      color:rgba(84, 58, 183, 1) !important ;
    }
  </style>
</head>
<body>
  <div class="container-fluid p-4">
    <h2 class="mb-4" style="background: linear-gradient(60deg, rgba(84, 58, 183, 1) 0%, rgba(0, 172, 193, 1) 100%);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  display: inline-block;">Bharat ID Card Solution</h2>

    <!-- Summary Cards -->
    <div class="row g-4 mb-4">
      <div class="col-md-3">
        <div class="card gradient-border-bottom ">
          <div class="card-body">
            <h5 class="card-title">Total Visitors</h5>
            <h3><%$total_visitor_count %></h3>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card gradient-border-bottom ">
          <div class="card-body">
            <h5 class="card-title">Today Visitors</h5>
            <h3><%$today_visitor_count %></h3>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card gradient-border-bottom ">
          <div class="card-body">
            <h5 class="card-title">Total Contacts</h5>
            <h3><%$total_contact_count %></h3>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card gradient-border-bottom ">
          <div class="card-body">
            <h5 class="card-title">Todays Contact</h5>
            <h3><%$today_contact_count %></h3>
          </div>
        </div>
      </div>
    </div>

    <!-- Visitor List and Contact Us List -->
    <div class="row g-4">
      <div class="col-md-6">
        <div class="card h-100">
         
          <div class="card-header d-flex justify-content-between align-items-center border-bottom">
            <span>Today's Visitors</span>
            <a href="visitor" class="btn btn-sm btn-link">View More</a>
          </div>

          <div class="scroll-card-body">
            <ul class="list-group list-group-flush">
         
            <%if $today_visitor|@count > 0 %>
            <%assign var='i' value= 1 %>
            <%foreach from=$today_visitor item=u %>
              <li class="list-group-item"><%$u['name'] %></li>
              <%assign var='i' value=$i+1 %>
              <%/foreach%>
              <%else %>
              <li class="list-group-item text-center text-muted">Data not available</li>
            <%/if %>
            </ul>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="card h-100">
          <div class="card-header d-flex justify-content-between align-items-center border-bottom">
          <span>New Contact Us Submissions</span>
          <a href="contact" class="btn btn-sm btn-link">View More</a>
        </div>
          <div class="scroll-card-body">
            <ul class="list-group list-group-flush">
            <%if $today_contact|@count > 0 %>
              <%assign var='i' value=1 %>
              <%foreach from=$today_contact item=u %>
                <li class="list-group-item">
                  <strong><%$u.first_name %> <%$u.last_name %></strong> - <%$u.email %><br>
                  Interested in: <%$u.subject %>
                </li>
                <%assign var='i' value=$i+1 %>
              <%/foreach %>
            <%else %>
              <li class="list-group-item text-center text-muted">Data not available</li>
            <%/if %>
          </ul>
        
          </div>
        </div>
      </div>
      
      <div class="col-md-6">
  <div class="card h-100">
    <div class="card-header d-flex justify-content-between align-items-center border-bottom">
      <span>Client Testimonials & Feedback</span>
      <a href="review" class="btn btn-sm btn-link">View More</a>
    </div>

    <div class="scroll-area pe-2 review-scroll" style="overflow-y: auto; max-height: 400px;">
      <%if $rating_review|@count > 0 %>
        <%foreach from=$rating_review item=u %>
          <div class="review-card d-flex align-items-start border-bottom p-2">
            <div>
              <h6 class="mb-0"><%$u['name']|capitalize %></h6>
              <p class="mb-1"><%$u['review'] %></p>
              <div class="text-warning">
                <%section name=star loop=$u['rating']%>★<%/section%>
              </div>
            </div>
          </div>
        <%/foreach%>
      <%else%>
        <p class="text-center text-muted p-3">No reviews found.</p>
      <%/if%>
    </div>
  </div>
</div>

<div class="col-md-6">
<div class="card h-100">
  <div class="card-header d-flex justify-content-between align-items-center border-bottom">
    <span>Categories</span>
    <a href="category" class="btn btn-sm btn-link">View More</a>
  </div>

  <div class="scroll-area pe-2 review-scroll" style="overflow-y: auto; max-height: 400px;">
    <%if $category|@count > 0 %>
      <%foreach from=$category item=u %>
        <div class="review-card d-flex align-items-start border-bottom p-2">
          <div>
            <h6 class="mb-0"><%$u['category_name']|capitalize %></h6>
          </div>
        </div>
      <%/foreach%>
    <%else%>
      <p class="text-center text-muted p-3">No Categories found.</p>
    <%/if%>
  </div>
</div>
</div>


    </div>

    <!-- Categories Overview -->
  
  </div>

 