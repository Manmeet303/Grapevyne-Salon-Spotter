<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3(customer)Landing.aspx.cs" Inherits="_3_customer_Landing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grapevyne</title>
  <link rel="stylesheet" href="css/3(customer)Landing.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</head>
<body>
    <div class="c1">
   <nav>
    <img src="./Images/logo.jpeg" style="width: 5rem;">
    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Listings</a></li>
        <li><a href="#">About</a></li>
        <li>
            <!-- Profile icon and customer name -->
            <a href="#" id="profileLink" runat="server" onserverclick="profileLink_Click">
                <i class="fas fa-user" aria-hidden="true" id="iconProfile" runat="server"></i>
                <asp:Label ID="lblCustomerName" runat="server" CssClass="customer-name" Visible="false"></asp:Label>
            </a>
        </li>
    </ul>
</nav>

<script>
    // Redirect to ProfilePopup.aspx page when profile icon is clicked
    document.getElementById("profileLink").addEventListener("click", function() {
        window.location.href = "ProfilePopup.aspx";
    });
</script>


    <header>
      <h1>Welcome to Grapevyne</h1>
      <h2>Looking for Hairstylist in your Location!</h2>
      <a href="3_1(customer)stylists.aspx">Find My Stylist</a>
    </header>
    <h2 class="he2">Our Services</h2>
    <section class="services">

      <div class="service">
        <img src="./Images/12.jpg" alt="Haircut">
        <h3>Haircut</h3>
        <p>One of the best haircut in your area.</p><br>
        <a href="#">Learn More</a>
      </div>
      <div class="service">
        <img src="./Images/8.jpg" alt="Color">
        <h3>Color</h3>
        <p>Various color are available according to your choice.</p>
        <a href="#">Learn More</a>
      </div>
      <div class="service">
        <img src="./Images/9.jpg" alt="Style">
        <h3>Style</h3>
        <p>Our main purpose is to style your hair perfectly with various styles available.</p>
        <a href="#">Learn More</a>
      </div>
    </section>
    <section class="about">
      <h2>About Us</h2>
      <p>Grapevyne one of the best Hairstylist in the africa.Here there are varoius haircut, varoius hair color, varoius
        hair style are available And that is also in your perfreed Location,Time,Date,Hairstylist.Not only that we take
        care of our customer very well with having Music as per there choice ,Television channel as per there choice and
        Water if needed.So,Grapevyne WELCOME YOU OUR PLACE.</p>
      <a href="#">Learn More</a>
    </section>

  </div>
</body>
</html>
