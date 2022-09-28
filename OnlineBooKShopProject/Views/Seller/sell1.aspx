<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Seller/MasterSeller.Master" AutoEventWireup="true" CodeBehind="sell1.aspx.cs" Inherits="OnlineBooKShopProject.Views.Seller.sell1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">

    <div class="container-fluid">
        <div class="row">

        </div>
        <div class="row">
            <div class="col-md-5">
                <h3 class="text-center" style="color:saddlebrown">Book Details</h3>
                <div class="row">
                    <div class="col">
                        <div class="mt-3">
                    
                        <label for="" class="form-label text-success">Book Name</label>
                       <input type="text" placeholder="Name Of Book" autocomplete="off" class="auto-style1" runat="server" id="NameU"/>
                    </div>
                </div>
                 <div class="col">
                   <div class="mt-3">
                     <label for="" class="form-label text-success">Book Price</label>
                     <input type="text" placeholder="Book price" autocomplete="off" class="auto-style1" runat="server" id="PriceU"/>
                   </div>
                </div>
                </div>
                 <div class="row">
                    <div class="col">
                        <div class="mt-3">
                    
                        <label for="" class="form-label text-success">Quantity</label>
                       <input type="text" placeholder="quantity" autocomplete="off" class="auto-style1" runat="server" id="Qua1"/>
                    </div>
                </div>
                 <div class="col">
                   <div class="mt-3">
                     <label for="" class="form-label text-success">Billing date</label>
                     <input type="date" placeholder="Billing Date" class="auto-style1" runat="server" id="Billdate1"/>
                   </div>
                </div>
                     <div class="row mt-3 mb-3">
                         <div class="col d-grid"><asp:Button Text="AddToBill" ID="addtobillbtn"  runat="server" CssClass="btn-warning btn" OnClick="addtobillbtn_Click"/></div>
                         <asp:Label runat="server" ID="ErrorMsg5" class="text-danger text-center"></asp:Label>
                     </div>
                  

                </div>
                <div class="row mt-5">
                    <div class="col">
                        <h3 class="text-center" style="color:saddlebrown">Book List</h3>
                        <asp:GridView ID="BookList1" runat="server" class="table table-bordered" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BillList_SelectedIndexChanged">
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
            <div class="col-md-7">

                <h4 class="text-center" style="color:green">Client Bill</h4>
                        <asp:GridView ID="ClientList" runat="server" class="table table-bordered" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" AutoGenerateSelectButton="True" OnSelectedIndexChanged="BillList_SelectedIndexChanged">
                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                            <HeaderStyle BackColor="OrangeRed" Font-Bold="True" ForeColor="White" />
                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                        </asp:GridView>
                 <div class="col d-grid">
                       <asp:Label runat="server" ID="Grdtot1" class="text-danger text-center"></asp:Label>
                     <asp:Button Text="addtocart" ID="printbtn"  runat="server" CssClass="btn-warning btn"/>
                     <label><a style="font-weight:bold;text-decoration:none;font-size:20px;" href="CartView.aspx" class="link-success">See your list</a></label>

                 </div>

            </div>
        </div>
    </div>
</asp:Content>
