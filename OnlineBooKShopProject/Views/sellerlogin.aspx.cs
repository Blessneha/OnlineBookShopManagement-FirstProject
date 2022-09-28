using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineBooKShopProject.Views
{
    public partial class sellerlogin : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            
    }
        public static int SellUser;

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (NameU1.Value == "" || PasswordU1.Value == "")
            {
                ErrMsg2.Text = "Missing value!";
            }
            else
            {
                string Query = $"Select * from SellTable where SellEmail='{NameU1.Value}' and SellPass='{PasswordU1.Value}'";
                DataTable dt = Con.GetData(Query);

                if (dt.Rows.Count == 0)
                {
                    ErrMsg2.Text = "Incorrect Credentials";
                }
                else
                {
                    
                    SellUser = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Response.Redirect("Seller/sell1.aspx");



                }

            }
        }
    }
}