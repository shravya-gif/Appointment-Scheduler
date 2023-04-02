<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegWebForm.aspx.cs" Inherits="appointment.RegWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheets/RegStyleSheet2.css" rel="stylesheet" />

    <style type="text/css">
        .txtname {
            margin-left: 146px;
        }
        .txtNumber {
            margin-left: 148px;
        }
        .txtemail {
            margin-left: 143px;
        }
        .txtpass {
            margin-left: 147px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Registrationbox">
            &nbsp;<h2>
            <img src="loginlogo.png" style="height: 108px; width: 136px" class="user" /></h2>
            <h2>&nbsp;</h2>
            <h2>&nbsp;Register Here</h2>
           
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
           
            <br />
            <asp:Label ID="Label2" runat="server" Text="Phone Number"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
           
            <br />
            <br />
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <br />
           
            <br />
            <br />
            <br />
            <br />
            <asp:Button Text="Sign Up" CssClass="btnsubmit" runat="server" ID="Button1" OnClick="Button1_Click" />
            

        </div>
    </form>
</body>
</html>
