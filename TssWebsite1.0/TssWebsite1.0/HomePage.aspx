<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="TssWebsite1._0.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Turf and Soil Solutions</title>
    <script src="Scripts/jquery-3.5.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="MainCSS.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width,intial-scale=1.0" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
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
                          <a class="nav-link" href="OrderHere.aspx">Order Here</a>
                     </li>
                     </ul>
                </nav>
             <div class="row">
                <div class="col-sm-6">
                    <%-- Logo --%>
                     <img src="Images/Screenshot%202020-09-15%20161622.png" alt="Turf and soil Soultions Logo" class="img-fluid d-block mx-auto" />
                </div>
                <div class="col-sm-6">
                    <div class="row ">
                        <div class="col-sm-12 para ">
                            <%-- Main mission statement. same level as the logo --%>
                            <h3>Our Mission</h3>
                            <p>
                                TSS is dedicated to providing science-based recommendations for soil and plant nutritional
requirements as well as improved water performance. Our product options are provided to complete
nutrient cycling by the integration of plant-derived fertilizers with no limiting factors as generally found in
materials that may be salt or sulfur-based synthetics.
                            </p>
                        </div>
                    </div>
                    <div class="row para">
                        <div class="col-sm-12 para1">

                            <h3>Why we do what we do</h3>
                            <p>
                                With the access to clean viable water at an all-time low, there is a need for water nutrient solutions now more than ever. With our products, you can enhance your water nutrients and give your plants
                                what they so desperately need.

                            </p>
                        </div>
                    </div>

                </div>
            </div>
            <div class="row">
                <div class=" col-sm-12 para2">
                    <h3>The Science</h3>
                    <p>
                    With water quality rapidly diminishing choosing products with limited amounts of antagonistic properties
                     will become of paramount importance.
                    The proven FP2 or From Plants For Plants line lays the foundation to provide for the essential elements
                    not readily supplied by mother nature. These products have been formulated to maximize customization
                    and provide excellent results in alkaline conditions.
                    The rest of the TSS line is targeted at reducing the demand for synthetic products that are often a
                    double-edged sword. Many of the TSS products are one of a kind, new technology for the golf course
                    superintendent.
                    </p>

                </div>
            </div>

        </div>

        </div>
    </form>
</body>
</html>
