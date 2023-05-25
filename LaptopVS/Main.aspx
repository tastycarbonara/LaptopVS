<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LaptopVS.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LaptopVS</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="align-content: center;">LaptopVS</h1>
            
            <div style="float: left;">
                <asp:Image ID="Image1" runat="server" ImageUrl=" "/><br />
                <asp:DropDownList ID="LeftLaptopSelection" runat="server"></asp:DropDownList><br />

                <asp:Label ID="cpu" runat="server" Text=""></asp:Label>
                <asp:Label ID="cpuperf" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="gpu" runat="server" Text=""></asp:Label>
                <asp:Label ID="gpuperf" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="ram" runat="server" Text=""></asp:Label>
                <asp:Label ID="ramsize" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="storage" runat="server" Text=""></asp:Label>
                <asp:Label ID="storagesize" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="temp" runat="server" Text=""></asp:Label>
                <asp:Label ID="tempcels" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="price" runat="server" Text=""></asp:Label>
                <asp:Label ID="pricerp" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="sound" runat="server" Text=""></asp:Label>
                <asp:Label ID="sounddb" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="screen" runat="server" Text=""></asp:Label>
                <asp:Label ID="screenres" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="afflink" runat="server" Text=""></asp:Label>
                <asp:Label ID="afflinktokped" runat="server" Text=""></asp:Label><br />
            </div>
            
            <asp:Button ID="compbutton" runat="server" Text="Compare" />

            <div style="float: right;">
                <asp:Image ID="Image2" runat="server" ImageUrl=" "/><br />
                <asp:DropDownList ID="LaptopRightSelection" runat="server"></asp:DropDownList><br />

                <asp:Label ID="cpu2" runat="server" Text=""></asp:Label>
                <asp:Label ID="cpuperf2" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="gpu2" runat="server" Text=""></asp:Label>
                <asp:Label ID="gpuperf2" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="ram2" runat="server" Text=""></asp:Label>
                <asp:Label ID="ramsize2" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="storage2" runat="server" Text=""></asp:Label>
                <asp:Label ID="storagesize2" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="temp2" runat="server" Text=""></asp:Label>
                <asp:Label ID="tempcels2" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="price2" runat="server" Text=""></asp:Label>
                <asp:Label ID="pricerp2" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="sound2" runat="server" Text=""></asp:Label>
                <asp:Label ID="sounddb2" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="screen2" runat="server" Text=""></asp:Label>
                <asp:Label ID="screenres2" runat="server" Text=""></asp:Label><br />

                <asp:Label ID="afflink2" runat="server" Text=""></asp:Label>
                <asp:Label ID="afflinktokped2" runat="server" Text=""></asp:Label><br />
            </div>
        </div>
    </form>
</body>
</html>
