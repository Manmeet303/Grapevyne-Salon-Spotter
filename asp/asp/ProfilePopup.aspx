<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProfilePopup.aspx.cs" Inherits="ProfilePopup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit Profile</title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Edit Profile</h2>
        <div>
            <label for="txtUserName">User Name:</label>
            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                ErrorMessage="User Name is required" ValidationGroup="vgUpdateProfile" />
        </div>
        <div>
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email is required" ValidationGroup="vgUpdateProfile" />
        </div>
        <div>
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required" ValidationGroup="vgUpdateProfile" />
        </div>
        <div>
            <asp:Button ID="btnUpdateProfile" runat="server" Text="Update Profile" OnClick="btnUpdateProfile_Click"
                ValidationGroup="vgUpdateProfile" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        </div>
</form>

</body>
</html>
