<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4_2ChooseHairStyle.aspx.cs" Inherits="_4_2ChooseHairStyle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.tailwindcss.com"></script>
  <title>ChooseHairStyle</title>
  <link rel="stylesheet" href="../CSS/signup.css" type="text/css" />
  <!-- MDB -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.css" rel="stylesheet" />

  <!-- Font Awesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
  <!-- Google Fonts -->
  <!-- <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" /> -->
</head>
    <body background="Img/bg7_new.jpg" style="
      height: 100%;
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
    background-attachment: fixed;">





  <div class="min-h-screen flex-col items-center">
    <section class="text-gray-600 body-font">
      <div class="container px-5 py-12 mx-auto flex flex-wrap items-center">
        <div
          class="backdrop-blur-xl bg-stone-400/30 content-center bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto w-full md:mr-auto mt-10 md:mt-0 shadow-lg">
          <!-- <div class="bg-white bg-opacity-75 rounded-lg p-8 md:ml-auto w-full md:mr-auto mt-10 md:mt-0 shadow-lg"> -->
          <div class="row border-bottom border-secondary">
            <div class="col-11">
              <div class="flex flex-row justify-content-center py-3">
                <p class="text-xl text-center h4 fw-bold mb-4 mx-1 px-4 mx-md-4 mt-4">Which hairstyles do you work
                  with..?</p>
              </div>
            </div>
            <div class="col-1 py-3">
              <button id="myBtn" class="text-purple-600 text-xl fw-bold hover:text-purple-500">Save</button>
            </div>
          </div>
          <!-- Link -->
          <div class="mt-3">
            <!-- Pills navs -->
            <ul class="nav nav-pills nav-fill mb-3" id="ex1" role="tablist">
              <li class="nav-item" role="presentation">
                <a class="nav-link active" id="ex2-tab-1" data-mdb-toggle="pill" href="#ex2-pills-1" role="tab"
                  aria-controls="ex2-pills-1" aria-selected="true">Natural Hair</a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="ex2-tab-2" data-mdb-toggle="pill" href="#ex2-pills-2" role="tab"
                  aria-controls="ex2-pills-2" aria-selected="false">Weaves</a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="ex2-tab-3" data-mdb-toggle="pill" href="#ex2-pills-3" role="tab"
                  aria-controls="ex2-pills-3" aria-selected="false">Braids</a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="ex2-tab-4" data-mdb-toggle="pill" href="#ex2-pills-4" role="tab"
                  aria-controls="ex2-pills-4" aria-selected="false">Locs</a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="ex2-tab-5" data-mdb-toggle="pill" href="#ex2-pills-5" role="tab"
                  aria-controls="ex2-pills-5" aria-selected="false">Twists</a>
              </li>
              <li class="nav-item" role="presentation">
                <a class="nav-link" id="ex2-tab-5" data-mdb-toggle="pill" href="#ex2-pills-6" role="tab"
                  aria-controls="ex2-pills-6" aria-selected="false">Relaxed</a>
              </li>
            </ul>
            <!-- Pills navs -->

            <!-- Pills content -->
            <div class="tab-content" id="ex2-content">
              <div class="tab-pane fade show active" id="ex2-pills-1" role="tabpanel" aria-labelledby="ex2-tab-1">
                Tab 1 content
              </div>
              <div class="tab-pane fade" id="ex2-pills-2" role="tabpanel" aria-labelledby="ex2-tab-2">
                Tab 2 content
              </div>
              <div class="tab-pane fade" id="ex2-pills-3" role="tabpanel" aria-labelledby="ex2-tab-3">
                <div class="row">
                  <div class="col-lg-6 mt-2">
                    <div class="d-flex justify-content-between align-items-center bg-white p-3 rounded mb-3">
                      <p>Single Braids</p>
                      <i class="fa-solid fa-circle-plus fa-xl"></i>
                    </div>
                    <div class="d-flex justify-content-between align-items-center bg-white p-3 rounded mb-3">
                      <p>Micro Braids</p>
                      <i class="fa-solid fa-circle-plus fa-xl"></i>
                    </div>
                    <div class="d-flex justify-content-between align-items-center bg-white p-3 rounded mb-3">
                      <p>Box Braids</p>
                      <div>
                        <button class="text-muted mx-2">Cancel</button>
                        <button class="text-purple-600 mx-2">Save</button>
                      </div>
                    </div>
                    <div class="d-flex justify-content-between align-items-center bg-white p-3 rounded mb-3">
                      <div class="d-flex inline-flex justify-content-between col-6 px-3">
                        <p>Price</p>
                        <p class="text-muted">$65</p>
                      </div>
                      <div class="d-flex inline-flex justify-content-between align-items-center col-6 px-3">
                        <p>Discount</p>
                        <div class="w-70">
                          <select id="inputState" class="form-control">
                            <option selected>1 hour 15</option>
                            <option>45 min</option>
                            <option>1 hour</option>
                          </select>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-6 mt-2">
                    <div class="d-flex justify-content-between align-items-center bg-white p-3 rounded mb-3">
                      <p>Crochet Braids</p>
                      <i class="fa-solid fa-circle-check fa-xl"></i>
                    </div>
                    <div class="d-flex justify-content-between align-items-center bg-white p-3 rounded mb-3">
                      <p>Goddess Braids</p>
                      <i class="fa-solid fa-circle-check fa-xl"></i>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="ex2-pills-4" role="tabpanel" aria-labelledby="ex2-tab-4">
                Tab 4 content
              </div>
              <div class="tab-pane fade" id="ex2-pills-5" role="tabpanel" aria-labelledby="ex2-tab-5">
                Tab 5 content
              </div>
              <div class="tab-pane fade" id="ex2-pills-6" role="tabpanel" aria-labelledby="ex2-tab-6">
                Tab 6 content
              </div>
            </div>
            <!-- Pills content -->
          </div>
          <!-- </div> -->
        </div>
      </div>
    </section>
  </div>
  <!-- MDB -->

  <script>
    document.getElementById("myBtn").addEventListener("click", directFunction);
        function directFunction(){
            window.location.href = "4_3Schedule.aspx";
            // You can also use window.location.replace method
             // window.location.replace("https://www.example.com");
        }
  </script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.2.0/mdb.min.js"></script>
</body>
</html>
