<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="LaptopVS.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LaptopVS</title>
</head>
<body style="font-family:Corbel; background-color: #e8e6e6;">
    <form id="form1" runat="server">
        <div style="position: absolute; top: 50%; left: 50%;  transform: translate(-50%, -50%); 
        background-color: white; border-radius: 5%; padding: 1%; border: 1px solid #b5b5b5 ; padding-bottom: 45px;">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Logo2.png" width="320px" />
            <h1>Register</h1>

            <asp:Label ID="Label1" runat="server" Text="Username:" 
                style="display: inline-block; font-size: 20px; width: 165px;"></asp:Label>
            <asp:TextBox ID="usernm" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Password :" style="display: inline-block; font-size: 20px; width: 165px;"></asp:Label>
            <asp:TextBox ID="pass" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label3" runat="server" Text="Confirm Password:" style="display: inline-block; font-size: 20px; width: 165px;"></asp:Label>
            <asp:TextBox ID="confpass" runat="server"></asp:TextBox><br /><br /><br />

            <asp:Button ID="RegisterButton" runat="server" Text="Register" style="font-size: 16px; 
                padding-left: 20px; padding-right: 20px; position: absolute; left: 50%;
                transform: translate(-50%, -50%);" OnClick="RegisterButton_Click"/>
        </div>
    </form>
</body>
</html>
