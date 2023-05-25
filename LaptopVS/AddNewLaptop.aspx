<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewLaptop.aspx.cs" Inherits="LaptopVS.AddNewLaptop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LaptopVS</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="align-content: center;">LaptopVS</h1>

            <asp:Label ID="Label1" runat="server" Text="CPU Name:"></asp:Label>
            <asp:TextBox ID="cpuname" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="CPUPerformance:"></asp:Label>
            <asp:TextBox ID="cpuperf" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label3" runat="server" Text="GPU Name:"></asp:Label>
            <asp:TextBox ID="gpuname" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label4" runat="server" Text="GPU Perfomance:"></asp:Label>
            <asp:TextBox ID="gpuperf" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label5" runat="server" Text="RAM Size:"></asp:Label>
            <asp:TextBox ID="ramsize" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label6" runat="server" Text="Storage size:"></asp:Label>
            <asp:TextBox ID="storagesize" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label7" runat="server" Text="Average Temperature:"></asp:Label>
            <asp:TextBox ID="avgtemp" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label8" runat="server" Text="Price:"></asp:Label>
            <asp:TextBox ID="pricetag" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label9" runat="server" Text="Fan Noise:"></asp:Label>
            <asp:TextBox ID="noise" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label10" runat="server" Text="Screen Resolution:"></asp:Label>
            <asp:TextBox ID="screenres" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label11" runat="server" Text="Link to shop:"></asp:Label>
            <asp:TextBox ID="linktotokped" runat="server"></asp:TextBox><br />

            <asp:Button ID="addnewlaptop" runat="server" Text="Add New Laptop" />

        </div>
    </form>
</body>
</html>
