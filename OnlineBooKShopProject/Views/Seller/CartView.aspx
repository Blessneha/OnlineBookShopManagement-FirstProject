<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/MasterSeller.Master" AutoEventWireup="true" CodeBehind="CartView.aspx.cs" Inherits="OnlineBooKShopProject.Views.Seller.CartView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3>CART</h3>

            </div>
        </div>
        <div class="row">
            <div class="col-md-7">
               <asp:GridView ID="CartList" runat="server" class="table table-bordered" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
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

                <div class="row mt-3 mb-3">
                         <div class="col d-grid"><asp:Button Text="AddToBill" ID="add123bill"  runat="server" CssClass="btn-warning btn" OnClick="add123bill_Click"/></div>
                         <asp:Label runat="server" ID="ErrorMsg5" class="text-danger text-center"></asp:Label>
                        <a href="sell1.aspx" class="link-success">Go back to item page</a>
                     </div>
                </div>
          

            <div class="col-md-6">
                
            </div>
        </div>

    </div>
</asp:Content>
