<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="OnlineBooKShopProject.Views.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">Manage Categories</h3>

            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-success">Categories</label>
                    <input type="text" placeholder="Categories" autocomplete="off" class="form-control" runat="server" ID="CatTB"/>
                 </div>
                <div class="mb-3">
                    <label for="" class="form-label text-success">Detail of categories</label>
                    <input type="text" placeholder="Detail" autocomplete="off" class="form-control" runat="server" ID="CatDetailTB"/>
                 </div>
                
                
                 
                 
                <div class="row">
                    <asp:Label runat="server" ID="ErrorMsg1" class="text-danger text-center"></asp:Label>
                    <div class="col d-grid"><asp:Button Text="Update" ID="updatebtn"  runat="server" CssClass="btn-warning btn" OnClick="updatebtn_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Save" ID="savebtn" runat="server" CssClass="btn-success btn" OnClick="savebtn_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Delete" ID="deletebtn" runat="server" CssClass="btn-danger btn" OnClick="deletebtn_Click"/></div>
                </div>
            </div>

            <div class="col-md-8">
                <asp:GridView ID="CategoriesList" runat="server" class="table table-bordered" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateSelectButton="True">
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
