using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBooKShopProject.Views.Admin
{
    public partial class Seller : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            showSellers();
        }

        private void showSellers()
        {
            string Query = "Select*from SellTable";
            SellerList.DataSource = Con.GetData(Query);
            SellerList.DataBind();
        }

        protected void SaveBtn1_Click(object sender, EventArgs e)
        {

            try
            {

                if (SellNameTb.Value == "" || SellEmailTb.Value ==""|| SellPhoneTb.Value == ""|| SellPassTb.Value=="")
                {
                    ErrMsg2.Text = "Oops! there is a missing data";

                }

                else
                {
                    string SellerName = SellNameTb.Value;
                    string SellerEmail= SellEmailTb.Value;
                    string SellPhone= SellPhoneTb.Value;
                    string SellPass= SellPassTb.Value;


                    string Query = $"Insert into  SellTable  values('{SellerName}','{SellerEmail}','{SellPhone}','{SellPass}')";
                    Con.SetData(Query);
                    showSellers();
                    ErrMsg2.Text = "Seller details Inserted";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg2.Text = Ex.Message;
            }

        }
        int key=0;
        protected void SellerList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SellNameTb.Value = SellerList.SelectedRow.Cells[2].Text;
            SellEmailTb.Value = SellerList.SelectedRow.Cells[3].Text;
            SellPhoneTb.Value = SellerList.SelectedRow.Cells[4].Text;
            SellPassTb.Value = SellerList.SelectedRow.Cells[5].Text;

            if (SellNameTb.Value == "" || SellEmailTb.Value==""|| SellPhoneTb.Value==""|| SellPassTb.Value=="")
            {
                key = 0;
            }
            else
            {
                key = Convert.ToInt32(SellerList.SelectedRow.Cells[1].Text);
            }

        }

        protected void UPdate1Btn_Click(object sender, EventArgs e)
        {
            try
            {

                if (SellNameTb.Value == "" || SellEmailTb.Value == "" || SellPhoneTb.Value == "" || SellPassTb.Value == "")
                {
                    ErrMsg2.Text = "Oops! there is a missing data";

                }

                else
                {
                    string SellerName = SellNameTb.Value;
                    string SellerEmail = SellEmailTb.Value;
                    string SellPhone = SellPhoneTb.Value;
                    string SellPass = SellPassTb.Value;


                    string Query = $"update SellTable set SellName='{SellerName}',SellEmail='{SellerEmail}',SellPhone='{SellPhone}',SellPass='{SellPass}' where SellId={SellerList.SelectedRow.Cells[1].Text}";
                    Con.SetData(Query);
                    showSellers();
                    ErrMsg2.Text = "Seller details Updated";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg2.Text = Ex.Message;
            }

        }

        protected void DeleteBtn1_Click(object sender, EventArgs e)
        {
            try
            {

                if (SellNameTb.Value == "" || SellEmailTb.Value == "" || SellPhoneTb.Value == "" || SellPassTb.Value == "")
                {
                    ErrMsg2.Text = "Select a data";

                }

                else
                {
                  


                    string Query = $"delete from SellTable where SellId={SellerList.SelectedRow.Cells[1].Text}";
                    Con.SetData(Query);
                    showSellers();
                    ErrMsg2.Text = "Seller details Deleted";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg2.Text = Ex.Message;
            }
        }
    }
}