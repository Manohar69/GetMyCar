using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class main_page_Log_signin : System.Web.UI.Page
{
    String MSign = ConfigurationManager.AppSettings["Mano"];
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(MSign);
        //con.Open();

        //string one = "select count(1) from SignUp where Email = '" + TextBox3.Text + "' and Password = '" + TextBox4.Text + "'";

        //SqlCommand cmd1 = new SqlCommand(one, con);
        //int exp = Convert.ToInt16(cmd1.ExecuteScalar());

        //if (exp == 0)
        //{
        //    string sql = "insert into SignUp values('" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "')";


        //    SqlCommand cmd = new SqlCommand(sql, con);
        //    int num = cmd.ExecuteNonQuery();
        //    if (num > 0)
        //    {

        //        Response.Redirect("signin.aspx");


        //    }
        //    else
        //    {
        //        Response.Write("Retry to SignUp");
        //    }
        //}
        //else
        //{

        //    Response.Redirect("signup.aspx");
        //}
        //con.Close();




      SqlConnection con = new SqlConnection(MSign);
        con.Open();

        SqlCommand cmd = new SqlCommand("selectuser", con);
        cmd.Parameters.Add(new SqlParameter("@strEmail", SqlDbType.VarChar, 50));
        cmd.Parameters["@strEmail"].Value = TextBox3.Text;
        cmd.Parameters.Add(new SqlParameter("@strPassword", SqlDbType.VarChar, 50));
        cmd.Parameters["@strPassword"].Value = TextBox4.Text;
        cmd.CommandType = CommandType.StoredProcedure;
        int cnt = (int)cmd.ExecuteScalar();
        if (cnt == 0)
        {
            SqlCommand cmd1 = new SqlCommand("insrt", con);
            cmd1.Parameters.AddWithValue("@SFName",TextBox1.Text);
            cmd1.Parameters.AddWithValue("@SLName", TextBox2.Text);
            cmd1.Parameters.AddWithValue("@SEmail", TextBox3.Text);
            cmd1.Parameters.AddWithValue("@SPassword", TextBox4.Text);

            cmd1.CommandType = CommandType.StoredProcedure;
            int num = cmd1.ExecuteNonQuery();
            //int num=cmd

            if (num > 0)
            {
                //lb2Msg.Text = "hi";
                //Response.Write("register success");
                Response.Redirect("signin.aspx");
            }
            else
            {
                Response.Write("Retry to SignUp");
            }
        }
        else
        {
            lb2Msg.Text = "Invalid user name or password";
            //Response.Redirect("signup.aspx");
        }
        con.Close();


     


    }
}