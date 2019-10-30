using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class main_page_Log_signup : System.Web.UI.Page
{
    String MSign = ConfigurationManager.AppSettings["Mano"];
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        lblMsg.Text = string.Empty;


        //SqlConnection con = new SqlConnection(MSign);
        //con.Open();
       
        //string sql = " select count(1) from SignUp where Email='"+TextBox1.Text+"' and Password='"+TextBox2.Text+"'";
        //SqlCommand cmd = new SqlCommand(sql, con);
        //int num = Convert.ToInt16(cmd.ExecuteScalar());
        //if (num == 1)
        //{

        //    Response.Redirect("../index.aspx");
      
        //}
        //else
        //{
        //    lblMsg.Text = "Invalid user name or password";
         
        //    //Response.Redirect("signin.aspx");

        //}

        //con.Close();





        SqlConnection con = new SqlConnection(MSign);
        con.Open();

        SqlCommand cmd = new SqlCommand("selectuser", con);
        cmd.Parameters.Add(new SqlParameter("@strEmail", SqlDbType.VarChar, 50));
        cmd.Parameters["@strEmail"].Value = TextBox1.Text;
        cmd.Parameters.Add(new SqlParameter("@strPassword", SqlDbType.VarChar, 50));
        cmd.Parameters["@strPassword"].Value = TextBox2.Text;
        cmd.CommandType = CommandType.StoredProcedure;
        int cnt = (int)cmd.ExecuteScalar();
        if (cnt == 1)
        {
            Session["user"] = "loggedin";
            Response.Redirect("../index.aspx");
        }
        else
        {
            lblMsg.Text = "Invalid user name or password";
        }

        con.Close();




    }
}