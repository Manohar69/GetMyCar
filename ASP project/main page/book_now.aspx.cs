using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class main_page_book_now : System.Web.UI.Page
{
    String MSign = ConfigurationManager.AppSettings["Mano"];
    private String strConnection = ConfigurationManager.ConnectionStrings["DemoConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DropDown();
        }
    }
     protected void DropDown()
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
        SqlCommand cmd = new SqlCommand("select * from city where c_id=" + stateid, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlCity.DataSource = ds;
        ddlCity.DataTextField = "cityname";
        ddlCity.DataValueField = "cityid";
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
        SqlCommand cmd = new SqlCommand("select * from locatin where c_id=" + c_id + " and stateid =" + ddlState.SelectedValue, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddlLocation.DataSource = ds;
        ddlLocation.DataTextField = "locname";
        ddlLocation.DataValueField = "locid";
        ddlLocation.DataValueField = "loc_id";
        ddlLocation.DataBind();
        ddlLocation.Items.Insert(0, new ListItem("--Select--", "0"));
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(MSign);
        con.Open();
        SqlCommand cmd1 = new SqlCommand("book1_insert", con);
        cmd1.Parameters.AddWithValue("@state", ddlState.Text);
        cmd1.Parameters.AddWithValue("@city", ddlCity.Text);
        cmd1.Parameters.AddWithValue("@location", ddlLocation.Text);
        cmd1.Parameters.AddWithValue("@phone", TextBox1.Text);
        cmd1.Parameters.AddWithValue("@Email", TextBox2.Text);
        cmd1.Parameters.AddWithValue("@date", dt1.Text);
        cmd1.Parameters.AddWithValue("@time", Tim1.Text);


        cmd1.CommandType = CommandType.StoredProcedure;
        int num = cmd1.ExecuteNonQuery();
        //int num=cmd

        if (num > 0)
        {
            //lb2Msg.Text = "hi";
            //Response.Write("register success");
            Label1.Text = "Success";
          // MessageBox.Show("hvjh");
           // ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('"Success"')", true);
            Response.Redirect("book_now.aspx");
        }
        else
        {
            // Response.Write("Retry to Contact us");
            Label1.Text = "Operation Failed";
            Response.Redirect("contact.aspx");
        }

        con.Close();

    }
}


