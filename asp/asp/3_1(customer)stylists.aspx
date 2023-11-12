<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_1(customer)stylists.aspx.cs" Inherits="_3_1_customer_stylists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hairstyle</title>
  <link rel="shortcut icon" href="images/fav-icon.png" />
  <!--poppins-font-family------------------->
  <link rel="preconnect" href="https://fonts.gstatic.com"/>
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
    rel="stylesheet"/>
    <link rel="stylesheet" href="css/3_1(customer)stylists.css"/>
  <!--using-Font-Awesome-------------------->
  <script src="https://kit.fontawesome.com/c8e4d183c2.js" crossorigin="anonymous"></script>
  <script>
    function sorthair() {
      var select = document.getElementById("sort");
      var sortOption = select.options[select.selectedIndex].value;
      var hairs = document.getElementsByClassName("hair");
      var hairArray = Array.from(hairs);
      if (sortOption === "name") {
        hairArray.sort(function (a, b) {
          var nameA = a.querySelector(".name").textContent.toUpperCase();
          var nameB = b.querySelector(".name").textContent.toUpperCase();
          if (nameA < nameB) {
            return -1;
          }
          if (nameA > nameB) {
            return 1;
          }
          return 0;
        });
      } else if (sortOption === "review") {
        hairArray.sort(function (a, b) {
          var reviewA = a.querySelector(".review").textContent.toUpperCase();
          var reviewB = b.querySelector(".review").textContent.toUpperCase();
          if (reviewA < reviewB) {
            return 1;
          }
          if (reviewA > reviewB) {
            return -1;
          }
          return 0;
        });
      }
      else if (sortOption === "comment") {
        hairArray.sort(function (a, b) {
          var commentA = a.querySelector(".comment").textContent.toUpperCase();
          var commentB = b.querySelector(".comment").textContent.toUpperCase();
          if (commentA < commentB) {
            return 1;
          }
          if (commentA > commentB) {
            return -1;
          }
          return 0;
        });
      }
      var hairList = document.getElementById("hair-list");
      for (var i = 0; i < hairArray.length; i++) {
        hairList.appendChild(hairArray[i]);
      }
    }
  </script>
</head>
<body>
    <table class="tb">
    <tr>
      <td style="padding-right: 100px;">
        <form>

          <input type="text" id="search" name="search" placeholder=" Search... "
            style="background-color: white; border-radius: 1px;"/>
          <button type="button" onclick="search()" class="btn">&ensp;Search&ensp;</button>
        </form>
      </td>

      <td>
        <img src="./Images/logo.jpeg" style="width: 100px; margin-top: 3px;"/>


      </td>
      <td style="padding-left: 100px;">
        <form>



          <label for="sort">Sort by:</label>
          <select id="sort">
            <option value="name">Name</option>
            <option value="review">Review</option>
            <option value="comment">Comment</option>
          </select>
          <button type="button" onclick="sorthair()" class="btn">&ensp;Sort&ensp;</button>
        </form>
      </td>
    </tr>
  </table>

  <hr/>
  <br/>

  <div id="hair-list">

    <div class="hair ">
      <a href="3_2profile.aspx">
        <table border="1" class="hairr" style="width: 60%; left: 20%; position: relative; ">
          <tr>
            <td class="section-image"> <img src="./Images/7.jpg" /></td>
            <td>
              <div class="box-top">
                <!--profile----->
                <div class="profile">
                  <!--img---->
                  <div class="profile-img">
                    <img src="./Images/3.jpg" />
                  </div>
                  <!--name-and-username-->
                  <div>
                    <%--<strong class="name">Micky James</strong>--%>
            <h3 class="username"><asp:Label ID="lblSalon" runat="server" Text=""></asp:Label></h3>

                    <span>@mickyjames</span>
                  </div>
                </div>
                <!--reviews------>
                <div>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
                  <i class="far fa-star"></i><!--Empty star-->
                  <span class="review">(3)</span>
                </div>
              </div>
              <p class="comment">Good Service and Definitely one of the best hair stylists I've had the pleasure to cut
                my hair in all my experiences. </p>
            </td>
          </tr>
        </table>
      </a>
      <!-- <h2 class="name">John Smith</h2>
        <p class="review">Great</p> -->
      <br>

    </div>


    <div class="hair">
      <a href="3_2profile1.aspx">
        <table border="1" class="hairr" style="width: 60%; left: 20%; position: relative;">
          <tr>
            <td class="section-image"> <img src="./Images/style1.png" /></td>
            <td>
              <div class="box-top">
                <!--profile----->
                <div class="profile">
                  <!--img---->
                  <div class="profile-img">
                    <img src="./Images/y.jfif" />
                  </div>
                  <!--name-and-username-->
                  <div class="name-user">
                    <strong class="name">Daniel Redclief</strong>
                    <span>@DanielRedclief</span>
                  </div>
                </div>
                <!--reviews------>
                <div>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i>
                  <i class="far fa-star"></i><!--Empty star-->
                  <span class="review">(3)</span>
                </div>
              </div>
              <p class="comment">Bad Service as lights were not perfectly working.And best of all, I know I can always
                depend on walking out of your salon feeling and looking my best!</p>
            </td>
          </tr>
        </table>
      </a>
      <br>
      <!-- <h2 class="name">Aane Doe</h2>
        <p class="review">Bad</p> -->
    </div>

    <div class="hair">
      <a href="3_2profile2.aspx">

        <table border="1" class="hairr" style="width: 60%; left: 20%; position: relative;">
          <tr>
            <td class="section-image"> <img src="./Images/OIP (1).jfif" /></td>
            <td>
              <div class="box-top">
                <!--profile----->
                <div class="profile">
                  <!--img---->
                  <div class="profile-img">
                    <img src="./Images/c-1.jpg" />
                  </div>
                  <!--name-and-username-->
                  <div class="name-user">
                    <strong class="name">J.K Rowling</strong>
                    <span>@jkrowling</span>
                  </div>
                </div>
                <!--reviews------>
                <div>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i><!--Empty star-->
                  <span class="review">(5)</span>
                </div>
              </div>
              <p class="comment">Great Service! Thank you so much for the wonderful work you do! I love my cut and
                color. And best of all, I know I can always depend on walking out of your salon feeling and looking my
                best!</p>
            </td>
          </tr>
        </table>
      </a>
      <br>
      <!-- <h2 class="name">Doe</h2>
        <p class="review">Good</p> -->
    </div>

    <div class="hair">


      <a href="3_2profile3.aspx">
        <table border="1" class="hairr" style="width: 60%; left: 20%; position: relative;">

          <tr>
            <td class="section-image"> <img src="./Images/style10.png" /></td>
            <td>
              <div class="box-top">
                <!--profile----->
                <div class="profile">
                  <!--img---->
                  <div class="profile-img">
                    <img src="./Images/h3.png" />
                  </div>
                  <!--name-and-username-->
                  <div class="name-user">
                    <strong class="name">Oliva Adward</strong>
                    <span>@Olivaadward</span>
                  </div>
                </div>
                <!--reviews------>
                <div>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="fas fa-star"></i>
                  <i class="far fa-star"></i><!--Empty star-->
                  <span class="review">(4)</span>
                </div>
              </div>
              <p class="comment">Bad Service and can have better mirror And best of all, I know I can always depend on
                walking out of your salon feeling and looking my best!</p>
            </td>
          </tr>
        </table>
      </a>
      <br>
      <!-- <h2 class="name">Jne Doe</h2>
        <p class="review">Bad bad</p> -->
    </div>
  </div>
</body>
</html>
