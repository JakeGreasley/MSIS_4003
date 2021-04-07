<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="TssWebsite1._0.Products" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Products!</title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
   <link href="MainCSS.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width,intial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container-fluid">
            <div class="jumbotron-fluid MainContain">
                <h1>Turf And Soil Solutions</h1>
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
                          <a class="nav-link" href="AboutUs.aspx">About Us</a>
                     </li>
                      <li class="nav-item">
                          <a class="nav-link" href="OrderHere.aspx">Order Here</a>
                     </li>
                     </ul>
                </nav>
    <div class =" row cata">
        <div class="col-sm-4 cata" >
            <h2>All of our Products<br /> 
                are plant 
                derived</h2>

        </div>
            <div class="col-sm-5 cata">  
                <iframe width="620px" height="565px" src="https://www.yumpu.com/en/embed/view/ouHK5fd8GnIWFzrm"  ></iframe>
            </div>
        <div class="col-sm-4 cata" >
            <h2>Product of the month:</h2>

        </div>
    </div>
            
        </div>
    </form>
</body>
</html>
