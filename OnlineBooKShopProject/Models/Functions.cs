using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using OnlineBooKShopProject.Views.Admin;
using System.ComponentModel;
using System.Security.Cryptography;
using System.Xml.Linq;

namespace OnlineBooKShopProject.Models
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand cmd;
        private DataTable dt;
        private SqlDataAdapter sda;
        private string Constr;

        public Functions()
        {

            Constr = @"Data Source=LAPTOP-45DGQP0R\SQLEXPRESS;Initial Catalog=BookShop;Integrated Security=True";
            Con =new SqlConnection(Constr);
            cmd = Con.CreateCommand();
            cmd.Connection = Con;

        }

        public DataTable GetData(string Query)
        {
            dt=new DataTable();
            sda=new SqlDataAdapter(Query,Constr);
            sda.Fill(dt);
            return dt;

        }
        public int SetData(string Query)
        {
            int cnt = 0;
            if(Con.State==ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.CommandText = Query;
            cnt = cmd.ExecuteNonQuery();
            Con.Close();
            return cnt;
        }

    }
}