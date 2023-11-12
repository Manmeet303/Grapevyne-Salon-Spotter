<%@ Page Language="C#" AutoEventWireup="true" CodeFile="2Login.aspx.cs" Inherits="_2Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="stylesheet" href="css/2Login.css"/>

</head>
<body>
    <header class="text-slate-50 body-font  bg-neutral-900">
        <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
            <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">
                
                <img src="Img/logo.jpeg" alt="" srcset="" class="w-10 h-10 text-white p-0 rounded-full">
                <span class="ml-3 text-xl text-slate-50">Grapevyne</span>
            </a>
            <nav class="md:ml-auto md:mr-auto flex flex-wrap items-center text-base justify-center">
                <a href="1Home.aspx" class="mr-5 hover:underline">Home</a>
                <a href="2Login.aspx" class="mr-5  hover:underline">Login</a>
                <a href="2SignUp.aspx" class="mr-5  hover:underline">Sign Up</a>
            </nav>
            <!-- <button
                class="inline-flex items-center text-gray-500 bg-gray-100 border-0 py-1 px-3 focus:outline-none hover:bg-gray-300 rounded text-base mt-4 md:mt-0">Get
                Started
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                    class="w-4 h-4 ml-1" viewBox="0 0 24 24">
                    <path d="M5 12h14M12 5l7 7-7 7"></path>
                </svg>
            </button> -->
        </div>
    </header>


    <!--  login -->

    <form id="form1" runat="server">
    <div class="min-h-screen flex-col items-center ">
        <section class="text-gray-600 body-font ">
            <div class="container px-5 py-12 mx-auto flex flex-wrap items-center ">
                
                <div class="backdrop-blur-xl bg-stone-400/30 lg:w-2/6 content-center bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto md:mr-auto w-full mt-10 md:mt-0 shadow-lg ">
                    <h2 class="text-gray-100 text-lg font-medium title-font mb-5 ">Login</h2>
                    
                    <div class="relative mb-4">
                        <label for="email" class="leading-7 text-sm text-gray-300">Email</label>
                        <asp:TextBox ID="txtUsername" runat="server" CssClass="w-full bg-white rounded border border-gray-300 focus:border-purple-500 focus:ring-2 focus:ring-purple-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" placeholder="Username"></asp:TextBox>
                    </div>
                    <div class="relative mb-4">
                        <label for="password" class="leading-7 text-sm text-gray-300">Password</label>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="w-full bg-white rounded border border-gray-300 focus:border-purple-500 focus:ring-2 focus:ring-purple-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" placeholder="Password" TextMode="Password"></asp:TextBox>
                    </div>
                    <br>
                   
                   
                    <!--<button class="text-white bg-purple-400 border-0 py-2 px-8 focus:outline-none hover:bg-purple-600 rounded text-lg">Continue as Guest</button>-->
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="text-white bg-purple-500 border-0 py-2 px-8 focus:outline-none hover:bg-purple-600 rounded text-lg" />
                    <label><a href="2SignUp.aspx" class="text-violet-500 underline hover:text-violet-400">new member? please SignUp</a></label>
                </div>
            </div>
        </section>
    </div>

        </form>
        
        
        
    <!-- footer -->
    <footer class="text-slate-50 body-font  bg-neutral-900">
        <div class="container px-5 py-8 mx-auto flex items-center sm:flex-row flex-col">
            <a class="flex title-font font-medium items-center md:justify-start justify-center text-gray-900">
             
                <img src="Img/logo.jpeg" alt="" srcset="" class="w-10 h-10 text-white p-0 rounded-full">
                <span class="ml-3 text-xl text-slate-50">Grapevyne</span>
            </a>
            <p class="text-sm text-gray-500 sm:ml-4 sm:pl-4 sm:border-l-2 sm:border-gray-200 sm:py-2 sm:mt-0 mt-4">©
                2020 Grapevyne —
                <a href="#" class="text-gray-600 ml-1" rel="noopener noreferrer" target="_blank">@Grapevyne</a>
            </p>
            <span class="inline-flex sm:ml-auto sm:mt-0 mt-4 justify-center sm:justify-start">
                <a class="text-gray-500">
                    <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        class="w-5 h-5" viewBox="0 0 24 24">
                        <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
                    </svg>
                </a>
                <a class="ml-3 text-gray-500">
                    <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        class="w-5 h-5" viewBox="0 0 24 24">
                        <path
                            d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z">
                        </path>
                    </svg>
                </a>
                <a class="ml-3 text-gray-500">
                    <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                        stroke-width="2" class="w-5 h-5" viewBox="0 0 24 24">
                        <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
                        <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
                    </svg>
                </a>
                <a class="ml-3 text-gray-500">
                    <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round"
                        stroke-width="0" class="w-5 h-5" viewBox="0 0 24 24">
                        <path stroke="none"
                            d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z">
                        </path>
                        <circle cx="4" cy="4" r="2" stroke="none"></circle>
                    </svg>
                </a>
            </span>
        </div>
    </footer>
</body>
</html>
