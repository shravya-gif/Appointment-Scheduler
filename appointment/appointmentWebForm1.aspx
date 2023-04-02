<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointmentWebForm1.aspx.cs" Inherits="appointment.appointmentWebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="stylesheets/AppStyleSheet2.css" rel="stylesheet" />
    

</head>
<body>
    <form id="form1" runat="server">
        <div class="Appointmentbox">

            &nbsp;&nbsp;&nbsp;<h2>&nbsp;</h2>
           <h2>Schedule your Appointment Here</h2>
             <p>
                 &nbsp;</p>
            <p>
                 <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </p>
             <p>&nbsp;</p>
             <p>
                 <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </p>
             <p>&nbsp;</p>
             <p>
                 <asp:Label ID="Label3" runat="server" Text="Place"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp; </p>
             <p>&nbsp;</p>
             <p>
                 <asp:Label ID="Label4" runat="server" Text="Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
             </p>
             <p>
                 <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Calendar ID="Calendar1" runat="server" Height="16px" Width="207px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
             </p>
            <p>
                 <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                 <asp:Label ID="Label6" runat="server"></asp:Label>
             </p>
            <p>
                 &nbsp;</p>
            <p>
                 &nbsp;</p>
             <p>&nbsp;</p>
             <p>&nbsp;</p>

        </div>
    </form>
</body>
</html>
