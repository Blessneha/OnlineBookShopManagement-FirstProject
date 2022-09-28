<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Authors.aspx.cs" Inherits="OnlineBooKShopProject.Views.Admin.Authors" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col">
                <h3 class="text-center">Manage Authors</h3>

            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="mb-3">
                    <label for="" class="form-label text-success">Author Name</label>
                    <input type="text" placeholder="Author Name" autocomplete="off" class="form-control" runat="server" ID="ANameTb"/>
                     <asp:Label runat="server" ID="A1" class="text-danger"></asp:Label>
                 </div>
                 <div class="mb-3">
                    <label for="" class="form-label text-success">Author Gender</label>
                     <asp:DropDownList  runat="server" class="form-control" ID="GenCb">
                         <asp:ListItem>Male</asp:ListItem>
                         <asp:ListItem>Female</asp:ListItem>
                     </asp:DropDownList>
                      
                     

                 </div>
                 <div class="mb-3">
                    <label for="" class="form-label text-success">Country</label>
                     <asp:DropDownList ID="CountryCb" runat="server" class="form-control">
                         <asp:ListItem>India</asp:ListItem>
                         <asp:ListItem>USA</asp:ListItem>
                         <asp:ListItem>Germany</asp:ListItem>
                         <asp:ListItem>Spain</asp:ListItem>
                         <asp:ListItem>Other</asp:ListItem>
                     </asp:DropDownList>  
                                    </div>
                 
                <div class="row">
                    <asp:Label runat="server" ID="ErrMsg" class="text-danger text-center"></asp:Label>
                    <div class="col d-grid"><asp:Button Text="Update" runat="server" id="EditBtn" CssClass="btn-warning btn" OnClick="EditBtn_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Save" runat="server" id="SaveBtn" CssClass="btn-success btn" OnClick="SaveBtn_Click"/></div>
                    <div class="col d-grid"><asp:Button Text="Delete" runat="server" id="DeleteBtn" CssClass="btn-danger btn" OnClick="DeleteBtn_Click"/></div>
                </div>
            </div>

            <div class="col-md-8">
                <asp:GridView ID="AuthorList" runat="server" class="table table-bordered" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateSelectButton="True" OnSelectedIndexChanged="AuthorList_SelectedIndexChanged">
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
