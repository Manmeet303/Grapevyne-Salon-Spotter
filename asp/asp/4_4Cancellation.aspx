<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4_4Cancellation.aspx.cs" Inherits="_4_4Cancellation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script src="https://cdn.tailwindcss.com"></script>
  <title>cancellation Policy</title>
  <link rel="stylesheet" href="../CSS/signup.css" type="text/css" />
  <!-- MDB -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css" rel="stylesheet" />
  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
</head>
    <body background="../Img/bg7_new.jpg" style="  height: 100%;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;
  ">

  <div class="min-h-screen flex-col items-center ">
    <section class="text-gray-600 body-font ">
      <div class="container px-5 py-12 mx-auto flex flex-wrap items-center ">

        <div
          class="backdrop-blur-md bg-stone-400/30 lg:w-2/6 content-center bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto md:mr-auto w-full mt-10 md:mt-0 shadow-lg">
          <p class="text-center h3 fw-bold mb-5 mx-1 mx-md-4 mt-4">
            Payment Setup
          </p>
          <p class="text-center h4">Choose your No Show/Late Cancellation Policy</p>

          <p class="text-center"> 
            Users will be required to enter a credit card when booking.If they no show or cancel
            within 24 hours, you may charge them or chhose to waive the free
          </p>
          <p class="text-center h5 my-3"> 
            late Cancel fee/No Show Fee
          </p>
          
          <div>
            <input type="radio" id="html" name="fav_language" value="15">
            <label>Moderate&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 15% / 25%</label>
          </div>
          <div>
            <input type="radio" id="html" name="fav_language" value="50">
            <label>strict&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; 25% / 50%</label>

          </div>
          <div class="d-flex justify-content-center mx-4 mt-3 mb-lg-4">
            <button id="myBtn" class="btn btn-primary btn-lg bg-purple-600 hover:bg-purple-500">
              submit
            </button>

          </div>
          <div class="d-flex justify-content-center mx-4 my-3 mb-lg-4">
            <!-- <button type="button" class="btn btn-primary btn-lg">
              Maybe Later
            </button> -->
            <div>
              <a class="text-base mt-3 hover:underline hover:cursor-pointer" id="MayBeLatter">May be later</a>
            </div>
            
          </div>
          </form>
        </div>


      </div>
  </div>
  <!-- </div>
  </div>
  </div>
  </div>
  </div>
  </section> -->

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"></script>
  <script>
    var latter = document.getElementById("MayBeLatter");

    latter.onclick = function () {
        modal.style.display = "none";
    }



    document.getElementById("myBtn").addEventListener("click", directFunction);
        function directFunction(){
          alert("your salon has been ragistered successfully...!");
            window.location.href = "1Home.aspx";
            // You can also use window.location.replace method
             // window.location.replace("https://www.example.com");
        }
        // function direct(){
        //     window.location.href = "4_2ChooseHairStyle.html";
        // }
  </script>
</body>
</html>
