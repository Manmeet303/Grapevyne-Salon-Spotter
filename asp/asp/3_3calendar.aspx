<%@ Page Language="C#" AutoEventWireup="true" CodeFile="3_3calendar.aspx.cs" Inherits="_3_3calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Calendar</title>
    <link rel="stylesheet" href="css/calendar.css"/>
    <link rel="stylesheet" href="css/dycalendar.css"/>
</head>
<body>
    <section>
         <form id="form1" runat="server">
        <div class="box">
            <div class="container">
                <asp:Calendar ID="dycalendar" runat="server" OnDayRender="dycalendar_DayRender">

                    
                </asp:Calendar>
                <br> 
               
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                <br>
                <br>
            <asp:Button ID="Button1" CssClass="Btn" runat="server" Text="Save Date" OnClick="Button1_Click" />
               <!-- <button id="myBtn" class="Btn">
                        submit
                    </button>-->
                
            
        </div>
        </div>
             </form>
    </section>

    
    
</body>
</html>
