<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="registrationform.WebForm1" %>

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
    
        <h1 aria-atomic="False" aria-busy="False" aria-selected="undefined" style="font-family: Calibri; text-decoration: blink; font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: uppercase; visibility: visible; cursor: auto; color: #000099;">Login Page</h1>
        <br />
        <br />
        <p>
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Username"></asp:RequiredFieldValidator>
        </p>
        <p><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
        </p>
        <p>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter valid Password" ValidationExpression="[^abcd]{3,10}"></asp:RegularExpressionValidator>
        </p>
        <p><asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" class="btn btn-primary btn-lg"/></p>
        <p><asp:Button ID="Button2" runat="server" Text="forgot password" OnClick="Button2_Click" class="btn btn-primary btn-lg"/></p>
        <p><asp:Button ID="Button3" runat="server" Text="Registration" OnClick="Button3_Click" class="btn btn-primary btn-lg" /></p>
     </div>
    </form>
</body>
</html>
