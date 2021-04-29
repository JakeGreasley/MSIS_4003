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
                <h1>Products!</h1>
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
    <div class =" row cata">
        <div class="col-sm-4 cata" >
            <h2>All of our Products<br /> 
                are plant 
                derived...</h2> <br />
            <p> 22-0-0 ---> Methylenediurea and Urea</p> <br />
            <p> 2-20-0 ---> Diammonium Phosphate and Phosphoric Acid</p> <br />
            <p> Micro Elements --->Zinc Sulfate and Magnesium Sulfate</p> <br />
            <p> 4% Mag ---> : Magnesium Sulfate</p> <br />
            <p> 0-0-22 ---> Potassium Thiosulfate</p> <br />
            <p> Pro N Silica  ---> Soy Protein IsolateSoy Protein Isolate</p> <br />
            <p> Pro N 10 ---> 100% Vegtable sources as protein</p> <br />
            <p> Pro K 20 ---> Fruit Rind Ash</p> <br />


        </div>
            <div class="col-sm-8 cata">  
                <iframe width="620px" height="565px" src="https://www.yumpu.com/en/embed/view/ouHK5fd8GnIWFzrm"  ></iframe>
            </div>
      
    </div> 
            <div class ="row">
            <div class="col-sm-4 cata" >
            <h2>Product of the month:  Micro Elements- The core needs that the grass needs in order to start growing!</h2>

        </div>
            </div>
            
            
        </div>
    </form>
</body>
</html>
