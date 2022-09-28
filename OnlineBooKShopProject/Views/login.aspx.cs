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
    
    public partial class login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            
        }
        

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if(NameU.Value==""|| PasswordU.Value=="")
            {
                ErrMsg2.Text = "Missing value!";
            }
            else if(NameU.Value=="Admin@gmail.com" && PasswordU.Value=="Password")
            {
                Response.Redirect("Admin/Books.aspx");
            }
            else
            {

                ErrMsg2.Text = "Incorrect Credentials!";
            }
        }
    }

}