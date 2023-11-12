<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_2profile1.aspx.cs" Inherits="_3_2profile1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Profile Page</title>
  <!-- import font icon (fontawesome) -->
  <script src="https://kit.fontawesome.com/b8b432d7d3.js" crossorigin="anonymous"></script>
  <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
    integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="css/3_2profile1.css"/>
</head>
<body>
    <div class="container">

    <div class="profile-card">
      <div class="profile-header" style="background-image: url(./Images/y.jfif); background-position: 20px -70px;">
        <!-- profile header section -->

        <div class="main-profile">
          <div class="profile-image" style="background-image: url(./Images/style1.png); background-position: 130px;">
          </div>
          <div class="profile-names">
            <h1 class="username">Daniel Redclief</h1>
            <small class="page-title">Inner beauty Salon<br>
            </small>


          </div>

        </div>
      </div>

      <div class="profile-body"><!-- profile body section -->
        <div class="profile-actions">

          <section class="bio">
            <div class="bio-header">
              <i class="fa fa-info-circle"></i>
              Bio

            </div>
            <hr>
            <p class="bio-text">
              Daniel is an experienced natural hair proffesional with more than 10 year of salon experience
              <a href="#" class="more-button">More</a>
            <div class="more-content" style="display:none;">
              <p>Additional content that will be shown when the "More" button is clicked</p>
              <a href="#" class="close-button">close</a>
            </div>
            </p>
          </section>
        </div>

        <div class="account-info">

          <div class="data">

            <h1 style=" border-bottom: 1px solid var(--border-color);">Photos</h1><br>
            <table>
              <tr>
                <td>
                  <img src="./Images/profile/4.jpg" class="image1">


                  <img src="./Images/profile/OIP (2).jfif" class="image1">


                </td>

              </tr>

              <tr>
                <td>
                  <img src="./Images/profile/OIP (7).jfif" class="image1">



                  <img src="./Images/plus (1).svg" class="image2" onclick="openModal()">


                </td>
              </tr>

            </table>


          </div>

          <div class="Review">

            <table border="2px">
              <tr>


                <td>
                  <div class="text-center">
                    <br><i class="fa-regular fa-solid fa-star"></i>
                    <i class="fa-regular fa-solid fa-star"></i>
                    <i class="fa-regular fa-solid fa-star"></i>
                    <i class="fa-regular fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                  </div>
                  <br>
                </td>

              </tr>
              <tr>
                <td>
                  <br>
                  <div class="text-center"> Karen is an experienced natural hair proffesional with more than 10 year of
                    salon experience </div>
                  <br>

                </td>
              </tr>
              <tr>
                <td><br>
                  <div class="text-center"> See All My Reviews </div>
                  <br>
                </td>
              </tr>
            </table>
          </div>
          <div class="service">
            <div class="booking">
              <table class="booking  position-absolute">
                <tr>
                  <td>
                    <div>
                      <h2>Services</h2>
                    </div>
                  </td>
                </tr>
                <tr>
                  <td style="width: 590px;"><br></td>
                </tr>

                <tr>
                  <td>
                    <h5>
                      <!-- <img src="h6.jpg" style="width: 50px; height: 50px;border-radius: 50%; background-size: cover;"> -->
                      Loc Retwish

                      <br>$60
                    </h5>
                  </td>


                  <td><button type="button" style="background-color: rgb(137, 131, 131); color: aliceblue;
                             border-radius: 5px; font-size: 20px; padding: 5px;" onclick="openModal1()">Book</button>
                  </td>
                </tr>
                <tr>
                  <td>
                    <hr color="#fff">
                  </td>
                </tr>

                <tr>
                  <td><br></td>
                </tr>
                <tr>
                  <td>
                    <h5>Bantu Knot Style</h5>$70</h5>
                  </td>

                  <td><button type="button" style="background-color: rgb(137, 131, 131); color: aliceblue; 
                            border-radius: 5px; font-size: 20px;padding: 5px;" onclick="openModal1()">Book</button>
                  </td>
                </tr>
                <tr>
                  <td>
                    <hr color="#fff">
                  </td>
                </tr>

                <tr>
                  <td><br></td>
                </tr>
                <tr>
                  <td>
                    <h5>Faux Locs<br>$80</h5>
                  </td>

                  <td><button type="button" style="background-color: rgb(137, 131, 131); color: aliceblue; 
                            border-radius: 5px; font-size: 20px; padding: 5px;" onclick="openModal1()">Book</button>
                  </td>
                </tr>
                <tr>
                  <td>
                    <hr color="#fff">
                  </td>
                </tr>

                <tr>
                  <td><br></td>
                </tr>
                <tr>
                  <td>
                    <h5>Bantu Knot Locs<br>$75</h5>
                  </td>

                  <td><button type="button" style="background-color: rgb(137, 131, 131); color: aliceblue;
                             border-radius: 5px; font-size: 20px; padding: 5px;" onclick="openModal1()">Book</button>
                  </td>
                </tr>
                <tr>
                  <td>
                    <hr color="#fff">
                  </td>
                </tr>
              </table>

            </div>


          </div>
          <div class="Review2">

            <table class="s text-center col-7">
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td>
                  <h5>Review</h5>
                </td>
              </tr>
              <tr>
                <td>
                  <div class="text-center">
                    <i class="fa-regular fa-solid fa-star"></i>
                    <i class="fa-regular fa-solid fa-star"></i>
                    <i class="fa-regular fa-solid fa-star"></i>
                    <i class="fa-regular fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>(18)
                  </div>
                  <br>
                  <br>
                </td>
              </tr>
              <tr>
                <td align="center">
                  <table style="width: 35%; border: 2px solid white; padding: 2px; border-radius: 3px;">
                    <tr>
                      <td>
                        <div>Possibly Breakdown of star review with percentage here, super important though
                        </div>
                      </td>
                    </tr>

                  </table>


                </td>
              </tr>

              <tr>
                <td><br></td>
              </tr>
            </table>



          </div>
          <div class="Review3">

            <div>
              <div>
                <i class="fa-regular fa-solid fa-star"></i>
                <i class="fa-regular fa-solid fa-star"></i>
                <i class="fa-regular fa-solid fa-star"></i>
                <i class="fa-regular fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>&nbsp;&nbsp;&nbsp;Manmeet<br><br>

                Holi is a two-day festival. It is celebrated with great joy in India and other countries.
                It is a colourful festival with people of all religions celebrating with joy.
                After burning the Holika idol, people gather and daub colours at each other.<br>
                <br>
                <hr color="white">
                <br>
              </div>
              <div>
                <i class="fa-regular fa-solid fa-star"></i>
                <i class="fa-regular fa-solid fa-star"></i>
                <i class="fa-regular fa-solid fa-star"></i>
                <i class="fa-regular fa-solid fa-star"></i>
                <i class="fa-regular fa-star"></i>&nbsp;&nbsp;&nbsp;Manmeet<br><br>

                Holi is a two-day festival. It is celebrated with great joy in India and other countries.
                It is a colourful festival with people of all religions celebrating with joy.
                After burning the Holika idol, people gather and daub colours at each other.<br>
                <br>
                <hr color="white">
                <br>
              </div>
            </div>
          </div>
          <div class="last-post">
            <table class="position-absolute ">
              <tr>
                <td>
                  <h2>Contact Infos</h2>
                  <hr>
                </td>
              </tr>
              <tr>
                <td>
                  Bussiness Review
                </td>
              </tr>
              <tr>
                <td>
                  Message the stylish
                </td>
              </tr>
              <tr>
                <td>
                  Info regarding fee etc
                </td>
              </tr>
              <tr>
                <td>
                  (all that can go here)
                </td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
              <tr>
                <td><br></td>
              </tr>
            </table>
          </div>
        </div>
      </div>
    </div>

  </div>
  <div id="myModal" class="modal" align="center">
    <div class="modal-content">
      <span class="close" onclick="closeModal()">&times;</span>

      <div class="bg">
        <img src="./Images/profile/4.jpg" alt="Image 1">

        <img src="./Images/profile/OIP (2).jfif" alt="Image 2">

        <img src="./Images/profile/OIP (7).jfif" alt="Image 3">

        <img src="./Images/profile/OIP (5).jfif" alt="Image 4">
        <br>

        <img src="./Images/profile/OIP.jfif" alt="Image 5">

        <img src="./Images/profile/section-1.jpg" alt="Image 6">

        <img src="./Images/profile/section-4.jpg" alt="Image 7">

        <img src="./Images/profile/style1.png" alt="Image 8">

        <br>


        <img src="./Images/profile/style2.png" alt="Image 9">

        <img src="./Images/profile/style3.png" alt="Image 10">

        <img src="./Images/profile/style4.png" alt="Image 11">

        <img src="./Images/profile/style5.png" alt="Image 12">
      </div>
    </div>
  </div>

  <div id="myModal1" class="modal1" align="center">

    <div class="modal-content1">
      <span class="close" onclick="closeModal1()">&times;</span>
      <form>
        <table class="form-group">
          <tr>
            <td style="text-align: center; font-size: 30px;" colspan="3">Services
              <hr>
            </td>
          </tr>
          <tr>

            <td> <label for="name" class="form-control">Name</label></td>
            <td>:</td>
            <td><input type="text" class="form-control" style="font-size: 24px; border-radius: 4px;" id="name"
                placeholder="Enter your name"></td>
          </tr><br>
          <tr>
            <td><label for="phone" class="form-control">Phone number</label></td>
            <td>:</td>
            <td> <input type="tel" class="form-control" style="font-size: 24px; border-radius: 4px;" id="phone"
                placeholder="Enter phone number"></td>
          </tr><br>
          <tr>
            <td> <label for="date" class="form-control">Appointment date</label></td>
            <td>:</td>
            <td><input type="date" class="form-control" style="font-size: 24px; border-radius: 4px;" id="date"
                placeholder="Select appointment date"></td>
          </tr><br>
          <tr>
            <td> <label for="time" class="form-control">Appointment time</label></td>
            <td>:</td>
            <td> <input type="time" class="form-control" style="font-size: 24px; border-radius: 4px;" id="time"
                placeholder="Select appointment time"></td>
          </tr><br>
          <tr>
            <td> <label for="text" class="form-control"> Other Available Time</label></td>
            <td>:</td>
            <td> <input type="text" class="form-control" style="font-size: 24px; border-radius: 4px;" id="text"
                placeholder="Ex I'am free after 4pm"></td>
          </tr><br>
          <tr>
            <td></td>
          </tr>
          <tr>
            <td></td>
          </tr>
          <tr>
            <td style="text-align: center;" colspan="3"><button type="submit" style="font-size: 22px; ">Submit</button>
            </td>
          </tr>

        </table>
      </form>
    </div>

    <script>
      function openModal() {
        var modal = document.getElementById("myModal");
        modal.style.display = "block";
      }

      function closeModal() {
        var modal = document.getElementById("myModal");
        modal.style.display = "none";
      }

      window.onclick = function (event) {
        var modal = document.getElementById("myModal");
        if (event.target == modal) {
          modal.style.display = "none";
        }
      }

    </script>
    <script>
      const moreButton = document.querySelector('.more-button');
      const moreContent = document.querySelector('.more-content');
      const closeButton = document.querySelector('.close-button');

      moreButton.addEventListener('click', function (event) {
        event.preventDefault();
        moreContent.style.display = 'block';
        moreButton.style.display = 'none';
      });
      closeButton.addEventListener('click', function (event) {
        event.preventDefault();
        moreContent.style.display = 'none';
        moreButton.style.display = 'block';
      })

    </script>




    <script>
      function openModal1() {
        var modal1 = document.getElementById("myModal1");
        modal1.style.display = "block";
      }

      function closeModal1() {
        var modal1 = document.getElementById("myModal1");
        modal1.style.display = "none";
      }

      window.onclick = function (event1) {
        var modal1 = document.getElementById("myModal1");
        if (event1.target == modal1) {
          modal1.style.display = "none";
        }
      }

    </script>
</body>
</html>
