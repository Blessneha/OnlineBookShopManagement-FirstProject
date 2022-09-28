using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBooKShopProject.Views.Admin
{
    public partial class Authors : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con=new Models.Functions();
            showAuthors();
        }
        private void showAuthors()
        {
            string Query = "Select*from AuthTbl";
            AuthorList.DataSource=Con.GetData(Query);
            AuthorList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            { 
              
             if(ANameTb.Value=="" || GenCb.SelectedIndex==-1 || CountryCb.SelectedIndex==-1)
             {
                    ErrMsg.Text = "Oops! there is a missing data";

             }
            
                else
                {
                    string AName = ANameTb.Value;
                    string Gender=GenCb.SelectedItem.ToString();
                    string Country = CountryCb.SelectedItem.ToString();


                    string Query = $"Insert into  AuthTbl  values('{AName}','{Gender}','{Country}')";
                    Con.SetData(Query);
                    showAuthors();
                    ErrMsg.Text = "Author details Inserted";
                }

            }
            catch(Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }


        }
        int key = 0;
        protected void AuthorList_SelectedIndexChanged(object sender, EventArgs e)
        {
            ANameTb.Value = AuthorList.SelectedRow.Cells[2].Text;
            GenCb.SelectedItem.Value = AuthorList.SelectedRow.Cells[3].Text;
            CountryCb.SelectedItem.Value = AuthorList.SelectedRow.Cells[4].Text;
            if(ANameTb.Value=="")
            {
                key = 0;
            }
            else
            {
                key=Convert.ToInt32(AuthorList.SelectedRow.Cells[1].Text);
            }
        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {

            try
            {

                if (ANameTb.Value == "" || GenCb.SelectedIndex == -1 || CountryCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Oops! there is a missing data";

                }

                else
                {
                    string AName = ANameTb.Value;
                    string Gender = GenCb.SelectedItem.ToString();
                    string Country = CountryCb.SelectedItem.ToString();


                    string Query = $"Update AuthTbl set AutName='{AName}',AutGender='{Gender}',AutCountry='{Country}' where AId={AuthorList.SelectedRow.Cells[1].Text}";
                    Con.SetData(Query);
                    showAuthors();
                    ErrMsg.Text = "Author details Updated";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }


        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {

                if (ANameTb.Value == "" || GenCb.SelectedIndex == -1 || CountryCb.SelectedIndex == -1)
                {
                    ErrMsg.Text = "Select data to be deleted!";

                }

                else
                {
                    string AName = ANameTb.Value;
                    string Gender = GenCb.SelectedItem.ToString();
                    string Country = CountryCb.SelectedItem.ToString();


                    string Query = $"Delete from AuthTbl where AId={AuthorList.SelectedRow.Cells[1].Text}";
                    Con.SetData(Query);
                    showAuthors();
                    ErrMsg.Text = "Author details Deleted";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.Text = Ex.Message;
            }

        }
    }
}