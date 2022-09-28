<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Seller.aspx.cs" Inherits="OnlineBooKShopProject.Views.Admin.Seller" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">Manage Sellers</h3>

            </div>-
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-success">Name of the seller</label>
                    <input type="text" placeholder="Name of the seller" autocomplete="off" class="form-control" runat="server" id="SellNameTb"/>
                 </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Email</label>
                    <input type="email" placeholder="Email" autocomplete="off" class="form-control" runat="server" id="SellEmailTb"/>
                 </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Phone</label>
                    <input type="text" placeholder="phone" autocomplete="off" class="form-control" runat="server" id="SellPhoneTb"/>
                 </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Password</label>
                    <input type="text" placeholder="password" autocomplete="off" class="form-control" runat="server" id="SellPassTb"/>
                 </div>
                
                 
                 
                <div class="row">
                     <asp:Label runat="server" ID="ErrMsg2" class="text-danger text-center"></asp:Label>c
                    <div class="col d-grid"><asp:Button Text="Update" ID="UPdate1Btn" runat="server" CssClass="btn-warning btn" OnClick="UPdate1Btn_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Save" ID="SaveBtn1" runat="server" CssClass="btn-success btn" OnClick="SaveBtn1_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Delete" ID="DeleteBtn1" runat="server" CssClass="btn-danger btn" OnClick="DeleteBtn1_Click"/></div>
                </div>
            </div>

            <div class="col-md-8">
                <asp:GridView ID="SellerList" runat="server" class="table table-bordered" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateSelectButton="True" OnSelectedIndexChanged="SellerList_SelectedIndexChanged">
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
