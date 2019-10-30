using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class main_page_testDrive : System.Web.UI.Page
{
    String MSign = ConfigurationManager.AppSettings["Mano"];
    private String strConnection = ConfigurationManager.ConnectionStrings["DemoConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDropdown();
        }
    }
    protected void BindDropdown()
    {

        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from state", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlState.DataSource = ds;
        ddlState.DataTextField = "statename";
        ddlState.DataValueField = "stateid";
        ddlState.DataBind();
        ddlState.Items.Insert(0, new ListItem("--Select--", "0"));
        ddlCity.Items.Insert(0, new ListItem("--Select--", "0"));
        ddlLocation.Items.Insert(0, new ListItem("--Select--", "0"));

    }
    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        int stateid = Convert.ToInt32(ddlState.SelectedValue);
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from city where stateid=" + stateid, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlCity.DataSource = ds;
        ddlCity.DataTextField = "cityname";      
        ddlCity.DataValueField = "c_id";
        ddlCity.DataBind();
        ddlCity.Items.Insert(0, new ListItem("--Select--", "0"));
        if (ddlCity.SelectedValue == "0")
        {
            ddlLocation.Items.Clear();
            ddlLocation.Items.Insert(0, new ListItem("--Select--", "0"));
        }
    }
    protected void ddlCity_SelectedIndexChanged(object sender, EventArgs e)
    {
        int c_id = Convert.ToInt32(ddlCity.SelectedValue);
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from locatin where c_id=" + c_id +" and stateid ="+ddlState.SelectedValue, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlLocation.DataSource = ds;
        ddlLocation.DataTextField = "locname";
        ddlLocation.DataValueField = "c_id";
        ddlLocation.DataValueField = "loc_id";
        ddlLocation.DataBind();
        ddlLocation.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(MSign);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("test_insert", con);
        cmd1.Parameters.AddWithValue("@state", ddlState.Text);
        cmd1.Parameters.AddWithValue("@city", ddlCity.Text);
        cmd1.Parameters.AddWithValue("@location", ddlLocation.Text);
        cmd1.Parameters.AddWithValue("@phone", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@Email", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@date", txt1.Text);
        cmd1.Parameters.AddWithValue("@time", txt2.Text);


        cmd1.CommandType = CommandType.StoredProcedure;
      //  try
      //  {
            int num = cmd1.ExecuteNonQuery();
      //  }
        //catch (SqlException z)
      //  {
            Label1.Text = "Please enter valid Mobile Number";

            //int num=cmd

            if (num > 0)
            {
                //lb2Msg.Text = "hi";
                //Response.Write("register success");

                Label1.Text = "Sucess";
            
                //  Response.Redirect("testDrive.aspx");

            }
            else
            {
                // Response.Write("Retry to Contact us");
                Label1.Text = "Failed due to some technical problem";
            }
            con.Close();
       // }
    }
}
