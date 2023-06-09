﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="LaptopVS.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LaptopVS</title>
</head>
<body style="font-family:Corbel;">
    <form id="form1" runat="server">
        <div style="text-align: center; display: flex; position: sticky; height: 70px;  ">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Logo2.png" style="margin-left:40%;" />
            <asp:Button ID="AddNewLaptop" runat="server" Text="Add New Laptop" 
                OnClick="AddNewLaptop_Click" width="130px" Height="50px" style="margin-left:20%"/>
            <asp:ImageButton ID="LOGOUT" runat="server" ImageUrl="~/logout.png" OnClick="LOGOUT_Click"
                width="50px" Height="50px" />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/person-4.png" OnClick="ImageButton1_Click" 
                width="50px" Height="50px"  />
        </div>
        
        <div style="margin-top: 5%; font-family: Bahnschrift; display:table;width:100%;">
            <div style="float: left; padding-left: 3%; font-size: 20px; display:table-cell;">
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

                <asp:Label ID="battery" runat="server" Text="Battery Life: "></asp:Label>
                <asp:Label ID="batterylife" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label21" runat="server" Text=" hours"></asp:Label><br />

                <asp:Label ID="feature" runat="server" Text="Features: "></asp:Label>
                <asp:Label ID="features" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="afflink" runat="server" Text="Shop Link: "></asp:Label>
                <asp:Label ID="afflinktokped" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />
                
                
                
                <br />
                <h2>Comments</h2>
                <asp:GridView ID="Comment1" runat="server"  BorderStyle="None" ></asp:GridView>
                <asp:TextBox ID="CommentBox1" runat="server"></asp:TextBox><br />
                <asp:Button ID="SendComment1" runat="server" Text="Comment" OnClick="SendComment1_Click" />

            </div>
            
            <div style="display:table-cell;">
                <asp:Button ID="compbutton" runat="server" Text="COMPARE" style="font-size: 40px; 
                padding: 20px; transform: translate(10%, -550%); border-radius: 5px;
                 background-color: #555555; color: white;" 
                OnClick="compbutton_Click"/>
                <div style="border:1px solid; transform: translateY(-150%); height: 300px">
                    <h2>Ad Space</h2> 
                </div>
                
            </div>

            <div style="float: right;padding-right:3%;font-size: 20px; display:table-cell;">
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

                <asp:Label ID="battery2" runat="server" Text="Battery Life: "></asp:Label>
                <asp:Label ID="batterylife2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label>
                <asp:Label ID="Label22" runat="server" Text=" hours"></asp:Label><br />

                <asp:Label ID="feature2" runat="server" Text="Features: "></asp:Label>
                <asp:Label ID="features2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />

                <asp:Label ID="afflink2" runat="server" Text="Shop Link: "></asp:Label>
                <asp:Label ID="afflinktokped2" runat="server" Text="" style="font-weight: bold; font-size: 25px;"></asp:Label><br />
                 <br />
                <h2>Comments</h2>
                <asp:GridView ID="Comment2" runat="server"  BorderStyle="None" ></asp:GridView>
                <asp:TextBox ID="CommentBox2" runat="server"></asp:TextBox><br />
                <asp:Button ID="SendComment2" runat="server" Text="Comment" OnClick="SendComment2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
