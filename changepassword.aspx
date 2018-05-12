<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="registrationform.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" class="breadcrumb">
    <div style="display:inline; text-align:center; font-family:Calibri" class="form-group">
        <table class="table-striped">    
        <tr><td><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter username"></asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Label ID="Label2" runat="server" Text="Color"></asp:Label></td>
        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter color"></asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Label ID="Label3" runat="server" Text="Hobbie"></asp:Label></td>
        <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Hobbie"></asp:RequiredFieldValidator></td></tr></table>
        <p><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Change Password" class="btn btn-primary btn-lg"></asp:Button></p>
        <p><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" class="btn btn-primary btn-lg"></asp:Button></p>
   
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
