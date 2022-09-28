using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBooKShopProject.Views.Seller
{
    public partial class CartView : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            showcart();



        }
        private void showcart()
        {
            int s = sellerlogin.SellUser;
            string Query = $"select Billid as ID,book as Name,quant as Stock,price as Price,tot as Total from BillTable2 where sellid={s}";
            CartList.DataSource = Con.GetData(Query);
            CartList.DataBind();
        }

        protected void add123bill_Click(object sender, EventArgs e)
        {
            int s = sellerlogin.SellUser;
            string que = "insert into purchasetable2 select book,quant,price,tot,sellid from BillTable2";
            Con.SetData(que);
            string Query = $"delete from BillTable2 where sellid={s}";
            CartList.DataSource = Con.GetData(Query);
            CartList.DataBind();
            showcart();
            ErrorMsg5.Text = "Purchase done succcessfully";
        }
    }
}