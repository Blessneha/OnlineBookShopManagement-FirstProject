<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sellerlogin.aspx.cs" Inherits="OnlineBooKShopProject.Views.sellerlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet"  href="../Assets/Lib/css/bootstrap.min.css"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .375rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row mt-5 mb-5">

        </div>
        <div class="row">
            <div class="col-md-4">

            </div>
             <div class="col-md-4">
               <form id="form1" runat="server">
                  <div>
                      <div class="row">
                          <div class="col-md-4"></div>
                          <div class="col-md-8">
                              <img src="../Assets/images/books.png" width:"100px" height:"100px"/>

                          </div>
                      </div>
                      

                 </div>
                   
                 <div class="mt-3">
                    
                        <label for="NameU" class="form-label">Enter Seller Email</label>
                       <input type="email" placeholder="Email of Seller" autocomplete="off" class="auto-style1" runat="server" id="NameU1"/>
                     
                    
                    
                 </div>
                 <div class="mt-3">
                     
                    <label for="PasswordU" class="form-label">Enter Seller Password</label>
                    <input type="password" placeholder="Password" autocomplete="off" class="auto-style1" runat="server" id="PasswordU1"/>
                    
                    
                 </div>
                    <div class="mt-3 d-grid">
                     <asp:Label runat="server" ID="ErrMsg2" class="text-danger text-center"></asp:Label>

                        <asp:Button Text="Login" runat="server" CssClass="btn btn-warning" ID="LoginBtn" OnClick="LoginBtn_Click"/>
                     </div>

             </form>

            </div>
            <div class="col-md-4">

            </div>
           

        </div>
    </div>
    
</body>
</html>
