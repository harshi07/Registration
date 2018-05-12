<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="registrationform.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style type="text/css">
        .table-striped {}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family:Calibri" class="form-group">
        <h3 style="font-family: Calibri;  font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; visibility: visible; cursor: auto; color: #000099;">Registratin Form</h3>

        <table class="table-condensed">

        <tr><td><asp:Label ID="Label1" runat="server" Text="UserId"></asp:Label></td>
        <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Userid"></asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Label ID="Label2" runat="server" Text="Name"></asp:Label></td>
        <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td></tr>
        <tr><td><asp:Label ID="Label3" runat="server" Text="EmailId"></asp:Label></td>
        <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Emailid" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter valid emailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBox3"></asp:RegularExpressionValidator></td></tr>
        <tr><td><asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></td>
        <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td></tr>
        <tr><td><asp:Label ID="Label5" runat="server">Phone-no</asp:Label></td>
        <td><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" ErrorMessage="Please Enter Phone-no"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter valid no" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator></td></tr>
        <tr><td><asp:Label ID="Label10" runat="server" Text="Password"></asp:Label></td>
        <td><asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Password" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter valid password" ValidationExpression="[^abcd]{3,10}" ControlToValidate="TextBox10"></asp:RegularExpressionValidator></td></tr>
        <tr><td><asp:Label ID="Label6" runat="server" Text="confirm password"></asp:Label></td>
        <td><asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
        <td><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox10" ControlToValidate="TextBox6" ErrorMessage="no valid"></asp:CompareValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter valid password" ValidationExpression="[^abcd]{3,10}" ControlToValidate="TextBox6"></asp:RegularExpressionValidator></td></tr>
        <tr><td><asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label></td>
        <td><asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td></tr>
        <tr><td><asp:Label ID="Label8" runat="server" Text="Branch"></asp:Label></td>
        <td><asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter branch" ControlToValidate="TextBox8"></asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Label ID="Label9" runat="server" Text="Semester"></asp:Label></td>
        <td><asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter semester" ControlToValidate="TextBox9"></asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Label ID="Lable16" runat="server" Text="Color"></asp:Label></td>
        <td><asp:TextBox ID="TextBox11" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter color" ControlToValidate="TextBox11"></asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Label ID="Label17" runat="server" Text="Hobbie"></asp:Label></td>
        <td><asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter hobbie" ControlToValidate="TextBox12"></asp:RequiredFieldValidator></td></tr>
        <tr><td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" class="btn btn-primary btn-lg" Text="submit" /></td>
        <td><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="btn btn-primary btn-lg" Text="cancel" /></td></tr>
       </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </div>
    </form>
</body>
</html>
