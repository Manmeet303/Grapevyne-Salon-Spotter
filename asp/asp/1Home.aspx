<%@ Page Language="C#" AutoEventWireup="true" CodeFile="1Home.aspx.cs" Inherits="_1Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Home</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link rel="stylesheet" href="css/1Home.css"/>
</head>
<body>
    <header class="text-slate-50 body-font  bg-neutral-900">
    <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
      <a class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0">

        <img src="Img/logo.jpeg" alt="" srcset="" class="w-10 h-10 text-white p-0 rounded-full">
        <span class="ml-3 text-xl text-slate-50">Grapevyne</span>
      </a>
      <nav class="md:ml-auto md:mr-auto flex flex-wrap items-center text-base justify-center">
        <!-- <a class="mr-5 hover:underline">Home</a> -->
        <a href="2Login.aspx" class="mr-5  hover:underline ">Login</a>
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

  <main>
    <div class="intro">
      <h1>Grapevyne</h1>
      <p>We have more than 10000+ happy customers</p>
      <!-- <button>Learn More</button> -->
    </div>
    <div class="achievements">
      <div class="work">
        <i class="icon1"></i>
        <!-- <i class="fa-duotone fa-user-hair-buns"></i> -->
        <p class="work-heading">Hair Styles</p>
        <p class="work-text">Grapevyane provide 110+ hair style available across all the Salons</p>
      </div>
      <div class="work">
        <i class="icon2"></i>
        <p class="work-heading">Available Salons</p>
        <p class="work-text">50+ Salones availabe all time and also incresing drastically</p>
      </div>
      <div class="work">
        <i class="icon3"></i>
        <p class="work-heading">ratings</p>
        <p class="work-text">Our customer gave us 4.5+ ratings for our services and their experiance </p>
      </div>
    </div>
    <div class="about-me">
      <div class="about-me-text">
        <h2>About Us</h2>
        <p>We offer a personalized and luxurious beauty experience with a team of highly skilled stylists and beauty
          professionals. We use only the finest quality products and techniques to ensure that you leave our salon
          feeling refreshed and with a look that you'll love. Come visit us and unleash your inner beauty.</p>
      </div>
      <img src="Img/bg4.jpg" alt="grapevyane">
    </div>
  </main>



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
          <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5"
            viewBox="0 0 24 24">
            <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z"></path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-5 h-5"
            viewBox="0 0 24 24">
            <path
              d="M23 3a10.9 10.9 0 01-3.14 1.53 4.48 4.48 0 00-7.86 3v1A10.66 10.66 0 013 4s-4 9 5 13a11.64 11.64 0 01-7 2c9 5 20 0 20-11.5a4.5 4.5 0 00-.08-.83A7.72 7.72 0 0023 3z">
            </path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
            class="w-5 h-5" viewBox="0 0 24 24">
            <rect width="20" height="20" x="2" y="2" rx="5" ry="5"></rect>
            <path d="M16 11.37A4 4 0 1112.63 8 4 4 0 0116 11.37zm1.5-4.87h.01"></path>
          </svg>
        </a>
        <a class="ml-3 text-gray-500">
          <svg fill="currentColor" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="0"
            class="w-5 h-5" viewBox="0 0 24 24">
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
