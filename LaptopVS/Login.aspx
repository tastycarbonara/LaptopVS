<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LaptopVS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LaptopVS</title>
</head>
<body style="font-family:Corbel; background-color: #e8e6e6;">
    <form id="form1" runat="server">
        <div style="position: absolute; top: 50%; left: 50%;  transform: translate(-50%, -50%); 
        background-color: white; border-radius: 5%; padding: 1%; border: 1px solid #b5b5b5 ; padding-bottom: 45px;">
            <h1>Login</h1>
            <asp:Label ID="Label1" runat="server" Text="Username:" style="display: inline-block; font-size: 20px; width: 120px;"></asp:Label>
            <asp:TextBox ID="usern" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="Password :" style="display: inline-block; font-size: 20px; width: 120px;"></asp:Label>
            <asp:TextBox ID="pw" runat="server"></asp:TextBox><br /><br /><br />

            <asp:Button ID="LoginButton" runat="server" Text="Login" style="font-size: 16px; 
                padding-left: 20px; padding-right: 20px; position: absolute; left: 50%;
                transform: translate(-50%, -50%);"/><br /><br />

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Don't have an account? Register here.</asp:HyperLink>

        </div>
    </form>
</body>
</html>
