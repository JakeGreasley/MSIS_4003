<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderHere.aspx.cs" Inherits="TssWebsite1._0.OrderHere" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Email System</title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="MainCSS.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class ="container">
                
            <%--<nav class="navbar navbar-expand-xl bg-dark navbar-dark justify-content-center ">
                 Navigation Bar 
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="HomePage.aspx">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="Login.aspx">Login</a></li>
                <li class="nav-item"><a class="nav-link" href="AccountCreation.aspx">Account Creation</a></li>
                <li class="nav-item"><a class="nav-link" href="ContactUs.aspx">Contact Us</a></li>
                <li class="nav-item"><a class="nav-link" href="AboutUs.aspx">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="ProductPage.aspx">Shopping Cart</a></li>                                 
                
            </ul>
            </nav>--%>

        <h1 class ="text-center">Contact Us</h1>

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
                    
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"  />
                </div>                
            </div>
        </div>
    </form>
</body>
</html>


