<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="OnlineBooKShopProject.Views.Admin.Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">Manage Books</h3>

            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-success">Book Name</label>
                    <input type="text" placeholder="Book Name" autocomplete="off" class="form-control" runat="server" id="BnameTb"/>
                 </div>
                 <div class="mb-3">
                    <label for="" class="form-label text-success">Book Author</label>
                   <asp:DropDownList ID="BAuthName" runat="server" class="form-control"></asp:DropDownList>
                 </div>
                 <div class="mb-3">
                    <label for="" class="form-label text-success">Categories</label>
                     <asp:DropDownList ID="BCategoryName" runat="server" class="form-control"></asp:DropDownList>
                    
                 </div>
                 <div class="mb-3">
                    <label for="" class="form-label text-success">Price</label>
                    <input type="text" placeholder="price" autocomplete="off" class="form-control" runat="server" id="BpriceTb" />
                   
                 </div>
                 <div class="mb-3">
                    <label for="" class="form-label text-success">Quantity</label>
                    <input type="text" placeholder="Quantity" autocomplete="off" class="form-control" runat="server" id="BQuantityTb"/>
                 </div>
                <div class="row">
                    <asp:Label runat="server" ID="ErrMsg3" class="text-danger text-center"></asp:Label>
                    <div class="col d-grid"><asp:Button Text="Update" ID="UpBtn" runat="server" CssClass="btn-warning btn" OnClick="UpBtn_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Save" ID="SaBtn" runat="server" CssClass="btn-success btn" OnClick="SaBtn_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Delete" ID="Debtn" runat="server" CssClass="btn-danger btn" OnClick="Debtn_Click"/></div>
                </div>
            </div>

            <div class="col-md-8">
            <asp:GridView ID="BookList" runat="server" class="table table-bordered" AutoGenerateSelectButton="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="BookList_SelectedIndexChanged">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
                </div>
           
        </div>

    </div>
</asp:Content>
