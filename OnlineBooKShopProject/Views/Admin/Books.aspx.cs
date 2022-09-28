using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBooKShopProject.Views.Admin
{
    
    public partial class Books : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if(!IsPostBack)
            {
                ShowBooks();
                GetCategories();
                GetAuthors();

            }
        }
        private void ShowBooks()
        {
            string Query = "select*from BookTbl";
            BookList.DataSource = Con.GetData(Query);
            BookList.DataBind();

        }
        private void GetCategories()
        {
            string Query = "select * from CategoryTbl";
            BCategoryName.DataTextField = Con.GetData(Query).Columns["CategoryName"].ToString();
            BCategoryName.DataValueField = Con.GetData(Query).Columns["CategoryId"].ToString();
            BCategoryName.DataSource = Con.GetData(Query);
            BCategoryName.DataBind();


        }
        private void GetAuthors()
        {
            string Query = "select * from AuthTbl";
            BAuthName.DataTextField = Con.GetData(Query).Columns["AutName"].ToString();
            BAuthName.DataValueField = Con.GetData(Query).Columns["AId"].ToString();
            BAuthName.DataSource = Con.GetData(Query);
            BAuthName.DataBind();


        }

        protected void SaBtn_Click(object sender, EventArgs e)
        {
            try
            {

                if (BnameTb.Value == "" || BAuthName.SelectedIndex==-1 || BCategoryName.SelectedIndex==-1 || BpriceTb.Value == ""|| BQuantityTb.Value=="")
                {
                    ErrMsg3.Text = "Oops! there is a missing data";

                }

                else
                {
                    string Book1Name = BnameTb.Value;
                    string BookAutName = BAuthName.SelectedValue.ToString();
                    string BcatName = BCategoryName.SelectedValue.ToString();
                    int BQty = Convert.ToInt32(BQuantityTb.Value);
                    int Bprice = Convert.ToInt32(BpriceTb.Value);
                    


                    string Query = $"Insert into  BookTbl  values('{Book1Name}','{BookAutName}','{BcatName}',{BQty},{Bprice})";
                    Con.SetData(Query);
                    ShowBooks();
                    ErrMsg3.Text = "Book Details Inserted";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg3.Text = Ex.Message;
            }

        }
        int key = 0;
        protected void BookList_SelectedIndexChanged(object sender, EventArgs e)
        {

            BnameTb.Value = BookList.SelectedRow.Cells[2].Text;
            BAuthName.SelectedItem.Value = BookList.SelectedRow.Cells[3].Text;
            BCategoryName.SelectedItem.Value = BookList.SelectedRow.Cells[4].Text;
            BQuantityTb.Value = BookList.SelectedRow.Cells[5].Text;
            BpriceTb.Value = BookList.SelectedRow.Cells[6].Text;
            
            if (BnameTb.Value == "")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(BookList.SelectedRow.Cells[1].Text);
            }

        }

        protected void UpBtn_Click(object sender, EventArgs e)
        {

            try
            {

                if (BnameTb.Value == "" || BAuthName.SelectedIndex == -1 || BCategoryName.SelectedIndex == -1 || BpriceTb.Value == "" || BQuantityTb.Value == "")
                {
                    ErrMsg3.Text = "Oops! there is a missing data";

                }

                else
                {
                    string Book1Name = BnameTb.Value;
                    string BookAutName = BAuthName.SelectedValue.ToString();
                    string BcatName = BCategoryName.SelectedValue.ToString();
                    int BQty = Convert.ToInt32(BQuantityTb.Value);
                    int Bprice = Convert.ToInt32(BpriceTb.Value);



                    string Query = $"update BookTbl set BName='{Book1Name}',BAuthor='{BookAutName}',BCategory='{BcatName}',BQty={BQty},BPrice={Bprice} where Bid={BookList.SelectedRow.Cells[1].Text}";
                    Con.SetData(Query);
                    ShowBooks();
                    ErrMsg3.Text = "Book Details updated";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg3.Text = Ex.Message;
            }

        }

        protected void Debtn_Click(object sender, EventArgs e)
        {
            try
            {

                if (BnameTb.Value == "" || BAuthName.SelectedIndex == -1 || BCategoryName.SelectedIndex == -1 || BpriceTb.Value == "" || BQuantityTb.Value == "")
                {
                    ErrMsg3.Text = "please select data!";

                }

                else
                {
                    string Query = $"delete from BookTbl where Bid={BookList.SelectedRow.Cells[1].Text}";
                    Con.SetData(Query);
                    ShowBooks();
                    ErrMsg3.Text = "Book Details deleted";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg3.Text = Ex.Message;
            }
        }
    }
}