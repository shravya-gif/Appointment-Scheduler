<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="appointment.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheets/loginStyleSheet2.css" rel="stylesheet" />

</head>
<body>
    <div class="loginbox">
        &nbsp;<h2>Log in here<img src="loginlogo.png" style="width: 120px"  alt="loginlogo" class="user" draggable="true" /></h2>
        <form runat="server">
            <asp:Label Text="Email" CssClass="lblemail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtemail" placeholder="Enter the email" ID="txtemail" />
            <asp:Label Text="Password" CssClass="lblpass" runat="server" />
            <asp:TextBox runat="server" CssClass="txtpass" placeholder="********" ID="txtpass" />
            <asp:Button Text="Sign in" CssClass="btnsubmit" runat="server" OnClick="Unnamed5_Click" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:LinkButton Text="click here to register" CssClass="btnreg" runat="server" OnClick="Unnamed7_Click" />

        </form>
    </div>
</body>
</html>
