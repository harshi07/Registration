<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="registrationform.WebForm4" %>

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
    <table class="table-condensed"><tr>
        <td><asp:Label ID="Label3" runat="server" Text="Enter new password"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter password" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid password" ValidationExpression="[^abcd]{3,10}"></asp:RegularExpressionValidator></td></tr>
        <tr><td><asp:Label ID="Label2" runat="server" Text="Confirm password"></asp:Label></td>
        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td></tr>
        </table>
        <p><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary btn-lg" Text="Submit" Height="45px" /></p>
    </div>
    </form>
</body>
</html>
