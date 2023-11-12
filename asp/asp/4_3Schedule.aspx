<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4_3Schedule.aspx.cs" Inherits="_4_3Schedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <script src="https://cdn.tailwindcss.com"></script>
    <title>Schedule</title>
    <link rel="stylesheet" href="css/Schedule.css"/>
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

    <div class="min-h-screen flex-col items-center ">
        <section class="text-gray-600 body-font ">
            <div class="container px-5 py-12 mx-auto flex flex-wrap items-center ">

                <div
                    class="backdrop-blur-xl bg-stone-400/30 lg:w-2/6 content-center bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto md:mr-auto w-full mt-10 md:mt-0 shadow-lg">

                    <!-- <div class="container"></div> -->
                    <div class="flex-container">
                        <div class="first"><span>When do you work?</span>
                            <!-- <span><a class="text-purple-600 " href="" onclick="myFunction()"> Save</a></span> -->
                            <span><button class="text-purple-600" id="myBtn_popup">Save</button></span>

                        </div>
                        <div class="sec">
                            <span>Location/TimeZone</span>
                            <span>
                                <select class="loc" name="location" id="">
                                    <option class="op" value="">Chicago</option>
                                    <option class="op" value="">Naperville</option>
                                    <option class="op" value="">San Francisco</option>
                                    <option class="op" value="">Las Vegas</option>
                                </select>
                            </span>
                        </div>
                        <div class="declare">Schedule</div>
                        <div class="check1">
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Monday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Tuesday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Wednesday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Thrusday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Friday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Saturday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Sunday</span>
                                </label>
                            </div>
                        </div>

                        <div><span>Hours : &nbsp;
                                <input type="time" id="appt" name="appt" min="09:00" max="18:00" required /></span>
                            <span> &nbsp;&nbsp; TO &nbsp; &nbsp;</span>
                            <span><input type="time" id="appt" name="appt" min="09:00" max="18:00" required /></span>
                        </div>
                        <div class="declare">Add break</div>
                        <div class="check2">
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Monday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Tuesday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Wednesday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Thrusday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Friday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Saturday</span>
                                </label>
                            </div>
                            <div>
                                <label class="p-0 relative inline-flex  mr-5 cursor-pointer">
                                    <input type="checkbox" value="" class="sr-only peer" unchecked>
                                    <span
                                        class="w-11 h-6 bg-gray-300 rounded-full peer dark:bg-gray-700 peer-focus:ring-3 peer-focus:ring-purple-300 dark:peer-focus:ring-purple-800 peer-checked:after:translate-x-full peer-checked:after:border-white after:content-[''] after:absolute after:top-0.5 after:left-[2px] after:bg-white after:border-gray-300 after:border after:rounded-full after:h-5 after:w-5 after:transition-all dark:border-gray-600 peer-checked:bg-purple-600"></span>
                                    <span class="p-0">Sunday</span>
                                </label>
                            </div>
                        </div>
                        <div><span>Hours : &nbsp;
                                <input type="time" id="appt" name="appt" min="09:00" max="18:00" required /></span>
                            <span> &nbsp;&nbsp; TO &nbsp; &nbsp;</span>
                            <span><input type="time" id="appt" name="appt" min="09:00" max="18:00" required /></span>
                        </div>
                        <div><span>Break : &nbsp;
                                <input type="time" id="appt" name="appt" min="09:00" max="18:00" required /></span>
                            <span> &nbsp;&nbsp; TO &nbsp; &nbsp;</span>
                            <span><input type="time" id="appt" name="appt" min="09:00" max="18:00" required /></span>
                        </div>
                        <div class="declare">
                            <span class="text-s text-red-400">Remove break</span>
                            <!-- <button type="reset" class="text-s text-red-400">Remove break</button> -->
                        </div>
                    </div>
                    <!-- <p class="text-xs text-gray-500 mt-3">Literally you probably haven't heard of them jean shorts.</p> -->

                </div>
            </div>
        </section>
    </div>



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



    <!-- -----------------------popup----------------------------- -->
    <div id="myModal_popup" class="modal_popup">

        <div class="min-h-screen flex-col items-center ">
            <section class="text-gray-600 body-font ">
                <div class="container px-5 py-12 mx-auto flex flex-wrap items-center ">
                    <div
                        class="backdrop-blur-xl bg-stone-400/30 lg:w-2/6 content-center bg-gray-100 rounded-lg p-8 flex flex-col md:ml-auto md:mr-auto w-full mt-10 md:mt-0 shadow-lg">



                        <div class="flex-container_popup">
                            <div class="modal-header_popup">
                                <span>Get Notified when a client books you!</span>
                                <span class="close_popup">&times;</span>
                            </div>
                            <div><input class="text-black bg-white-500 border-0 py-2 px-8" type="number"
                                    placeholder="Mobile No.">
                            </div>
                            <div>
                                <button id="myBtn"
                                    class="text-white bg-purple-500 border-0 py-2 px-6 focus:outline-none hover:bg-purple-600 rounded text-lg">Enable
                                    Notfications
                                </button>
                                <div>
                                    <a  class="text-base mt-3 hover:underline" id="MayBeLatter">May be later</a>
                                </div>
                            </div>
                            <div><p class="text-xs "> Message and data rates may apply*</p></div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>


<script>
    document.getElementById("myBtn").addEventListener("click", directFunction);
        function directFunction(){
            window.location.href = "4_4Cancellation.aspx";
            alert("you will be notified when a customer books you...!");
            // You can also use window.location.replace method
             // window.location.replace("https://www.example.com");
        }
        document.getElementById("MayBeLatter").addEventListener("click", directFunction);
        function directFunction(){
            window.location.href = "4_4Cancellation.aspx";
            // You can also use window.location.replace method
             // window.location.replace("https://www.example.com");
        }
</script>
</body>
<script>
    // Get the modal
    var modal = document.getElementById("myModal_popup");

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn_popup");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close_popup")[0];

    // var latter = document.getElementById("MayBeLatter");

    // When the user clicks the button, open the modal 
    btn.onclick = function () {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function () {
        modal.style.display = "none";
    }

    // latter.onclick = function () {
    //     modal.style.display = "none";
    // }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function (event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
</script>
</body>
</html>
