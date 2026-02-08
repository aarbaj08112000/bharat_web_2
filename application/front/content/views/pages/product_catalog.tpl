<table style="width: 100%; font-size: 10px; border-collapse: collapse;">
    <tr>
        <td style="text-align: right;">
            <a href="https://bharatidcard.com/" style="color: #007BFF; text-decoration: none;">
                &copy; Bharat ID Solution
            </a>
        </td>
    </tr>
</table>
<div style="text-align: center; font-size: 22px; font-weight: bold; color: #b30000;">
   <%$u['product_name']%>
</div>

<div style="width: 100%; border-bottom: 1px solid #222222;">
    
    <div style="text-align: center;">
        <%if $u['image'] neq ''%>
            <img src="public/uploads/product/<%$u['image']%>" alt="Product Image"
                 style="display: block; margin: 0 auto; height: 200px; width: auto; max-width: 100%; border-radius: 25px; border:2px solid #222222">
        <%else%>
            <img src="https://placehold.co/600x400?text=No+Image+Available" alt="No Image"
                 style="display: block; margin: 0 auto; height: 200px; width: auto; max-width: 100%; border-radius: 25px; border:2px solid #222222">
        <%/if%>
    </div>

    <div style="font-size: 14px; font-weight: bold; margin-bottom: 5px;">
        <strong>Product Name:</strong> <span style="color: #b30000;"><%$u['product_name']%></span>
    </div>

    <div style="font-size: 12px; margin-bottom: 10px;">
        <strong>Category:</strong> <span style="color: #b30000;"><%$u['category_name']%></span>
    </div>

    <div style="font-size: 11px;">
        <strong>Description:</strong> <br>
        <span style="margin-left: 10px; margin-right: 10px; margin-bottom: 0px;padding-bottom:0px"><%$u['description']%></span>
    </div>
</div>


