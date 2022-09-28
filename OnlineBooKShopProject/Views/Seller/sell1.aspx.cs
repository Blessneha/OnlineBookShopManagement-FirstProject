using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace OnlineBooKShopProject.Views.Seller
{
    public partial class sell1 : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowBooks();
                DataTable dt=new DataTable();
                dt.Columns.AddRange(new DataColumn[5]
                {
                    new DataColumn("ID"),
                    new DataColumn("Book"),
                    new DataColumn("Price"),
                    new DataColumn("Quantity"),
                    new DataColumn("Total")
                });
                ViewState["Bill"] = dt;
                this.BindGrid();
                

            }
        }

        protected void BindGrid()
        {
            ClientList.DataSource = ViewState["Bill"];
            ClientList.DataBind();
        }
        private void ShowBooks()
        {
            string Query = "select Bid as ID,BName as Name,BQty as Stock,Bprice as Price from BookTbl";
            BookList1.DataSource = Con.GetData(Query);
            BookList1.DataBind();

        }
        int key = 0;
        int stock = 0;
        protected void BillList_SelectedIndexChanged(object sender, EventArgs e)
        {
            NameU.Value = BookList1.SelectedRow.Cells[2].Text;
            stock = Convert.ToInt32(BookList1.SelectedRow.Cells[3].Text);
            PriceU.Value = BookList1.SelectedRow.Cells[4].Text;

            if (NameU.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(BookList1.SelectedRow.Cells[1].Text);
            }

        }

        private void updatestock()
        {
            int newqty;
            newqty=Convert.ToInt32(BookList1.SelectedRow.Cells[3].Text)-Convert.ToInt32(Qua1.Value);
            string query = $"Update BookTbl set BQty={newqty} where Bid={BookList1.SelectedRow.Cells[1].Text}";
            Con.SetData(query);
            ShowBooks();
           
        }
        private void insertvalue(int total)
        {
            string name= NameU.Value;
            int price= Convert.ToInt32(PriceU.Value);
            int quantity = Convert.ToInt32(Qua1.Value);
            int tot = total;
            int s = sellerlogin.SellUser;



            string query=$"insert into BillTable2 values('{name}',{quantity},{price},{tot},{s})";
            Con.SetData(query);
            
        }
            
        int grdtotal = 0;
        int amt;
        protected void addtobillbtn_Click(object sender, EventArgs e)
        {  if (NameU.Value == " " || PriceU.Value == "" || Qua1.Value == "")
            {
                ErrorMsg5.Text = "Missing data";
            }
            int tot = Convert.ToInt32(Qua1.Value) * Convert.ToInt32(PriceU.Value);
            DataTable dt = (DataTable)ViewState["Bill"];
            dt.Rows.Add(ClientList.Rows.Count+1,
                         NameU.Value.Trim(),
                         PriceU.Value.Trim(),
                         Qua1.Value.Trim(), tot);
            ViewState["Bill"] = dt;
            this.BindGrid();
            updatestock();
            insertvalue(tot);
            grdtotal = 0;
            for(int i = 0; i < dt.Rows.Count; i++)
            {
                grdtotal = grdtotal + Convert.ToInt32(ClientList.Rows[i].Cells[5].Text);
            }
            amt = grdtotal;
            Grdtot1.Text="Rs "+amt;




        }
    }
}