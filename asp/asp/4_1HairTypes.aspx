<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4_1HairTypes.aspx.cs" Inherits="_4_1HairTypes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.tailwindcss.com"></script>
  <title>signup page</title>
  <link rel="stylesheet" href="../CSS/signup.css" type="text/css" />
  <!-- MDB -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css" rel="stylesheet" />

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
  <style>
    .flex-container {
      display: flex;
      flex-direction: column;
      font-size: 15px;

    }

    .flex-item-1 {
      background-color: rgba(241, 241, 241, 0.337);
      padding: 15px;
      flex: 50%;
      border-radius: 40px;
      margin: 10px;
    }

    .flex-item-1:hover {
      /* background-color: rgba(166, 139, 209, 0); */
      background-color: rgba(241, 241, 241, 0.534);
      box-shadow: 0px 0px 10px 0 rgb(115, 112, 112);

    }



    .flex-container1 {
      display: flex;
      flex-wrap: wrap;
      flex-direction: column;
      /* color: black; */

      /* background-color: rgba(174, 161, 191, 0.507); */
    }

    .flex-container1 div {
      /* background-color: #ece9f0; */
      /* border-bottom: 1.5px solid rgba(120, 113, 113, 0.483); */
      margin: 10px;
      /* padding-top: px; */
      padding-bottom: 2px;
      font-size: 20px;
      
    }

    .first {
      display: flex;
      justify-content: space-between;
      font-size: 15px;
    }
  </style>
</head>
<body background="Img/bg7_new.jpg" style="  
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: fixed;
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  ">



  <div class="min-h-screen flex-col items-center ">

    <section class="text-gray-600 body-font ">

      <div class="container px-5 py-12 mx-auto flex flex-wrap items-center ">
        <div
          class="backdrop-blur-md bg-stone-400/30 lg:w-2/6 content-center bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto md:mr-auto w-full mt-10 md:mt-0 shadow-lg">

          <!-- <p class="text-center h4 fw-bold mb-4 mx-1 px-4 mx-md-4 mt-4">
            Let's choose some hair types..!
          </p> -->
          <!-- <span><button class="text-purple-600" id="myBtn_popup">Save</button></span> -->

          <div class="flex-container1 text-center h4 fw-bold mb-4 mx-1 px-4 mx-md-4 mt-4 content-between">
            <div class="first">
              <span>Let's choose some hair types..!</span>
              <span><button class="text-purple-600" id="myBtn">Save</button></span>
            </div>
          </div>


          <div class="flex-container">
            <!-- <div class="flex-item-1">
            <span class="flex  content-between">
                Curly
                <input  type="checkbox" name="" id="">
              </span>
            </div> -->
            <div class="flex-item-1">Curly</div>
            <div class="flex-item-1">Kinky</div>
            <div class="flex-item-1">Kinky/Curly</div>
            <div class="flex-item-1">Coily</div>
            <div class="flex-item-1">Locs</div>
            <div class="flex-item-1">Relaxed</div>
          </div>

        </div>
      </div>
    </section>
  </div>


<script>
  document.getElementById("myBtn").addEventListener("click", directFunction);
        function directFunction(){
            window.location.href = "4_2ChooseHairStyle.aspx";
            // You can also use window.location.replace method
             // window.location.replace("https://www.example.com");
        }
</script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"></script>
</body>
</html>
