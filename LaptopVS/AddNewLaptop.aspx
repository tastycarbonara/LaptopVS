<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNewLaptop.aspx.cs" Inherits="LaptopVS.AddNewLaptop" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LaptopVS</title>
</head>
<body style="font-family:Corbel; background-color: #e8e6e6;">
    <form id="form1" runat="server">
        
        <div style="position: absolute; top: 50%; left: 50%;  transform: translate(-50%, -50%); 
        background-color: white; border-radius: 5%; padding: 1%; border: 1px solid #b5b5b5 ; padding-bottom: 45px;">
            <h1>Add New Laptop</h1>

            <asp:Label ID="Label12" runat="server" Text="Laptop Name:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="laptopname" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label1" runat="server" Text="CPU Name:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="cpuname" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label2" runat="server" Text="CPU Performance:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="cpuperf" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label3" runat="server" Text="GPU Name:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="gpuname" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label4" runat="server" Text="GPU Perfomance:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="gpuperf" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label5" runat="server" Text="RAM Size:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="ramsize" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label6" runat="server" Text="Storage size:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="storagesize" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label7" runat="server" Text="Average Temperature:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="avgtemp" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label8" runat="server" Text="Price:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="pricetag" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label9" runat="server" Text="Fan Noise:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="noise" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label10" runat="server" Text="Screen Resolution:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="screenres" runat="server"></asp:TextBox><br />

            <asp:Label ID="Label11" runat="server" Text="Link to shop:" style="display: inline-block; font-size: 20px; width: 200px;"></asp:Label>
            <asp:TextBox ID="linktotokped" runat="server"></asp:TextBox><br /><br /><br />

            <asp:Button ID="addnewlaptop" runat="server" Text="Add New Laptop" style="font-size: 16px; 
                padding-left: 20px; padding-right: 20px; position: absolute; left: 50%;
                transform: translate(-50%, -50%);" OnClick="addnewlaptop_Click"/>

        </div>
    </form>
</body>
</html>
