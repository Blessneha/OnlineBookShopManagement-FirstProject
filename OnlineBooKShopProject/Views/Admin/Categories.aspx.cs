using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBooKShopProject.Views.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            showCategories();
        }
        private void showCategories()
        {
            string Query = "Select*from CategoryTbl";
            CategoriesList.DataSource = Con.GetData(Query);
            CategoriesList.DataBind();
        }

        protected void savebtn_Click(object sender, EventArgs e)
        {
            try
            {

                if (CatTB.Value == "" || CatDetailTB.Value=="")
                {
                    ErrorMsg1.Text = "Oops! there is a missing data";

                }

                else
                {
                    string CatName = CatTB.Value;
                    string CatDetail = CatDetailTB.Value;


                    string Query = $"Insert into CategoryTbl values('{CatName}','{CatDetail}')";
                    Con.SetData(Query);
                    showCategories();
                    ErrorMsg1.Text = "Category details Inserted";
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg1.Text = Ex.Message;
            }

        }
        int key=0;
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CatTB.Value = CategoriesList.SelectedRow.Cells[2].Text;
            CatDetailTB.Value= CategoriesList.SelectedRow.Cells[3].Text;


            if (CatTB.Value == "" || CatDetailTB.Value=="")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(CategoriesList.SelectedRow.Cells[1].Text);
            }

        }

        protected void updatebtn_Click(object sender, EventArgs e)
        {

            try
            {

                if (CatTB.Value == "" || CatDetailTB.Value == "")
                {
                    ErrorMsg1.Text = "Oops! there is a missing data";

                }

                else
                {
                    string CatName = CatTB.Value;
                    string CatDetail = CatDetailTB.Value;


                    string Query = $"Update CategoryTbl set CategoryName='{CatName}', Categorydetail='{CatDetail}' where CategoryId={CategoriesList.SelectedRow.Cells[1].Text}";
                    Con.SetData(Query);
                    showCategories();
                    ErrorMsg1.Text = "Category details Updated";
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg1.Text = Ex.Message;
            }

        }

        protected void deletebtn_Click(object sender, EventArgs e)
        {

            try
            {

                if (CatTB.Value == "" || CatDetailTB.Value == "")
                {
                    ErrorMsg1.Text = "please select data";

                }

                else
                {
                    string CatName = CatTB.Value;
                    string CatDetail = CatDetailTB.Value;


                    string Query = $"delete from CategoryTbl where CategoryId={CategoriesList.SelectedRow.Cells[1].Text}";
                    Con.SetData(Query);
                    showCategories();
                    ErrorMsg1.Text = "Category details deleted";
                }

            }
            catch (Exception Ex)
            {
                ErrorMsg1.Text = Ex.Message;
            }

        }
    }
}