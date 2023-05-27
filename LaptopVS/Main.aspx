<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LaptopVS.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LaptopVS</title>
</head>
<body style="font-family:Corbel;">
    <form id="form1" runat="server">
        <div style="text-align: center; display: flex; position: sticky; height: 70px;  ">
            <p style="font-size: 50px; font-weight: bold; font-size: 50px;
                margin-top: -8px; margin-left: 42%; margin-right: auto;">LaptopVS</p>
            <asp:Button ID="AddNewLaptop" runat="server" Text="Add New Laptop" 
                OnClick="AddNewLaptop_Click" width="130px" Height="50px"/>
            <asp:ImageButton ID="LOGOUT" runat="server" ImageUrl="~/logout.png" OnClick="LOGOUT_Click"
                width="50px" Height="50px"/>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/person-4.png" OnClick="ImageButton1_Click" 
                width="50px" Height="50px"  />
        </div>
        
        <div style="margin-top: 5%; font-family: Bahnschrift;">
           
            <div style="float: left; padding-left: 3%; font-size: 20px;">
                <asp:Image ID="Image1" runat="server" ImageUrl=" " width="400px" Height="300px"/><br />
                <asp:DropDownList ID="LeftLaptopSelection" runat="server" style="width: 300px; height: 50px; font-size: 25px;">
                </asp:DropDownList><br />

                <asp:Label ID="Label1" runat="server" Text="CPU Name:"></asp:Label>
                <asp:Label ID="cpu" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="Label2" runat="server" Text="CPU Performance: "></asp:Label>
                <asp:Label ID="cpuperf" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="% of 100%"></asp:Label>
                <br />

                <asp:Label ID="Label4" runat="server" Text="CPU Name:"></asp:Label>
                <asp:Label ID="gpu" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="Label5" runat="server" Text="GPU Performance: "></asp:Label>
                <asp:Label ID="gpuperf" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="% of 100%"></asp:Label><br />

                <asp:Label ID="ram" runat="server" Text="RAM size: "></asp:Label>
                <asp:Label ID="ramsize" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="GB"></asp:Label><br />

                <asp:Label ID="storage" runat="server" Text="Storage size:"></asp:Label>
                <asp:Label ID="storagesize" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="GB"></asp:Label><br />

                <asp:Label ID="temp" runat="server" Text="Average Temperature: "></asp:Label>
                <asp:Label ID="tempcels" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="Celsius"></asp:Label><br />

                <asp:Label ID="price" runat="server" Text="Price: USD "></asp:Label>
                <asp:Label ID="priceusd" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="sound" runat="server" Text="Fan Noise: "></asp:Label>
                <asp:Label ID="sounddb" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="dB"></asp:Label><br />

                <asp:Label ID="screen" runat="server" Text="Screen Resolution: "></asp:Label>
                <asp:Label ID="screenres" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="afflink" runat="server" Text="Shop Link: "></asp:Label>
                <asp:Label ID="afflinktokped" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />
            </div>
            
            <asp:Button ID="compbutton" runat="server" Text="COMPARE" style="font-size: 40px; 
                padding: 20px; position: absolute; left: 50%; margin-top:50px; border-radius: 5px;
                transform: translate(-50%, -50%); background-color: #555555; color: white;" 
                OnClick="compbutton_Click"/>

            <div style="float: right;padding-right:3%;font-size: 20px;">
                <asp:Image ID="Image2" runat="server" ImageUrl=" " width="400px" Height="300px"/><br />
                <asp:DropDownList ID="LaptopRightSelection" runat="server" style="width: 300px; height: 50px; font-size: 25px;">
                </asp:DropDownList><br />

                <asp:Label ID="Label11" runat="server" Text="CPU Name:"></asp:Label>
                <asp:Label ID="cpu2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="Label12" runat="server" Text="CPU Performance: "></asp:Label>
                <asp:Label ID="cpuperf2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="% of 100%"></asp:Label><br />

                <asp:Label ID="Label16" runat="server" Text="GPU Name:"></asp:Label>
                <asp:Label ID="gpu2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="Label15" runat="server" Text="GPU Performance: "></asp:Label>
                <asp:Label ID="gpuperf2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label14" runat="server" Text="% of 100%">
                </asp:Label><br />

                <asp:Label ID="ram2" runat="server" Text="RAM Size: "></asp:Label>
                <asp:Label ID="ramsize2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label17" runat="server" Text="GB"></asp:Label><br />

                <asp:Label ID="storage2" runat="server" Text="Storage Size: "></asp:Label>
                <asp:Label ID="storagesize2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label18" runat="server" Text="GB"></asp:Label><br />

                <asp:Label ID="temp2" runat="server" Text="Average Temperature: "></asp:Label>
                <asp:Label ID="tempcels2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label19" runat="server" Text="Celsius"></asp:Label><br />

                <asp:Label ID="price2" runat="server" Text="Price: USD "></asp:Label>
                <asp:Label ID="priceusd2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="sound2" runat="server" Text="Fan Noise: "></asp:Label>
                <asp:Label ID="sounddb2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label20" runat="server" Text="dB"></asp:Label><br />

                <asp:Label ID="screen2" runat="server" Text="Screen Resolution: "></asp:Label>
                <asp:Label ID="screenres2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="afflink2" runat="server" Text="Shop Link: "></asp:Label>
                <asp:Label ID="afflinktokped2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />
            </div>
        </div>
    </form>
</body>
</html>
