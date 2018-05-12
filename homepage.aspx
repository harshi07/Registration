<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="h1.aspx.cs" Inherits="registrationform.h1" %>

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
     <h1>Welcome!!<asp:Label ID="Label1" runat="server" Text="username"></asp:Label></h1>
         <p><asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Button1_Click" class="btn btn-primary btn-lg"/></p>
         <p><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" class="btn btn-primary btn-lg" Text="Change Password" /></p>
    </div>
    </form>
</body>
</html>
