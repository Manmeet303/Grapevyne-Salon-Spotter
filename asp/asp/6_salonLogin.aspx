<%@ Page Language="C#" AutoEventWireup="true" CodeFile="6_salonLogin.aspx.cs" Inherits="_6_salonLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://cdn.tailwindcss.com"></script>
    <title>SignUp(salon)</title>
    <link rel="stylesheet" href="../CSS/signup.css" type="text/css" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
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
                    <p class="text-center h4 fw-bold mb-5 mx-1 px-3 mx-md-4 mt-4">
                        First, let's create your account
                    </p>

                    <form id="form1" runat="server">
                       


                        <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                            <div class="form-outline flex-fill mb-0">
                               <asp:TextBox ID="txtEmailId" placeholder="Email" runat="server" CssClass="form-control"></asp:TextBox> 
                                <label class="form-label" for="form3Example3c">Your Email</label>
                            </div>
                        </div>

                      

                        <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                            <div class="form-outline flex-fill mb-0">
                                 <asp:TextBox ID="txtPassword" placeholder="Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                <label class="form-label" for="form3Example4c">Password</label>
                            </div>
                        </div>


                        <div class="form-check d-flex justify-content-center mb-5">
                            <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" />
                            <label class="form-check-label" for="form2Example3">
                                I agree all statements in
                                <a href="#!">Terms of service</a>
                            </label>
                        </div>

                        
                            
                           
                           <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary btn-block" />
                       

                    </form>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="4(salon)SignUp.aspx" style ="text-decoration:none" ForeColor="#00CCFF">New User? Register Now </asp:HyperLink>
                </div>

            </div>
    </div>
    <!-- </div>
    </div>
    </div>
    </div> -->

    <script>

        // document.getElementById("hairTypeBtn").addEventListener("click", hairTypeFunction);

        // function hairTypeFunction(){
        //     window.location.href = "HairTypes.html";
        //     // You can also use window.location.replace method
        //     //  window.location.replace("HairTypes.html");
        // }
        // document.getElementById("hairTypeBtn").addEventListener("click", redirectFunction);

        //function redirectFunction() {
            // window.location.href = "HairTypes.html";
          //  window.location.href = "2SignUp.html";
            // You can also use window.location.replace method
            // window.location.replace("2SignUp.html");
        //}
        //document.getElementById("hairTypeBtn").addEventListener("click", directFunction);
        //function directFunction(){
          //  window.location.href = "2SignUp.html";
        //}
    </script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"></script>
 
</body>
</html>