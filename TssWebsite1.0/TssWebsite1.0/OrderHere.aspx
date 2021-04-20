<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderHere.aspx.cs" Inherits="TssWebsite1._0.OrderHere" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email System</title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="MainCSS.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>
<body>
    <form id="form1" runat="server">
        
                    <div class ="container-fluid">
                        <div class="jumbotron-fluid MainContain">
                <h1>Contact Us!</h1>
            </div>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark mynavbar">
                 <ul class="navbar-nav">
                     <li class="nav-item">
                          <a class="nav-link" href="HomePage.aspx">Home</a>
                     </li>
                      <li class="nav-item">
                          <a class="nav-link" href="Products.aspx">Products</a>
                     </li>
                      
                      <li class="nav-item">
                          <a class="nav-link" href="OrderHere.aspx">Order Here</a>
                     </li>
                     </ul>
                </nav>


            <div class ="row" style =" margin-top:.5rem;">
                <div class ="col-sm-6 text-right">
                    <label>First Name:</label>
                </div>
                <div class ="col-sm-6">
                    <asp:TextBox ID="tboxFirstName" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class ="row" style =" margin-top:.5rem;">
                <div class ="col-sm-6 text-right">
                    <label class ="purple">Last Name:</label>
                </div>
                <div class ="col-sm-6">
                    <asp:TextBox ID="tboxLastName" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class ="row" style =" margin-top:.5rem;">
                <div class ="col-sm-6 text-right">
                    <label>Email:</label>
                </div>
                <div class ="col-sm-6">
                    <asp:TextBox ID="tboxEmail" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class ="row" style =" margin-top:.5rem;">
                <div class ="col-sm-6 text-right">
                    <label>Comment Area:</label>
                </div>
                <div class ="col-sm-6">
                    <asp:TextBox ID="tboxComment" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class ="row" style =" margin-top:.5rem;">
                <div class="col-sm-6 offset-sm-6" style =" margin-bottom:1rem;">
                        <asp:Button ID="btnContactSubmit" runat="server" Text="Submit" OnClick="btnContactSubmit_Click" />
                </div>                
            </div>

        </div>
    </form>
</body>
</html>
